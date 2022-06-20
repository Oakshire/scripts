--[[
    Script Name    : SpawnScripts/NorthFreeport/AugurerValgus.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "Your strength is the heart of Freeport, citizen.", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end