;              +-----------------------------------+
;              | Remap keys in Photoshop using AHK |
;              |   Example code for /r/Photoshop   |
;              |  Code is free to link and share   |
;              +-----------------------------------+
 
; +---------------------------------------------------------------+
; |                         INSTRUCTIONS                          |
; | 1. Download and install AHK (https://autohotkey.com/)         |
; | 2. Open Notepad or your preferred text editor                 |
; | 3. Paste the contents of this file and save as <filename>.ahk |
; |    (make sure it's not something like *.ahk.txt)              |
; | 4. Run/open the script                                        |
; | 5. Profit                                                     |
; +---------------------------------------------------------------+
 
; Do not modify this section
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
; Modifier key list: [#] Win
;                    [^] Ctrl
;                    [!] Alt
;                    [+] Shift
; For other keys and commands refer to the AHK manual (https://autohotkey.com/docs/AutoHotkey.htm)
 
; Hotkeys go inside the #IfWinActive section
; The following are just examples. Some don't make much sense to use, or they can
; already be covered by Photoshop's keyboard bindings.
 
#IfWinActive, ahk_exe Photoshop.exe
 
; Suspend hotkeys (toggle on/off)
F1::ExitApp
 
; Reload the script, useful when making frequent changes
F2::Reload
 
; ----------------------------------


^1::Send, ^+{F2}   ; BLACK
^2::Send, ^+{F3}   ; Green
^3::Send, ^+{F4}   ; Red
^4::Send, ^+{F5}   ; Blue
^5::Send, ^+{F6}   ; Purple
^6::Send, ^+{F7}   ; Orange

#+g::
Send, ^!+g             ; *Open Gaussian blur using hotkey
WinWait, Gaussian Blur ; Wait for the dialog to show
WinActivate            ; Activate the last matching window (Gaussian blur in this case)
Send, !r1{ENTER}       ; Send Alt-R to focus on the radius box, send 1 and Enter
return


; ----------------------------------

#IfWinActive

; Avoid writing any commands after this line, otherwise the hotkeys will apply
; outside Photoshop