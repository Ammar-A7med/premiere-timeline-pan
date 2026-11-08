#Requires AutoHotkey v2.0
#SingleInstance Force

global premierePan := false

PanCondition() {
    global premierePan
    return premierePan || WinActive("ahk_exe Adobe Premiere Pro.exe")
}

#HotIf PanCondition()

MButton:: {
    global premierePan
    premierePan := true
    Send("{vk48sc023}")   ; H (Hand Tool) - vk/sc code عشان يشتغل بغض النظر عن اللغة
    Sleep(30)              ; استنى بريمير يخلص يبدّل الأداة
    Click("Down")
}

MButton Up:: {
    global premierePan
    Click("Up")
    Sleep(30)
    Send("{vk56sc02F}")   ; V (Selection Tool) - vk/sc code عشان يشتغل بغض النظر عن اللغة
    premierePan := false
}

#HotIf
