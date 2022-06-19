--[[
    Script Name    : SpawnScripts/ThunderingSteppes/MerchantStoker.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 02:06:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", "Buy something, would ya?  Some of my profits are shipped to Thundermist in the form of supplies to help keep the Village safe.", "tapfoot", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end