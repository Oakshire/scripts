--[[
    Script Name    : SpawnScripts/NorthQeynos/GrettaSteinbeard.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.01 01:04:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1061.mp3", "Greetings, traveler!  My tavern's warm, and the company's good.", "", 0, 0, Spawn, 0)
	
end

function respawn(NPC)
	spawn(NPC)
end