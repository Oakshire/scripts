--[[
    Script Name    : SpawnScripts/TempleStreet2/anecromechanist.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.17 03:08:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
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

function LeaveRange(NPC, Spawn)

end