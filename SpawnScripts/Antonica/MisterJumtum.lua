--[[
    Script Name    : SpawnScripts/Antonica/MisterJumtum.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.07 05:10:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1026.mp3", "Pfft!  Away with you, or you'll step on my flowers!", "shakefist", 0, 0, Spawn, 0)
	end

function respawn(NPC)
	spawn(NPC)
end