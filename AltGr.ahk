LControl & RAlt:: AltGr := true ; assign the boolean value "true" to the variable 'AltGr''
LControl & RAlt Up:: AltGr := false

; The #If directive creates context-sensitive hotkeys and hotstrings
#If (AltGr) ; If this variable has the value "true" 

	+s::Send, "
	j::SendRaw, [
	k::SendRaw, ]
	u::SendRaw, {
	i::SendRaw, }  

	; Trivial ones
	; 1::SendRaw, 
	2::SendRaw, @
	3::SendRaw, £
	4::SendRaw, $    
	5::SendRaw, €
	6::SendRaw, {
	8::SendRaw, [
	9::SendRaw, ]
	0::SendRaw, }
	<::SendRaw, \

#If ; turn off context sensitivity 

; load the script, useful when making frequent changes
F2::Reload
