--[[
    Script Name    : SpawnScripts/NorthFreeport/HazrulinVextrik.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "I do not need your help. Begone.", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end