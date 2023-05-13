--[[
    Script Name    : SpawnScripts/Antonica/GuardCoffrey.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.12 11:05:10
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end