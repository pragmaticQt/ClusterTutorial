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
import QtQuick.Studio.Components 1.0

Item {
    id: rpm_dial_195_83
    width: 450
    height: 550
    property alias displayRpm: rpm_num_readout_195_49.text
    property alias rpmFrame: rpmTimeline.currentFrame

    Item {
        id: item2
        x: 23
        y: 25
        width: 419
        height: 525

        Image {
            id: rpm_dial_195_83Asset
            x: 134
            y: 110
            source: "assets/rpm_dial_195_83.png"
        }

        Item {
            id: rpm_dots_195_200
            x: 35
            y: 40
            Image {
                id: _rpm_dot_195_62
                x: 113
                y: -6
                source: "assets/_rpm_dot_195_62.png"
            }

            Image {
                id: _rpm_dot_195_53
                x: 66
                y: 29
                source: "assets/_rpm_dot_195_53.png"
            }

            Image {
                id: _rpm_dot_195_58
                x: 29
                y: 79
                source: "assets/_rpm_dot_195_58.png"
            }

            Image {
                id: _rpm_dot_195_59
                x: 4
                y: 132
                height: 7
                source: "assets/_rpm_dot_195_59.png"
            }

            Image {
                id: _rpm_dot_195_51
                x: -4
                y: 192
                source: "assets/_rpm_dot_195_51.png"
            }

            Image {
                id: _rpm_dot_195_60
                x: 3
                y: 251
                source: "assets/_rpm_dot_195_60.png"
            }

            Image {
                id: _rpm_dot_195_61
                x: 29
                y: 304
                source: "assets/_rpm_dot_195_61.png"
            }

            Image {
                id: _rpm_dot_195_52
                x: 67
                y: 351
                source: "assets/_rpm_dot_195_52.png"
            }

            Image {
                id: _rpm_dot_195_54
                x: 114
                y: 385
                source: "assets/_rpm_dot_195_54.png"
            }

            Image {
                id: _rpm_dot_195_55
                x: 170
                y: 405
                width: 7
                source: "assets/_rpm_dot_195_55.png"
            }

            Image {
                id: _rpm_dot_195_202
                x: 231
                y: 411
                source: "assets/_rpm_dot_195_202.png"
            }

            Image {
                id: _rpm_dot_195_56
                x: 289
                y: 400
                source: "assets/_rpm_dot_195_56.png"
            }
        }

        Item {
            id: rpm_readout_195_198
            x: 184
            y: 173
            Text {
                id: _rpm_display_195_67
                x: 60
                y: 127
                color: "#FFFFFF"
                text: "1000"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: x_195_189
                x: 28
                y: 125
                color: "#FFFFFF"
                text: "X"
                font.weight: Font.ExtraLight
                font.pixelSize: 29
                font.family: "IBM Plex Mono"
            }

            Text {
                id: rpm_readout_195_66
                x: 49
                y: 83
                color: "#FFFFFF"
                text: "RPM"
                font.weight: Font.ExtraLight
                font.pixelSize: 29
                font.family: "IBM Plex Mono"
            }

            Text {
                id: rpm_num_readout_195_49
                x: -33
                y: -21
                width: 210
                height: 82
                color: "#FFFFFF"
                text: "8999"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 62
                font.family: "Cherry"
            }
        }

        Item {
            id: rpm_numbers_195_82
            x: 0
            y: 0
            Text {
                id: _rpm_195_70
                x: 332
                y: 469
                color: "#FFFFFF"
                text: "0"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_71
                x: 263
                y: 480
                color: "#FFFFFF"
                text: "1"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_72
                x: 186
                y: 474
                color: "#FFFFFF"
                text: "2"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_73
                x: 120
                y: 457
                color: "#FFFFFF"
                text: "3"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_74
                x: 64
                y: 411
                color: "#FFFFFF"
                text: "4"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_75
                x: 22
                y: 351
                color: "#FFFFFF"
                text: "5"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_76
                x: -7
                y: 284
                color: "#FFFFFF"
                text: "6"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_77
                x: -14
                y: 218
                color: "#FFFFFF"
                text: "7"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_78
                x: -10
                y: 153
                color: "#FFFFFF"
                text: "8"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_79
                x: 23
                y: 82
                color: "#FFFFFF"
                text: "9"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_80
                x: 58
                y: 22
                color: "#FFFFFF"
                text: "10"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }

            Text {
                id: _rpm_195_81
                x: 120
                y: -19
                color: "#FFFFFF"
                text: "11"
                font.weight: Font.Thin
                font.pixelSize: 29
                font.family: "Exo 2"
            }
        }

        Image {
            id: arc_track_background_195_64
            x: 48
            y: 47
            source: "assets/arc_track_background_195_64.png"
        }

        ArcItem {
            id: arc
            x: 54
            y: 25
            width: 412
            height: 412
            strokeColor: "#3eee6b"
            end: 60.4
            begin: -108
            strokeWidth: 40
        }

        Item {
            id: item1
            x: 158
            y: 134
            width: 200
            height: 200

            Image {
                id: rpm_needle_195_65
                x: -91
                y: 6
                source: "assets/rpm_needle_195_65.png"
            }
        }

        Image {
            id: outside_white_arc_195_46
            x: 20
            y: 25
            width: 317
            height: 441
            source: "assets/outside_white_arc_195_46.png"
        }

        PieItem {
            id: pie
            x: 125
            y: 102
            width: 264
            height: 264
            strokeWidth: 4.5
            end: 360
        }
    }

    Timeline {
        id: rpmTimeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                property: "currentFrame"
                running: false
                from: 0
                duration: 1000
                loops: 1
                to: 1000
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 1100

        KeyframeGroup {
            target: item1
            property: "rotation"

            Keyframe {
                value: -135
                frame: 0
            }

            Keyframe {
                value: 35.7
                frame: 1099
            }
        }

        KeyframeGroup {
            target: arc
            property: "end"

            Keyframe {
                value: -108
                frame: 0
            }

            Keyframe {
                value: 60.8
                frame: 1099
            }

            Keyframe {
                value: -92.9
                frame: 100
            }

            Keyframe {
                value: -77.68
                frame: 200
            }

            Keyframe {
                value: -62.45
                frame: 300
            }

            Keyframe {
                value: -47.31
                frame: 400
            }

            Keyframe {
                value: -32.14
                frame: 500
            }

            Keyframe {
                value: -16.94
                frame: 600
            }

            Keyframe {
                value: -1.6
                frame: 700
            }

            Keyframe {
                value: 13.66
                frame: 800
            }

            Keyframe {
                value: 29.09
                frame: 900
            }
        }

        KeyframeGroup {
            target: arc
            property: "strokeColor"
            Keyframe {
                value: "#3eee6b"
                frame: 499
            }

            Keyframe {
                value: "#df8c49"
                frame: 500
            }

            Keyframe {
                value: "#df8c49"
                frame: 799
            }

            Keyframe {
                value: "#e24141"
                frame: 800
            }

            Keyframe {
                value: "#e24141"
                frame: 1100
            }
        }

        KeyframeGroup {
            target: pie
            property: "strokeColor"

            Keyframe {
                value: "#3eee6b"
                frame: 0
            }

            Keyframe {
                value: "#3eee6b"
                frame: 499
            }

            Keyframe {
                value: "#df8c49"
                frame: 500
            }

            Keyframe {
                value: "#df8c49"
                frame: 799
            }

            Keyframe {
                value: "#e24141"
                frame: 800
            }

            Keyframe {
                value: "#e24141"
                frame: 1099
            }
        }

        KeyframeGroup {
            target: _rpm_195_70
            property: "scale"

            Keyframe {
                value: 1.2
                frame: 0
            }

            Keyframe {
                value: 1.2
                frame: 10
            }

            Keyframe {
                value: 1
                frame: 20
            }
        }

        KeyframeGroup {
            target: _rpm_195_70
            property: "color"

            Keyframe {
                value: "#3eee6b"
                frame: 0
            }

            Keyframe {
                value: "#3eee6b"
                frame: 10
            }

            Keyframe {
                value: "#ffffff"
                frame: 20
            }
        }

        KeyframeGroup {
            target: _rpm_195_71
            property: "color"

            Keyframe {
                value: "#3eee6b"
                frame: 95
            }

            Keyframe {
                value: "#3eee6b"
                frame: 105
            }

            Keyframe {
                value: "#ffffff"
                frame: 115
            }

            Keyframe {
                value: "#ffffff"
                frame: 85
            }
        }

        KeyframeGroup {
            target: _rpm_195_71
            property: "scale"
            Keyframe {
                value: 1
                frame: 85
            }

            Keyframe {
                value: 1.2
                frame: 95
            }

            Keyframe {
                value: 1.2
                frame: 105
            }

            Keyframe {
                value: 1
                frame: 115
            }
        }

        KeyframeGroup {
            target: _rpm_195_72
            property: "color"
            Keyframe {
                value: "#3eee6b"
                frame: 196
            }

            Keyframe {
                value: "#3eee6b"
                frame: 206
            }

            Keyframe {
                value: "#ffffff"
                frame: 216
            }

            Keyframe {
                value: "#ffffff"
                frame: 186
            }
        }

        KeyframeGroup {
            target: _rpm_195_72
            property: "scale"
            Keyframe {
                value: 1
                frame: 186
            }

            Keyframe {
                value: 1.2
                frame: 196
            }

            Keyframe {
                value: 1.2
                frame: 206
            }

            Keyframe {
                value: 1
                frame: 216
            }
        }

        KeyframeGroup {
            target: _rpm_195_73
            property: "color"
            Keyframe {
                value: "#3eee6b"
                frame: 295
            }

            Keyframe {
                value: "#3eee6b"
                frame: 305
            }

            Keyframe {
                value: "#ffffff"
                frame: 315
            }

            Keyframe {
                value: "#ffffff"
                frame: 285
            }
        }

        KeyframeGroup {
            target: _rpm_195_73
            property: "scale"
            Keyframe {
                value: 1
                frame: 285
            }

            Keyframe {
                value: 1.2
                frame: 295
            }

            Keyframe {
                value: 1.2
                frame: 305
            }

            Keyframe {
                value: 1
                frame: 315
            }
        }

        KeyframeGroup {
            target: _rpm_195_74
            property: "color"
            Keyframe {
                value: "#3eee6b"
                frame: 395
            }

            Keyframe {
                value: "#3eee6b"
                frame: 405
            }

            Keyframe {
                value: "#ffffff"
                frame: 415
            }

            Keyframe {
                value: "#ffffff"
                frame: 385
            }
        }

        KeyframeGroup {
            target: _rpm_195_74
            property: "scale"
            Keyframe {
                value: 1
                frame: 385
            }

            Keyframe {
                value: 1.2
                frame: 395
            }

            Keyframe {
                value: 1.2
                frame: 405
            }

            Keyframe {
                value: 1
                frame: 415
            }
        }

        KeyframeGroup {
            target: _rpm_195_75
            property: "color"
            Keyframe {
                value: "#df8c49"
                frame: 495
            }

            Keyframe {
                value: "#df8c49"
                frame: 505
            }

            Keyframe {
                value: "#ffffff"
                frame: 515
            }

            Keyframe {
                value: "#ffffff"
                frame: 485
            }
        }

        KeyframeGroup {
            target: _rpm_195_75
            property: "scale"
            Keyframe {
                value: 1
                frame: 485
            }

            Keyframe {
                value: 1.2
                frame: 495
            }

            Keyframe {
                value: 1.2
                frame: 505
            }

            Keyframe {
                value: 1
                frame: 515
            }
        }

        KeyframeGroup {
            target: _rpm_195_76
            property: "color"
            Keyframe {
                value: "#df8c49"
                frame: 594
            }

            Keyframe {
                value: "#df8c49"
                frame: 604
            }

            Keyframe {
                value: "#ffffff"
                frame: 614
            }

            Keyframe {
                value: "#ffffff"
                frame: 584
            }
        }

        KeyframeGroup {
            target: _rpm_195_76
            property: "scale"
            Keyframe {
                value: 1
                frame: 584
            }

            Keyframe {
                value: 1.2
                frame: 594
            }

            Keyframe {
                value: 1.2
                frame: 604
            }

            Keyframe {
                value: 1
                frame: 614
            }
        }

        KeyframeGroup {
            target: _rpm_195_77
            property: "color"
            Keyframe {
                value: "#df8c49"
                frame: 700
            }

            Keyframe {
                value: "#df8c49"
                frame: 710
            }

            Keyframe {
                value: "#ffffff"
                frame: 720
            }

            Keyframe {
                value: "#ffffff"
                frame: 690
            }
        }

        KeyframeGroup {
            target: _rpm_195_77
            property: "scale"
            Keyframe {
                value: 1
                frame: 690
            }

            Keyframe {
                value: 1.2
                frame: 700
            }

            Keyframe {
                value: 1.2
                frame: 710
            }

            Keyframe {
                value: 1
                frame: 720
            }
        }

        KeyframeGroup {
            target: _rpm_195_78
            property: "color"
            Keyframe {
                value: "#e24141"
                frame: 795
            }

            Keyframe {
                value: "#e24141"
                frame: 805
            }

            Keyframe {
                value: "#ffffff"
                frame: 815
            }

            Keyframe {
                value: "#ffffff"
                frame: 785
            }
        }

        KeyframeGroup {
            target: _rpm_195_78
            property: "scale"
            Keyframe {
                value: 1
                frame: 785
            }

            Keyframe {
                value: 1.2
                frame: 795
            }

            Keyframe {
                value: 1.2
                frame: 805
            }

            Keyframe {
                value: 1
                frame: 815
            }
        }

        KeyframeGroup {
            target: _rpm_195_79
            property: "color"
            Keyframe {
                value: "#e24141"
                frame: 894
            }

            Keyframe {
                value: "#e24141"
                frame: 904
            }

            Keyframe {
                value: "#ffffff"
                frame: 914
            }

            Keyframe {
                value: "#ffffff"
                frame: 884
            }
        }

        KeyframeGroup {
            target: _rpm_195_79
            property: "scale"
            Keyframe {
                value: 1
                frame: 884
            }

            Keyframe {
                value: 1.2
                frame: 894
            }

            Keyframe {
                value: 1.2
                frame: 904
            }

            Keyframe {
                value: 1
                frame: 914
            }
        }

        KeyframeGroup {
            target: _rpm_195_80
            property: "color"
            Keyframe {
                value: "#e24141"
                frame: 995
            }

            Keyframe {
                value: "#e24141"
                frame: 1005
            }

            Keyframe {
                value: "#ffffff"
                frame: 1015
            }

            Keyframe {
                value: "#ffffff"
                frame: 985
            }
        }

        KeyframeGroup {
            target: _rpm_195_80
            property: "scale"
            Keyframe {
                value: 1
                frame: 985
            }

            Keyframe {
                value: 1.2
                frame: 995
            }

            Keyframe {
                value: 1.2
                frame: 1005
            }

            Keyframe {
                value: 1
                frame: 1015
            }
        }

        KeyframeGroup {
            target: _rpm_195_81
            property: "scale"

            Keyframe {
                value: 1.2
                frame: 1100
            }

            Keyframe {
                value: 1.198
                frame: 1090
            }

            Keyframe {
                value: 1
                frame: 1080
            }
        }

        KeyframeGroup {
            target: _rpm_195_81
            property: "color"
            Keyframe {
                value: "#ffffff"
                frame: 1080
            }

            Keyframe {
                value: "#e24141"
                frame: 1090
            }

            Keyframe {
                value: "#e24141"
                frame: 1100
            }
        }
    }
}

/*##^## Designer {
    D{i:0;width:390;height:500}D{i:1828;text__AT__NodeInstance:"0"}D{i:1848;currentFrame__AT__NodeInstance:0}
}
 ##^##*/
