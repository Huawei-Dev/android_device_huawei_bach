/*
 * Copyright (C) 2017 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <string>

#include <utils/Errors.h>

#include "gui/DisplayEventReceiver.h"
#include <gui/IDisplayEventConnection.h>
#include <gui/ISurfaceComposer.h>

#include <private/gui/ComposerService.h>

#include <private/gui/BitTube.h>

namespace android {

DisplayEventReceiver::DisplayEventReceiver() {
    status_t err;
    sp<ISurfaceComposer> sf(ComposerService::getComposerService());
    if (sf != NULL) {
        mEventConnection = sf->createDisplayEventConnection(ISurfaceComposer::eVsyncSourceApp);
        if (mEventConnection != NULL) {
            mDataChannel = std::make_unique<gui::BitTube>();
            err = mEventConnection->stealReceiveChannel(mDataChannel.get());
        }
    }
}

}; // namespace android
