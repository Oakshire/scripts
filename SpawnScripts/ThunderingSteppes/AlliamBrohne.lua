--[[
    Script Name    : SpawnScripts/ThunderingSteppes/AlliamBrohne.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 01:06:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "These docks sprang to life after the establishment of Bridge Keep and Thundermist Village.  They need supplies often in these dangerous lands.", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end