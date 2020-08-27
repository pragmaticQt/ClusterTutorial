/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Design Studio.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.8
import QtQuick.Timeline 1.0
import Data 1.0 as Data
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0

Item {
    id: cluster_Art
    width: 1920
    height: 1080
    property alias fuel_dial_195_43: fuel_dial_195_43

    Image {
        id: cluster_ArtAsset
        x: 0
        y: 0
        source: "assets/Cluster_Art.png"
    }

    Backgrounds_195_610 {
        x: 0
        y: 0
    }

    DirectionalBlurItem {
        id: directionalBlur2
        x: 510
        y: 809
        width: 920
        height: 142

        Iso_195_156 {
            x: 0
            y: 37
            isoIcon5Active: false
            isoIcon4Active: false
            isoIcon3Active: false
            isoIcon1Active: false
            airConActive: false
            rpmEngineActive: Data.Values.engineTemp
            fuelWarningActive: Data.Values.fuelLevel
        }
    }

    Gearbox_195_196 {
        id: gearbox_195_196
        x: 928
        y: 571
        currentGear: Data.Values.currentGear
    }

    DirectionalBlurItem {
        id: directionalBlur1
        x: 1424
        y: 422
        width: 512
        height: 630
        directionalBlurBorder: false

        Fuel_dial_195_43 {
            id: fuel_dial_195_43
            x: 39
            y: 69
            rangeDisplay: Data.Values.displayRange
            litersDisplay: Data.Values.displayLiters
            fuelFrame: Data.Values.liters
        }
    }

    DirectionalBlurItem {
        id: directionalBlur
        x: 10
        y: 451
        width: 508
        height: 591
        directionalBlurBorder: false

        Rpm_dial_195_83 {
            x: 59
            y: 34
            displayRpm: Data.Values.displayRpm
            rpmFrame: Data.Values.rpm
        }
    }

    FlipableItem {
        id: flipable
        x: 566
        y: 8
        width: 778
        height: 730
        opacity: 1

        Speed_dial_195_151 {
            x: 95
            y: 91
            kplDisplay: Data.Values.displayKpl
            kphDisplay: Data.Values.displayKph
            kphFrame: Data.Values.kph
        }

        Image {
            id: image
            x: 181
            y: 240
            source: "carLogo.png"
        }
    }

    Timeline {
        id: bootTImeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                property: "currentFrame"
                duration: 5000
                running: false
                loops: 1
                to: 5000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 5000
        enabled: true

        KeyframeGroup {
            target: flipable
            property: "flipAngle"
            Keyframe {
                value: 180
                frame: 0
            }

            Keyframe {
                value: 180
                frame: 2389
            }

            Keyframe {
                easing.bezierCurve: [0.90, 0.03, 0.69, 0.22, 1, 1]
                value: 1.1
                frame: 4117
            }
        }

        KeyframeGroup {
            target: flipable
            property: "opacity"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.17, 0.84, 0.44, 1.00, 1, 1]
                value: 1
                frame: 1015
            }
        }

        KeyframeGroup {
            target: gearbox_195_196
            property: "opacity"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 3616
            }
        }

        KeyframeGroup {
            target: directionalBlur
            property: "opacity"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 2386
            }

            Keyframe {
                easing.bezierCurve: [0.95, 0.05, 0.80, 0.04, 1, 1]
                value: 1
                frame: 3299
            }
        }

        KeyframeGroup {
            target: directionalBlur
            property: "scale"
            Keyframe {
                value: 0.01
                frame: 5
            }

            Keyframe {
                value: 0.01
                frame: 2391
            }

            Keyframe {
                easing.bezierCurve: [0.95, 0.05, 0.80, 0.04, 1, 1]
                value: 1
                frame: 3294
            }
        }

        KeyframeGroup {
            target: directionalBlur
            property: "directionalBlurLength"

            Keyframe {
                value: 64
                frame: 5
            }

            Keyframe {
                value: 64
                frame: 2391
            }

            Keyframe {
                easing.bezierCurve: [0.95, 0.05, 0.80, 0.04, 1, 1]
                value: 0
                frame: 3690
            }
        }

        KeyframeGroup {
            target: directionalBlur1
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 2386
                value: 0
            }

            Keyframe {
                frame: 3299
                value: 1
                easing.bezierCurve: [0.95, 0.05, 0.80, 0.04, 1, 1]
            }
        }

        KeyframeGroup {
            target: directionalBlur1
            property: "scale"
            Keyframe {
                frame: 5
                value: 0.01
            }

            Keyframe {
                frame: 2391
                value: 0.01
            }

            Keyframe {
                frame: 3294
                value: 1
                easing.bezierCurve: [0.95, 0.05, 0.80, 0.04, 1, 1]
            }
        }

        KeyframeGroup {
            target: directionalBlur1
            property: "directionalBlurLength"
            Keyframe {
                frame: 5
                value: 64
            }

            Keyframe {
                frame: 2391
                value: 64
            }

            Keyframe {
                frame: 3690
                value: 0
                easing.bezierCurve: [0.95, 0.05, 0.80, 0.04, 1, 1]
            }
        }

        KeyframeGroup {
            target: directionalBlur2
            property: "scale"

            Keyframe {
                value: 0.01
                frame: 0
            }

            Keyframe {
                value: 0.01
                frame: 2977
            }

            Keyframe {
                easing.bezierCurve: [0.07, 0.82, 0.17, 1.00, 1, 1]
                value: 1
                frame: 3473
            }
        }

        KeyframeGroup {
            target: directionalBlur2
            property: "opacity"

            Keyframe {
                value: 0
                frame: 2977
            }

            Keyframe {
                easing.bezierCurve: [0.07, 0.82, 0.17, 1.00, 1, 1]
                value: 1
                frame: 3362
            }

            Keyframe {
                value: 0
                frame: 0
            }
        }

        KeyframeGroup {
            target: directionalBlur2
            property: "directionalBlurLength"

            Keyframe {
                value: 64
                frame: 0
            }

            Keyframe {
                value: 64
                frame: 2977
            }

            Keyframe {
                easing.bezierCurve: [0.07, 0.82, 0.17, 1.00, 1, 1]
                value: 0
                frame: 3473
            }
        }
    }

    states: [
        State {
            name: "bootState"
            when: Data.Values.booting

            PropertyChanges {
                target: bootTImeline
                enabled: true
            }

            PropertyChanges {
                target: timelineAnimation
                running: true
            }
        },
        State {
            name: "running"
            when: !Data.Values.booting

            PropertyChanges {
                target: gearbox_195_196
                opacity: 1
            }

            PropertyChanges {
            }

            PropertyChanges {
                target: bootTImeline
                currentFrame: 5000
                enabled: true
            }
        }
    ]
}





/*##^## Designer {
    D{i:8;timeline_expanded:true}D{i:13;timeline_expanded:true}D{i:16;currentFrame__AT__NodeInstance:4997}
}
 ##^##*/
