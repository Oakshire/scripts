--[[
    Script Name    : SpawnScripts/Freeport/CeaciliaVelva.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 09:07:06
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end
