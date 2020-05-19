--[[
	Script Name		:	ItemScripts/WorthlessBronzeStatuette.lua
	Script Purpose	:	<purpose>
	Script Author	:	Jabantiz
	Script Date		:	6/15/2018
	Script Notes	:	<special-instructions>
--]]

-- Quest ID's
local INFORMATION_MERCHANTS = 318

function examined(Item, Player)
	if HasQuest(Player, INFORMATION_MERCHANTS) and GetQuestStep(Player, INFORMATION_MERCHANTS) == 2 then
		local con = CreateConversation()
		
		AddConversationOption(con, "Attempt to separate the halves.", "SeperateHalves")
		StartDialogConversation(con, 2, Item, Player, "The statuette is dull and scratched. Any sheen it may have had is presently gone. There is a barely visible seam encircling the waist of the statuette as if the upper and lower halves were originally separate.")
	end
end

function SeperateHalves(Item, Player)
	local con = CreateConversation()
	
	AddConversationOption(con, "Read the note.", "ReadNote")
	StartDialogConversation(con, 2, Item, Player, "With only a minor twist the two halves come apart. The statuette is hollow on the inside and within rests a note.")
end

function ReadNote(Item, Player)
	SetStepComplete(Player, INFORMATION_MERCHANTS, 2)
	local con = CreateConversation()
	
	AddConversationOption(con, "Put the note back in the statuette.", "CloseItemConversation")
	StartDialogConversation(con, 2, Item, Player, "The note reads:\n\nClient-\n\nWe encountered your gray before you mentioned him, so it wasn't hard finding him. Once we got your request we stuck someone to him. You were right, he had something to hide. Some sort of package or crate or something. He must've thought he was being followed because he dumped it in the water in South Qeynos. We don't know what was in it but it's probably three feet deep in the mud in the Peat Bog by now, if you want us to go after that it'll cost you.")
end