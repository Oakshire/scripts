--[[
    Script Name    : SpawnScripts/SouthQeynos/VhretRetharo.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.05 08:06:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
   	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "hello", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end