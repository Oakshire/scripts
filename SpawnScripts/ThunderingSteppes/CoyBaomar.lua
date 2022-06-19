--[[
    Script Name    : SpawnScripts/ThunderingSteppes/CoyBaomar.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 12:06:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "I have come to the Steppes in search of blood.  My brother was killed on a supply run to Thundermist Village.  The centaurs of this land will pay for their villainy!", "", 0, 0, Spawn, 0)
end

function death(NPC,Spawn)
    PlayFlavor(NPC, "voiceover/english/optional5/human_steppes/ft/human/human_steppes_1_death_gm_f56b206a.mp3", "At least they died with their boots on.", "", 2785078984, 3057500781, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end