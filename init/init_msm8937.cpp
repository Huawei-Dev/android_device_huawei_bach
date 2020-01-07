#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include <android-base/file.h>
#include <android-base/properties.h>
#include <android-base/logging.h>
#include <android-base/strings.h>

#include <cstdlib>
#include <stdlib.h>
#include <stdio.h>
#include <fstream>
#include <iostream>
#include <string>
#include <sstream>
#include <sys/sysinfo.h>

#include "vendor_init.h"
#include "property_service.h"

using android::base::GetProperty;
using android::init::property_set;
using namespace std;

const char *APP_INFO = "/proc/app_info";

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void property_override_dual(char const system_prop[], char const vendor_prop[], char const value[])
{
    property_override(system_prop, value);
    property_override(vendor_prop, value);
}

void property_override_3x(char const product_prop[], char const system_prop[], char const vendor_prop[], char const value[])
{
    property_override(product_prop, value);
    property_override(system_prop, value);
    property_override(vendor_prop, value);
}

static void set_model(const char *model) {
    property_override("ro.hw.oemName", model);
    property_override("ro.build.product", model);
    property_override_3x("ro.product.model", "ro.product.system.model", "ro.product.vendor.model", model);
}

void vendor_load_properties()
{
    ifstream fin;
    string buf;

    fin.open(APP_INFO, ios::in);
    if (!fin) {
        LOG(ERROR) << __func__ << ": Failed to open " << APP_INFO;
        return;
    }

    while (getline(fin, buf))
        if (buf.find("huawei_fac_product_name") != string::npos)
		break;

    fin.close();

    if ((buf.find("BAH-W09") != string::npos) || (buf.find("CPN-W09") != string::npos)) {
        android::init::property_set("persist.radio.noril", "1");
    }

    if ((buf.find("BAH-AL00") != string::npos) || (buf.find("BAH-L01") != string::npos) || (buf.find("BAH-L09") != string::npos) || (buf.find("CPN-AL00") != string::npos) || (buf.find("CPN-L0J") != string::npos) || (buf.find("CPN-L09") != string::npos)) {
	property_override_dual("persist.multisim.config", "persist.radio.multisim.config", "ssss");
	property_override("ro.telephony.default_network", "9");
	property_override("ro.telephony.lteOnCdmaDevice", "1");
	android::init::property_set("rild.libargs", "-d /dev/smd0");
	android::init::property_set("persist.vendor.data.mode", "concurrent");
	android::init::property_set("persist.data.netmgrd.qos.enable", "true");
	android::init::property_set("ro.vendor.use_data_netmgrd", "true");
    }

    if ((buf.find("BAH-AL00") != string::npos) || (buf.find("BAH-L01") != string::npos) || (buf.find("BAH-L09") != string::npos) || (buf.find("BAH-W09") != string::npos)) {
	property_override("ro.build.description", "BAH-L09-user 7.0 HUAWEIBAH-L09 C100B018 release-keys");
	property_override_dual("ro.system.build.fingerprint", "ro.vendor.build.fingerprint", "HUAWEI/BAH/HWBAH-Q:7.0/HUAWEIBAH-L09/C100B018:user/release-keys");
	property_override_3x("ro.product.name", "ro.product.system.name", "ro.product.vendor.name", "BAH");
	property_override_3x("ro.product.device", "ro.product.system.device", "ro.product.vendor.device", "HWBAH-Q");
    }

    if ((buf.find("CPN-AL00") != string::npos) || (buf.find("CPN-L0J") != string::npos) || (buf.find("CPN-L09") != string::npos) || (buf.find("CPN-W09") != string::npos)) {
	property_override("ro.build.description", "CPN-L09-user 7.0 HUAWEICPN-L09 C904B280 release-keys");
	property_override_dual("ro.system.build.fingerprint", "ro.vendor.build.fingerprint", "HUAWEI/CPN/HWCPN-Q:7.0/HUAWEICPN-L09/C904B280:user/release-keys");
	property_override_3x("ro.product.name", "ro.product.system.name", "ro.product.vendor.name", "CPN");
	property_override_3x("ro.product.device", "ro.product.system.device", "ro.product.vendor.device", "HWCPN-Q");
    }

    property_override_3x("ro.product.manufacturer", "ro.product.system.manufacturer", "ro.product.vendor.manufacturer", "HUAWEI");
    property_override_3x("ro.product.brand", "ro.product.system.brand", "ro.product.vendor.brand", "Huawei");
    property_override_dual("ro.build.tags", "ro.vendor.build.tags", "release-keys");
    property_override("ro.hw.custPath", "/cust/hw/eu");

    /* BAH-AL00 */
    if (buf.find("BAH-AL00") != string::npos) {
        set_model("BAH-AL00");
    }
    /* BAH-L01 */
    else if (buf.find("BAH-L01") != string::npos) {
        set_model("BAH-L01");
    }
    /* BAH-L09 */
    else if (buf.find("BAH-L09") != string::npos) {
        set_model("BAH-L09");
    }
    /* BAH-W09 */
    else if (buf.find("BAH-W09") != string::npos) {
        set_model("BAH-W09");
    }
    /* CPN-AL00 */
    else if (buf.find("CPN-AL00") != string::npos) {
        set_model("CPN-AL00");
    }
    /* CPN-L0J */
    else if (buf.find("CPN-L0J") != string::npos) {
        set_model("CPN-L0J");
    }
    /* CPN-L09 */
    else if (buf.find("CPN-L09") != string::npos) {
        set_model("CPN-L09");
    }
    /* CPN-W09 */
    else if (buf.find("CPN-W09") != string::npos) {
        set_model("CPN-W09");
    }
    else {
        LOG(ERROR) << __func__ << ": unexcepted huawei_fac_product_name!";
    }
}
