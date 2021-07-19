set theText to characters of "abc23er55"
set Y to 0
log theText
repeat with i from 1 to count of items in theText
	set x to item i of theText
	if x is in "1234567890" then
		set Y to Y + 1
	end if
end repeat
display dialog Y


