/****************************************************************************
**
** Copyright (C) 2018 The Qt Company Ltd.
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

/* simple simulation script for testing a Cluster UI Design */

/* TACHOMETER VARIABLES */
var rpmNeedleCount = 0
var rpmReadoutCount = 0
var maxNeedleRpm = 1100
var idleNeedleRpm = 100
var engineTempRpm = 800

/* SPEEDOMETER VARLIABLES */
var kphNeedleCount = 0
var kphReadoutCount = 0
var maxKph = 200.0
var minKph = 0.1
var kplReadoutCount = 100

/* FUEL GAUGE VARIABLES */
var litersNeedleCount = 1100
var litersDisplayCount = 1100
var maxLiters = 1100
var minLiters = 0
var rangeDisplayCount = 11000
var maxRange = 11000
var lowFuel = 300

/* ISO ICON BOOLEANS */
var engineTempBool = false
var fuelLevelBool = false

/* GEARBOX CONTROLS */
var currentGearInt = 1

/* SETUP */
var reverseRpm = false
var reverseKph = false

/* FUNCTIONS FOR SETTING THE VALUES IN THE QML FILE - VALUES.QML */

/* TACHOMETER DIAL VARIABLES SET HERE */

/* controls the needle and arc */
function setNeedleRpm() {
    values.rpm = (rpmNeedleCount)
}

/* controls the numerical RPM readout */
function setDisplayRpm() {
    values.displayRpm = (Math.round(rpmReadoutCount / 10) + "00")
}

/* SPEEDOMETER DIAL VARIABLES SET HERE */

/* controls the needle and arc */
function setNeedleKph() {
    values.kph = (kphNeedleCount)
}

/* controls the numerical KPH readout */
function setDisplayKph() {
    values.displayKph = (Math.round(kphReadoutCount))
}

/* controls the numerical KPL readout */
function setDisplayKpl() {
    values.displayKpl = (kplReadoutCount)
}

/* FUEL GAUGE VARIABLES SET HERE */

/* controls the needle and arc */
function setNeedleLiters() {
    values.liters = (litersNeedleCount)
}

/* controls the numerical LITERS readout */
function setDisplayliters() {
    values.displayLiters = (litersDisplayCount / 10).toFixed(1)
}

/* controls the numerical KILOMETERS readout */
function setDisplayRange() {
    values.displayRange = (rangeDisplayCount)
}

/* ISO ICON BOOLEAN VALUES SET HERE */
function setEngineTemp() {
    values.engineTemp = (engineTempBool)
}

function setFuelLevel() {
    values.fuelLevel = (fuelLevelBool)
}

/* SET CURRENT GEAR */
function setCurrentGear() {
    values.currentGear = (currentGearInt)
}

/* MAIN LOOP */

/* TIMER FUNCTION FOR THE TACHOMETER */
function rpmTimer() {
    if (!reverseRpm) {
        if (rpmNeedleCount < maxNeedleRpm) {
            rpmNeedleCount++
            rpmReadoutCount++
        } else {
            reverseRpm = true
        }
        if (rpmNeedleCount > engineTempRpm) {
            engineTempBool = true
        } else {
            engineTempBool = false
        }
    } else {
        if (rpmNeedleCount > idleNeedleRpm) {
            rpmNeedleCount--
            rpmReadoutCount--
        } else {
            reverseRpm = false
        }
        if (rpmNeedleCount > engineTempRpm) {
            engineTempBool = true
        } else {
            engineTempBool = false
        }
    }

    setNeedleRpm()
    setDisplayRpm()
    setEngineTemp()
}

/* TIMER FUNCTION FOR THE SPEEDOMETER */
function kphTimer() {
    if (!reverseKph) {
        if (kphNeedleCount < maxKph)
        {
            kphNeedleCount = (kphNeedleCount + 0.1)
            kphReadoutCount = (kphReadoutCount + 0.1)
        } else {
            reverseKph = true
        }
    } else {
        if (kphNeedleCount > minKph) {
            kphNeedleCount = (kphNeedleCount - 0.1)
            kphReadoutCount = (kphReadoutCount - 0.1)
        } else {
            reverseKph = false
        }
    }

    setNeedleKph()
    setDisplayKph()
    setDisplayKpl()
    changeGear()
}

/* TIMER FUNCTION FOR THE FUEL GAUGE */
function litersTimer() {

    //console.log ((litersNeedleCount)+ "needle liters pre");
    if (litersNeedleCount <= maxLiters)
    {
        litersNeedleCount--
        litersDisplayCount--
        rangeDisplayCount = (Math.round((litersNeedleCount / 10) * 97.5))

        if (litersNeedleCount < lowFuel) {
            fuelLevelBool = true
        } else {
            fuelLevelBool = false
        }

        if (litersNeedleCount == minLiters) {
            litersNeedleCount = maxLiters
            litersDisplayCount = (maxLiters)
            rangeDisplayCount = maxRange
            fuelLevelBool = false
        }
    }

    setNeedleLiters()
    setDisplayliters()
    setDisplayRange()
    setFuelLevel()
}

/* GEARBOX CONTROL FUNCTION */
function changeGear() {
    if (kphNeedleCount >= 0 && kphNeedleCount <= 39) {
        currentGearInt = 1
    } else if (kphNeedleCount >= 40 && kphNeedleCount <= 79) {
        currentGearInt = 2
    } else if (kphNeedleCount >= 80 && kphNeedleCount <= 119)
    {
        currentGearInt = 3
    } else if (kphNeedleCount >= 120 && kphNeedleCount <= 159)
    {
        currentGearInt = 4
    } else if (kphNeedleCount >= 160 && kphNeedleCount <= 200)
    {
        currentGearInt = 5
    }

    setCurrentGear()
}
