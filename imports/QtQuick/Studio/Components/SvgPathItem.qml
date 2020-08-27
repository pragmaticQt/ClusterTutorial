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

import QtQuick 2.0
import QtQuick.Timeline 1.0
import QtQuick.Shapes 1.0

Shape {
    width: 200
    height: 200

    property alias gradient: shape.fillGradient
    property alias strokeStyle: shape.strokeStyle
    property alias strokeWidth: shape.strokeWidth
    property alias strokeColor: shape.strokeColor
    property alias dashPattern: shape.dashPattern
    property alias joinStyle: shape.joinStyle
    property alias fillColor: shape.fillColor
    property alias path: pathSvg.path

    id: svgPathItem

    ShapePath {
        id: shape
        strokeWidth: 4
        strokeColor: "red"

        PathSvg {
            id: pathSvg

            path: "M91,70.6c4.6,0,8.6,2.4,10.9,6.3l19.8,34.2c2.3,3.9,2.3,8.7,0,12.6c-2.3,3.9-6.4,6.3-10.9,6.3H71.2 c-4.6,0-8.6-2.4-10.9-6.3c-2.3-3.9-2.3-8.7,0-12.6l19.8-34.2C82.4,72.9,86.4,70.6,91,70.6 M91,69.6c-4.6,0-9.2,2.3-11.8,6.8l-19.8,34.2c-5.2,9.1,1.3,20.4,11.8,20.4h39.5c10.5,0,17-11.3,11.8-20.4l-19.8-34.2C100.2,71.9,95.6,69.6,91,69.6L91,69.6z"
        }
    }
}
