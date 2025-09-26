#Requires AutoHotkey v2.0

; =============================
; English ↔ Hebrew Mapping
; =============================
EngHebMap := Map(
    "t","א", "c","ב", "d","ג", "s","ד", "v","ה", "u","ו", "z","ז", "j","ח",
    "y","ט", "h","י", "f","כ", "l","ך", "k","ל", "n","מ", "o","ם", "b","נ",
    "i","ן", "x","ס", "g","ע", "p","פ", ";","ף", "m","צ", ".","ץ", "e","ק",
    "r","ר", "a","ש", ",","ת"
)
for k, v in EngHebMap.Clone()
    EngHebMap[StrUpper(k)] := v

HebEngMap := Map()
for eng, heb in EngHebMap
    HebEngMap[heb] := eng

Convert(text, map) {
    out := ""
    Loop Parse text
        out .= map.Has(A_LoopField) ? map[A_LoopField] : A_LoopField
    return out
}

; =============================
; Helper Functions
; =============================
GetSelectedText() {
    ClipSaved := A_Clipboard
    A_Clipboard := ""
    Send("^c")
    Sleep 100
    text := Trim(A_Clipboard)
    A_Clipboard := ClipSaved
    return text
}

UriEncode(str) {
    return StrReplace(StrReplace(Format("{:U}", str), "+", "%2B"), " ", "+")
}

; =============================
; Hotkeys
; =============================
^!h:: { ; Ctrl+Alt+H → Eng → Heb
    Send("^x")
    Sleep 50
    Send(Convert(A_Clipboard, EngHebMap))
}

^!e:: { ; Ctrl+Alt+E → Heb → Eng
    Send("^x")
    Sleep 50
    Send(Convert(A_Clipboard, HebEngMap))
}

!t:: { ; Alt+T → Translate to Hebrew
    text := GetSelectedText()
    if (text != "")
        Run("https://translate.google.co.il/?hl=iw&sl=auto&tl=iw&text=" UriEncode(text))
}

!y:: { ; Alt+Y → YouTube
    text := GetSelectedText()
    if (text != "")
        Run("https://www.youtube.com/results?search_query=" text)
    else
        Run("https://www.youtube.com/")
}

!m:: {
    Run("https://music.youtube.com/")
}

^+`:: { ; Ctrl+Shift+` → Shortcuts info
    full_path := A_ScriptDir "\shortcuts_gui.py"
    Run("pythonw.exe " Chr(34) full_path Chr(34))
    ; Run(A_ScriptDir "\shortcuts_gui.exe")
}
