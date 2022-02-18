tell application "Finder"
	set selected to selection
	set current_folder to item 1 of selected
	set fileExtension to ("pdf")
	set mlist to every file of current_folder whose name extension is fileExtension
	
	repeat with this_file in mlist
		set cur_ext to name extension of this_file
		set strLength to count of characters of this_file
		set new_name to text 9 thru (strLength + (offset of "J" in text) - (length of cur_ext) + 2) of (name of this_file as text) --Had to remove some chars from the name
		set new_folder to make new folder with properties {name:new_name} at current_folder --create new folder with same name

		if not (exists folder new_name) then
			move this_file to new_folder
		end if

	end repeat
end tell
