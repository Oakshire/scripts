--[[
    Script Name    : SpawnScripts/Freeport/Arwain.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 08:07:14
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

