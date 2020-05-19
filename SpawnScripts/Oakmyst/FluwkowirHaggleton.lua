--[[
	Script Name	: SpawnScripts/Oakmyst/FluwkowirHaggleton.lua
	Script Purpose	: Fluwkowir Haggleton 
	Script Author	: Scatman
	Script Date	: 2009.05.03
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_FROM_JORN = 18

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fluwkowir_haggleton/qey_adv01_oakmyst_revamp/qst_fluwkowir_wrongway_52d5c902.mp3", "Ooops, I think I was going the other way.", "", 2064229810, 2868860860, Spawn)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_JORN) and GetQuestStep(Spawn, QUEST_FROM_JORN) == 1 then
		JustLeaveMeAlone(NPC, Spawn, conversation)	
	else
	end
end

function JustLeaveMeAlone(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I need to talk to you.", "WhatAbout")
	StartConversation(conversation, NPC, Spawn, "Just leave me alone!")
end

function WhatAbout(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It's about Jorn Sorefoot, the barbarian you were playing cards with.", "MakeAttackable")
	StartConversation(conversation, NPC, Spawn, "Bah! What about? I'm very busy, I don't need to waste my time talking to the likes of you.")
end

function MakeAttackable(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fluwkowir_haggleton/qey_adv01_oakmyst_revamp/qst_fluwkowir_attack_104162fd.mp3", "Oh no you don't! I won't go down!", "", 260519136, 2014641631, Spawn)
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	AddHate(Spawn, NPC, 100)
end

function death(NPC, Spawn)
	if HasQuest(Spawn, QUEST_FROM_JORN) then
		-- Flukowir's Satchel
		SummonItem(Player, 6389)
	end
end
