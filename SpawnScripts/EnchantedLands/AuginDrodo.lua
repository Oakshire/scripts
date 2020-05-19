--[[
	Script Name	: SpawnScripts/EnchantedLands/AuginDrodo.lua
	Script Purpose	: Augin Drodo 
	Script Author	: Cynnar
	Script Date	: 2015.02.17
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local DrodosGoodies = 119

function spawn(NPC)
	ProvidesQuest(NPC, DrodosGoodies)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetQuestStep(Spawn, DrodosGoodies) == 5 then
		SetStepComplete(Spawn, DrodosGoodies, 5)
		PlayFlavor(NPC, "augin_drodo/enchanted/augin_drodo005.mp3", "", "", 3737453066, 827504034, Spawn)
		AddConversationOption(conversation, "My pleasure Augin. ")
		StartConversation(conversation, NPC, Spawn, "Brell's toes! You did it! I thought I'd never see my goodies again. Thank you very much, adventurer.")
	elseif HasQuest(Spawn, DrodosGoodies) then
		PlayFlavor(NPC, "augin_drodo/enchanted/augin_drodo004.mp3", "", "", 3781017237, 1546523399, Spawn)
		AddConversationOption(conversation, "You're right. I will complete the task.")
		StartConversation(conversation, NPC, Spawn, "Change your mind, friend? I wasn't expecting a trotter like you to leave a task undone.")
	elseif HasCompletedQuest(Spawn, DrodosGoodies) then
		PlayFlavor(NPC, "augin_drodo/enchanted/augin_drodo015.mp3", "", "", 2767747634, 2031605868, Spawn)
		AddConversationOption(conversation, "They got no souvenirs from me Augin. See you around.")
		StartConversation(conversation, NPC, Spawn, "Good to see you in one piece, friend. It's not often adventurers return ... at least not with all their limbs intact. The critters tend to keep a few souvenirs, ya know?")
	elseif not HasQuest(Spawn, DrodosGoodies) then
		PlayFlavor(NPC, "augin_drodo/enchanted/augin_drodo001.mp3", "", "", 3076457390, 3089637285, Spawn)
		AddConversationOption(conversation, "You say that like they ruined your picnic. ", "dlg_0_1")
		AddConversationOption(conversation, "I'll watch my step. Thank you.")
		StartConversation(conversation, NPC, Spawn, "These misty lands are very dangerous. One can't even picnic and slumber without being pestered by the critters!")
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "augin_drodo/enchanted/augin_drodo002.mp3", "", "", 3561207017, 3513321017, Spawn)
	AddConversationOption(conversation, "I can look for your goodies. ", "dlg_0_2")
	AddConversationOption(conversation, "Maybe next time you'll know better. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "Ruined my picnic, ruined my slumber, ruined my reading time! I was just minding my own when those blasted briarpaws came a rumbling towards me! I ran for my life! Left all my goodies to the critters!")
end

function dlg_0_2(NPC, Spawn)
	OfferQuest(NPC, Spawn, DrodosGoodies)
end

