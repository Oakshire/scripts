--[[
    Script Name    : SpawnScripts/WestFreeport/aMenacerChampion.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 08:10:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", "Do you know who I am? Do you?! I am the Menacer Champion.", "whome", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end