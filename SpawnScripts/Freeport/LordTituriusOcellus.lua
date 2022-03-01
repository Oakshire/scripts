--[[
    Script Name    : SpawnScripts/Freeport/LordTituriusOcellus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:36
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
SetMount(NPC, 16338)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
         spawn(NPC)
end