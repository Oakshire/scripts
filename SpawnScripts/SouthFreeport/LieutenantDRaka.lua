--[[
    Script Name    : SpawnScripts/SouthFreeport/LieutenantDRaka.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.04 04:05:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "I am sorry, I only have tasks for those who are challenged by the work.", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end