--[[
    Script Name    : SpawnScripts/ThunderingSteppes/MerchantAedmarr.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 02:06:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1033.mp3", "Many strange items have been retrieved from the Steppes in recent days.  Do you have anything for sale that you have found?", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end