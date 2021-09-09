/* SPDX-FileCopyrightText: 2021 Noah Davis <noahadvs@gmail.com>
 * SPDX-License-Identifier: LGPL-2.1-only OR LGPL-3.0-only OR LicenseRef-KDE-Accepted-LGPL
 */

import QtQuick 2.15
import org.kde.kquickimageeditor 1.0 as KQuickImageEditor

Item {
    id: root
    width: 400
    height: 400
    Rectangle {
        id: background
        anchors.fill: parent
        anchors.margins: 20
        z: -1
        gradient: Gradient.MeanFruit
    }
    KQuickImageEditor.SelectionTool {
        id: selectionTool
        anchors.fill: background
        KQuickImageEditor.SelectionBackground {
            z: -1
            x: selectionTool.selectionX
            y: selectionTool.selectionY
            width: selectionTool.selectionWidth
            height: selectionTool.selectionHeight
        }
    }
}
