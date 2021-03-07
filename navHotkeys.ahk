; ----------------------------------------------------------------
;   GENERAL NAVIGATION 
; ----------------------------------------------------------------

; On Ctrl + Up, send home
^!left::Send, {home}
^!h::Send, {home}

; On Ctrl + Down, send to end
^!right::Send, {end}
^!l::Send, {end}



; On Ctrl + Shift + Up, send home & highlight text
+!^left::Send, +{home}
+!^h::Send, +{home}


; On Ctrl + Shift + Down, send to end & highlight text
+!^right::Send, +{end}
+!^l::Send, +{end}

; ----------------------------------------------------------------

!left::Send,   {left}
!h::Send, {left}

!right::Send, {right}
!l::Send, {right}

!j::Send, {down}

!k::Send, {up}


+!left::Send, +{left}
+!h::Send, +{left}

+!right::Send, +{right}
+!l::Send, +{right}


; ----------------------------------------------------------------

^left::Send, ^{left}
^h::Send, ^{left}

^right::Send, ^{right}
^l::Send, ^{right}


+^left::Send, +^{left}
+^h::Send, +^{left}

+^right::Send, +^{right}
+^l::Send, +^{right}


^j::Send, {down}
^k::Send, {up}

+!j::Send, +{down}
+!k::Send, +{up}

; ----------------------------------------------------------------

; t::Sleep, 1005, Send, 52;

; ----------------------------------------------------------------
;   Windows 10 navigation
; ----------------------------------------------------------------



; Reload the script, useful when making frequent changes
; F2::Reload