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

Item {
    id: gearbox
    width: 65
    height: 136
    property int currentGear: 1

    Text {
        id: current_gear
        x: -10
        y: 82
        width: 82
        height: 75
        color: "#FFFFFF"
        text: "5"
        horizontalAlignment: Text.AlignHCenter
        font.weight: Font.Thin
        lineHeight: 1
        font.pixelSize: 62
        font.family: "Exo 2"
    }

    Image {
        id: gear_5
        x: -8
        y: 0
        source: "assets/gearbox_visual_195_150.png"
    }

    Image {
        id: gear_4
        x: 0
        y: 0
        source: "assets/gearbox_visual_4_195_179.png"
    }

    Image {
        id: gear_3
        x: 0
        y: 9
        source: "assets/gearbox_visual_3_195_181.png"
    }

    Image {
        id: gear_2
        x: 0
        y: 0
        source: "assets/gearbox_visual_2_195_185.png"
    }

    Image {
        id: gear_1
        x: 0
        y: 9
        source: "assets/gearbox_visual_1_195_187.png"
    }

    states: [
        State {
            name: "gear1"
            when: gearbox.currentGear === 1

            PropertyChanges {
                target: gear_2
                opacity: 0
            }

            PropertyChanges {
                target: gear_3
                opacity: 0
            }

            PropertyChanges {
                target: gear_4
                opacity: 0
            }

            PropertyChanges {
                target: gear_5
                opacity: 0
            }

            PropertyChanges {
                target: current_gear
                text: "1"
            }
        },
        State {
            name: "gear2"
            when: gearbox.currentGear === 2

            PropertyChanges {
                target: current_gear
                text: "2"
            }

            PropertyChanges {
                target: gear_1
                opacity: 0
            }

            PropertyChanges {
                target: gear_2
                opacity: 1
            }

            PropertyChanges {
                target: gear_3
                opacity: 0
            }

            PropertyChanges {
                target: gear_4
                opacity: 0
            }

            PropertyChanges {
                target: gear_5
                opacity: 0
            }
        },
        State {
            name: "gear3"
            when: gearbox.currentGear === 3

            PropertyChanges {
                target: current_gear
                text: "3"
            }

            PropertyChanges {
                target: gear_2
                opacity: 0
            }

            PropertyChanges {
                target: gear_1
                opacity: 0
            }

            PropertyChanges {
                target: gear_4
                opacity: 0
            }

            PropertyChanges {
                target: gear_5
                opacity: 0
            }

            PropertyChanges {
                target: gear_3
                opacity: 1
            }
        },
        State {
            name: "gear4"
            when: gearbox.currentGear === 4

            PropertyChanges {
                target: current_gear
                text: "4"
            }

            PropertyChanges {
                target: gear_2
                opacity: 0
            }

            PropertyChanges {
                target: gear_5
                opacity: 0
            }

            PropertyChanges {
                target: gear_1
                opacity: 0
            }

            PropertyChanges {
                target: gear_4
                opacity: 1
            }

            PropertyChanges {
                target: gear_3
                opacity: 0
            }
        },
        State {
            name: "gear5"
            when: gearbox.currentGear === 5

            PropertyChanges {
                target: gear_1
                opacity: 0
            }

            PropertyChanges {
                target: gear_4
                opacity: 0
            }

            PropertyChanges {
                target: gear_2
                opacity: 0
            }

            PropertyChanges {
                target: gear_3
                opacity: 0
            }

            PropertyChanges {
                target: current_gear
                text: "5"
            }

            PropertyChanges {
                target: gear_5
                opacity: 1
            }
        }
    ]
}

/*##^## Designer {
    D{i:0;width:65;currentGear__AT__NodeInstance:1;height:136}
}
 ##^##*/
