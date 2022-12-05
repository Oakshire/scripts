--[[
	Script Name	: Items/OverflowManifest.lua
	Script Purpose	: Overflow Manifest
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes :
--]]

local BARBARIAN_MENTOR_QUEST_2 = 290

function examined(Item, Player)
	if HasQuest(Player, BARBARIAN_MENTOR_QUEST_2) and GetQuestStep(Player, BARBARIAN_MENTOR_QUEST_2) == 1 then
		SetStepComplete(Player, BARBARIAN_MENTOR_QUEST_2, 1)
	end
	
	conversation = CreateConversation()
	AddConversationOption(conversation, "Put the manifest away.", "CloseItemConversation")
	StartDialogConversation(conversation, 2, Item, Player, "Overflow Manifest: Graystone Yard\n#3CF0F: Under the small ramp east of the docks.\n#3CF1G: Leaning against the north-wall just east of the docks, near Tacklmaster Moyna.\n#2DF0F: Just north of the most north-eastern building in Graystone, off the lip of the raised platform. #4QGCG: Along the eastern wall, behind the Scribe's shop.\n#CC4QF: Just west of the harbor entrance, near the Mail Kiosk and Bowyer.\n#QGC4F: Outside the bank and its western corner, piled between the raised platform and the wall.")
end
