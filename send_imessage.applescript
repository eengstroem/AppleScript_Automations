-- Code taken from here: https://stackoverflow.com/questions/11812184/how-to-send-an-imessage-text-with-applescript-only-in-provided-service

on run {targetBuddyPhone, targetMessage}
    tell application "Messages"
        set targetService to 1st service whose service type = iMessage
        set targetBuddy to buddy targetBuddyPhone of targetService
        send targetMessage to targetBuddy
    end tell
end run