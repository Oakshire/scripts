--[[
    Script Name    : SpawnScripts/WestFreeport/PaulinaAdauctus.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1051.mp3", "May I ask why you're talking to me?", "boggle", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end