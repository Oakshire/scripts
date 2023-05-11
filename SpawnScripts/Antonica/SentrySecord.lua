--[[
    Script Name    : SpawnScripts/Antonica/SentrySecord.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.10 08:05:53
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseHuman1.lua")

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3","","hello",0,0,Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end