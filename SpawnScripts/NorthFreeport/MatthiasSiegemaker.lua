--[[
    Script Name    : SpawnScripts/NorthFreeport/MatthiasSiegemaker.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "Wreak your vengeance upon the helpless, my dear friend.", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end