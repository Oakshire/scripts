--[[
    Script Name    : SpawnScripts/NorthFreeport/MizzogtheSighted.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 12:06:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1057.mp3", "Leave Mizzog be.  The spirits do not speak of this one.", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end