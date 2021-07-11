LControl & RAlt:: AltGr := true ; assign the boolean value "true" to the variable 'AltGr''
LControl & RAlt Up:: AltGr := false

; The #If directive creates context-sensitive hotkeys and hotstrings
#If (AltGr) ; If this variable has the value "true" 

	; =========== AltGr should function as AltGr (a unique key)
	+s::Send, "
	j::SendRaw, [
	k::SendRaw, ]
	u::SendRaw, {
	i::SendRaw, }  

	; =========== AltGr should function as if hitting 'alt' 
	F4::Send, !{F4}

	; =========== Trivial ones
	; 1::SendRaw, 
	2::SendRaw, @
	3::SendRaw, £
	4::SendRaw, $ 
	5::SendRaw, €
	; 6::SendRaw, 
	7::SendRaw, {
	8::SendRaw, [
	9::SendRaw, ] 
	0::SendRaw, }
	<::SendRaw, \

#If ; turn off context sensitivity 

; (ctrl)+(alt) mappings   â^s^b^c^dê^f^gê
^!u::SendRaw, {
^!i::SendRaw, }
^!j::SendRaw, [
^!k::SendRaw, ]


; F2::Reload
