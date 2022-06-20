--[[
    Script Name    : SpawnScripts/NorthFreeport/ConsternatorSoulinus.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "I am busy. Maybe when I'm done with my current work I'll send for you. Until then, leave me be.", "no", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end