--[[
    Script Name    : SpawnScripts/Antonica/SentryDunstan.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.10 06:05:15
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseHuman1.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3","","agree",0,0,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end