--[[
	Script Name	: SpawnScripts/Graystone/GnorFarven.lua
	Script Purpose	: Gnor Farven 
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

local DWARF_MENTOR_QUEST_2 = 285

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	GenericHail(NPC, Spawn)
	
	if HasQuest(Spawn, DWARF_MENTOR_QUEST_2) and not QuestStepIsComplete(Spawn, DWARF_MENTOR_QUEST_2, 2) then
		LikinTheViewAreYa(NPC, Spawn, conversation)
	else
		Say(NPC, "Sorry, it's near impossible for me to drink and talk at the same time.", Spawn)
	end
end

function LikinTheViewAreYa(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Mav made some of her family recipe.", "dlg_17_1")
	StartConversation(conversation, NPC, Spawn, "Likin' the view, are ya? Hah hah!")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Well, prepare to find out. I have some of the brew right here.", "dlg_17_2")
	StartConversation(conversation, NPC, Spawn, "So she finally made good on her promise! It's about time. I'm going to have to schedule an appointment with her, cause I'm sure that's what it'll take to try some of this magical brew of hers. You know she says it can knock an ogre on 'is back, I dun' believe it though.")
end

function dlg_17_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Here you go.", "dlg_17_3")
	StartConversation(conversation, NPC, Spawn, "Oy! Fill 'er up then why don't ya! If it's half as good as Mav describes it it'll have been worth the wait.")
end

function dlg_17_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How is it?", "dlg_17_4")
	StartConversation(conversation, NPC, Spawn, "Hold your chairs 'cause here I go!")
end

function dlg_17_4(NPC, Spawn)
	SetStepComplete(Spawn, DWARF_MENTOR_QUEST_2, 2)
	
	-- knockeddowntoknees
	SpawnSet(NPC, "visual_state", 11764)
	AddTimer(NPC, 3000, "RemoveVisualState")
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Oooooh-wee, that'll make ya warm at night. She was right about it. I can't wait until she goes into business. Best brew this side of Kaladim. Hah, no offense, Coppershot! Thanks for bringing it to me!")
end

function RemoveVisualState(NPC)
	SpawnSet(NPC, "visual_state", 0)
end