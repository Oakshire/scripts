--[[
	Script Name	: SpawnScripts/BeggarsCourt/aRommulsloyalist.lua
	Script Purpose	: a Rommuls loyalist 
	Script Author	: John Adams (Updated by Cynnar 2018.06.22 09:06:28)
	Script Date	: 2009.04.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local HALFELF_MENTOR_QUEST_4 = 317 -- Thaen Sevellos

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_4) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_4) == 1 then
		conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_rommuls_loyalist/fprt_hood04/quests/captor/thug000.mp3", "", "", 1922921489, 2760341303, Spawn)
		AddConversationOption(conversation, "I know what I'm doing; release your prisoner.", "dlg_27_1")
		AddConversationOption(conversation, "Fine, I'll leave.")
		StartConversation(conversation, NPC, Spawn, "Watch where you point your nose, pal, you don't want to lose it.")
	end
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_rommuls_loyalist/fprt_hood04/quests/captor/thug001.mp3", "", "", 835606330, 2405395928, Spawn)
	AddConversationOption(conversation, "Your prisoner is of the Ayr'Dal Brotherhood. You hold him yet he has committed no crime.", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "Hah, not a chance!")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_rommuls_loyalist/fprt_hood04/quests/captor/thug002.mp3", "", "", 3750086716, 2767526036, Spawn)
	AddConversationOption(conversation, "I am not afraid of using force.", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "Oooh, so you're one of them, huh? Well guess what, I ain't moving.")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_rommuls_loyalist/fprt_hood04/quests/captor/thug003.mp3", "", "", 1311881842, 4106998175, Spawn)
	AddConversationOption(conversation, "Very well. [fight]", "MakeAttackablePlease")
	StartConversation(conversation, NPC, Spawn, "Make your move.")
end

function MakeAttackablePlease(NPC, Spawn)
	--Rom2 = GetSpawn(Spawn, 1370157)
	local zone = GetZone(NPC)
	local Rom2 = GetSpawnByLocationID(zone, 403037)
	SpawnSet(NPC, "show_level", 1)
	SpawnSet(Rom2, "show_level", 1)
	AddHate(Spawn, NPC, 100)
	AddHate(Spawn, Rom2, 100)
end

function death(NPC, Spawn)
	--Rom2 = GetSpawn(Spawn, 1370157)
	local zone = GetZone(NPC)
	local Rom2 = GetSpawnByLocationID(zone, 403037)
	if Rom2 == nil or not IsAlive(Rom2) then
		SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_4, 1)
		local Thaen = GetSpawn(Spawn, 1370066)
		Despawn(Thaen, 30000)
	end
end