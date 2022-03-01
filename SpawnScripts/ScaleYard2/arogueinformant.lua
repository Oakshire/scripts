--[[
    Script Name    : SpawnScripts/ScaleYard2/arogueinformant.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.29 04:08:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "InRange", "InRange")
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
local PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end