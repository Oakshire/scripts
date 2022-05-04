--[[
    Script Name    : SpawnScripts/SouthFreeport/CaptainStovka.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.04 04:05:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1031.mp3", "I have littles to say, until you have completed the task givens to you.", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end