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
 
; Remap x to y
x::Send, y
 
; Swap Undo and Step Backward
^z::Send, ^!z
^!z::Send, ^z
 
; If you only use Save for Web, and rarely Save As or other options, then:
^s::Send, ^!+s
; And optionally swap:
^!+s::Send, ^s
 
; Another way of selecting menu items is to use the Alt key menu navigation
; For example, Filter -> Convert for Smart Filters is Alt-T, S
; Alt-T activates the Filter menu, and S selects the item (notice the underlined
; characters). So:
#s::Send, !ts
 
; If the menu item does not have a similar accessibility method, you can do this:
; Example: Edit -> Perspective Warp has no shortcut key, but you can select it
; by pressing: Alt-E, PP (P twice) and Enter. You can do this using:
#w::Send, !epp{ENTER}
 
; If you want to map filters to hotkeys, it's best to assign them a long
; hotkey inside Photoshop first, e.g. set Gaussian Blur to Crlt+Alt+Shift+G,
; and then use a simpler hotkey (Win+G) here:
#g::Send, ^!+g
 
; More complex automation must be written like this (notice the 'return')
; The following uses the above hotkey to open the Gaussian Blur dialog, enter
; a pixel radius value of 1 and confirm.
#+g::
Send, ^!+g             ; *Open Gaussian blur using hotkey
WinWait, Gaussian Blur ; Wait for the dialog to show
WinActivate            ; Activate the last matching window (Gaussian blur in this case)
Send, !r1{ENTER}       ; Send Alt-R to focus on the radius box, send 1 and Enter
return
 
; *Alternatively, if you do not have a shortcut set in Ps, you can replace that line with:
; Send, !tb{ENTER}g
; Alt-T for Filters, b for Blur, enter to open the submenu, G for Gaussian Blur
 
#IfWinActive
 
; Avoid writing any commands after this line, otherwise the hotkeys will apply
; outside Photoshop