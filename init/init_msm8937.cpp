#include <cstdlib>
#include <fstream>
#include <string>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_msm8937.h"

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void init_target_properties()
{
    std::ifstream fin;
    std::string buf;

    fin.open("/proc/app_info");
    while (getline(fin, buf))
        if (buf.find("huawei_fac_product_name") != std::string::npos)
            break;
    fin.close();

    /* BAH-AL00 */
    if (buf.find("BAH-AL00") != std::string::npos) {
        property_override("ro.product.model", "BAH-L09");
        property_override("ro.product.device", "BAH-L09");
        property_override("ro.build.product", "BAH-L09");
        property_override("ro.build.description", "BAH-L09-user 7.0 HUAWEIBAH-L09 C100B018 release-keys");
        property_override("ro.build.fingerprint", "HUAWEI/BAH/HWBAH-Q:7.0/HUAWEIBAH-L09/C100B018:user/release-keys");
    }
    /* BAH-L01 */
    else if (buf.find("BAH-L01") != std::string::npos) {
        property_override("ro.product.model", "BAH-L01");
        property_override("ro.product.device", "BAH-L01");
        property_override("ro.build.product", "BAH-L01");
    }
    /* BAH-L09 */
    else if (buf.find("BAH-L09") != std::string::npos) {
        property_override("ro.product.model", "BAH-L09");
        property_override("ro.product.device", "BAH-L09");
        property_override("ro.build.product", "BAH-L09");
        property_override("ro.build.description", "BAH-L09-user 7.0 HUAWEIBAH-L09 C100B018 release-keys");
        property_override("ro.build.fingerprint", "HUAWEI/BAH/HWBAH-Q:7.0/HUAWEIBAH-L09/C100B018:user/release-keys");
    }
    /* BAH-W09 */
    else if (buf.find("BAH-W09") != std::string::npos) {
        property_override("ro.product.model", "BAH-W09");
        property_override("ro.product.device", "BAH-W09");
        property_override("ro.build.product", "BAH-W09");
    }
}
