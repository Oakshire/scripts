--[[
    Script Name    : SpawnScripts/NorthFreeport/RissTaskel.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", "In time, all conflicts are resolved.", "converse", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end