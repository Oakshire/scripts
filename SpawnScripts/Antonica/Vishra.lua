--[[
	Script Name	: SpawnScripts/Antonica/Vishra.lua
	Script Purpose	: Vishra 
	Script Author	: TyroneSWG
	Script Date	: 2019.01.15
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/vishra/antonica/service/050_quest_vishra_callout1_a2281965.mp3", "Beware of  the gnolls that prowl nearby.", "", 3599735399, 999434437, Spawn)
end

