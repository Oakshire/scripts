--[[
	Script Name	: SpawnScripts/NorthQeynos/LadyRickson.lua
	Script Purpose	: Lady Rickson 
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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
    local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1011.mp3", "The Claymore is elegant yet deadly; it is a perfect icon for Qeynos.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1011.mp3", "The gnolls that patrol Antonica may yet surprise us with their strength; many Antonicans believe them all but defeated, they will use that belief to their advantage.", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3", "This city is beautiful, even in ill weather.", "", 0, 0, Spawn)
    end
end
