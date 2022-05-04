--[[
    Script Name    : SpawnScripts/SouthFreeport/aRoughhouserChampion.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.04 04:05:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "Move along before my fists dance upon your face.", "threaten", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end