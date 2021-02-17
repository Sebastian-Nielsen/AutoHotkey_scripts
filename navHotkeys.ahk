


; On Ctrl + Up, send home
^left::Send, {home}
^h::Send, {home}

; On Ctrl + Down, send to end
^right::Send, {end}
^l::Send, {end}



; On Ctrl + Shift + Up, send home & highlight text
+^left::Send, +{home}
+^h::Send, +{home}

; On Ctrl + Shift + Down, send to end & highlight text
+^right::Send, +{end}
+^l::Send, +{end}





; Reload the script, useful when making frequent changes
F2::Reload