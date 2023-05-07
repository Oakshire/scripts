--[[
    Script Name    : SpawnScripts/Antonica/SentryMaurice.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.07 01:05:19
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseHuman1.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3","","hello",0,0,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end