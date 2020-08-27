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
import QtQuick 2.9
import QtQuick.Shapes 1.0

Shape {
    id: root

    implicitWidth: 100
    implicitHeight: 100

    property alias gradient: path.fillGradient
    property alias strokeStyle: path.strokeStyle
    property alias strokeWidth: path.strokeWidth
    property alias strokeColor: path.strokeColor
    property alias dashPattern: path.dashPattern
    property alias joinStyle: path.joinStyle
    property alias fillColor: path.fillColor
    property alias capStyle: path.capStyle

    property real begin: 0
    property real end: 90

    property real alpha: end - begin

    function polarToCartesianX(centerX, centerY, radius, angleInDegrees) {
        var angleInRadians = angleInDegrees * Math.PI / 180.0;
        var x = centerX + radius * Math.cos(angleInRadians)
        return x
    }

    function polarToCartesianY(centerX, centerY, radius, angleInDegrees) {
        var angleInRadians = angleInDegrees * Math.PI / 180.0;
        var y = centerY + radius * Math.sin(angleInRadians);
        return y
    }

    function calc()
    {
        path.__xRadius = root.width / 2 - root.strokeWidth / 2
        path.__yRadius = root.height / 2 - root.strokeWidth / 2

        path.__Xcenter = root.width / 2
        path.__Ycenter = root.height / 2

        path.startX = root.polarToCartesianX(path.__Xcenter, path.__Ycenter, path.__xRadius, root.begin - 180)
        path.startY = root.polarToCartesianY(path.__Xcenter, path.__Ycenter, path.__yRadius, root.begin - 180)

        arc.x = root.polarToCartesianX(path.__Xcenter, path.__Ycenter, path.__xRadius, root.end - 180)
        arc.y = root.polarToCartesianY(path.__Xcenter, path.__Ycenter,  path.__yRadius, root.end - 180)

        arc.radiusY =  path.__yRadius
        arc.radiusX =  path.__xRadius

        arc.useLargeArc =  root.alpha > 180
    }


    Component.onCompleted: calc()
    onWidthChanged: calc()
    onHeightChanged: calc()
    onBeginChanged: calc()
    onEndChanged: calc()
    onAlphaChanged: calc()

    ShapePath {
        id: path

        property real __xRadius
        property real __yRadius

        property real __Xcenter
        property real __Ycenter

        fillColor: "transparent"
        strokeColor: Qt.transparent
        strokeWidth: 1
        capStyle: ShapePath.FlatCap


        PathArc {
            id: arc
        }
    }
}

