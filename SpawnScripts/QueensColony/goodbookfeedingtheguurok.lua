--[[
	Script Name		:	goodbookfeedingtheguurok.lua
	Script Purpose	:	Handles the book at the goblin treehouse
	Script Author	:	Jabantiz
	Script Date		:	9/9/2016
	Script Notes	:	
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "Read book" then
		local con = CreateConversation()
		
		AddConversationOption(con, "Stop reading.", "CloseConversation")
		StartDialogConversation(con, 1, NPC, Spawn, "When Guurok near must be fed.\nGuurok eat skills, but not gobbie skulls.\nIt's people!  Good thing graveyard near.\nBring more gobbies in case angered!\nSix peoples it needs from on rock.")
	end
end