--[[
    Script Name    : SpawnScripts/Antonica/KnightGrelStoneshearer.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 12:05:20
    Script Purpose : 
                   : 
--]]

local LordGrimrotsScythe = 5522

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/knight_grel_stoneshearer/antonica/quests/firemyst/grel_stoneshearer000.mp3", "", "", 3381463190, 2283836874, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, LordGrimrotsScythe) == 1 then
	AddConversationOption(conversation, "Ignar Steadirt sent me.", "Option1")
	end
	AddConversationOption(conversation, "Just passing through, sorry to interrupt you.")
	StartConversation(conversation, NPC, Spawn, "And who might you be?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/knight_grel_stoneshearer/antonica/quests/firemyst/grel_stoneshearer001.mp3", "", "", 1129984683, 980692304, Spawn)
	AddConversationOption(conversation, "Do you have your report?  Ignar asked me to pick them up.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Ignar?  Oh, I'll bet he's waiting on a report!  Poor fellow, he can't hear with one ear, you know. That's why he's been assigned duty out of harm's way.")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, LordGrimrotsScythe, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/knight_grel_stoneshearer/antonica/quests/firemyst/grel_stoneshearer002.mp3", "", "", 1531924790, 1319128858, Spawn)
	AddConversationOption(conversation, "I'll let Ignar know.")
	StartConversation(conversation, NPC, Spawn, "Yes, here it is.  The word is, something peculiar's going on ... apparently, there's a group of gnolls--the little wretches--that are trying to conjure up an undead invasion.  I'm not sure what they're using, but the activity of the undead has increased. I will send word to Ignar without delay should I learn more.")
end

function respawn(NPC)
	spawn(NPC)
end

