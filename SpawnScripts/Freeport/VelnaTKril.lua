--[[
    Script Name    : SpawnScripts/Freeport/VelnaTKril.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 07:07:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end

