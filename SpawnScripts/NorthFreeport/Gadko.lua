--[[
    Script Name    : SpawnScripts/NorthFreeport/Gadko.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 04:06:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", "Gadko takes old Vassi armor and sell you new armor, yes?  Come, come then! Gadko no like to waste time!", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end