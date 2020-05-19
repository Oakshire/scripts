--[[
	Script Name	: SpawnScripts/WillowWood/HunterLatharForestdeep.lua
	Script Purpose	: Hunter Lathar Forestdeep 
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/hunter_lathar_forestdeep/qey_village05/100_hunter_woodelf_forestdeep_aoi_d409e2bd.mp3", "I don't know how he snuck past the patrols. If you approach slowly, he may let you touch him.", "", 1614740945, 3996136643, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/hunter_lathar_forestdeep/qey_village05/quests/hunter_forestdeep/hunter_forestdeep.mp3", "", "", 1771449207, 2174692031, Spawn)
	AddConversationOption(conversation, "Sorry to have bothered you. ")
	StartConversation(conversation, NPC, Spawn, "What do you need? I'm very busy.")
end
