--[[
    Script Name    : SpawnScripts/ScaleYard2/aprisonescapee.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.29 07:08:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
local choice = math.random(1,4)
if choice == 1 then
SpawnSet(NPC, "model_type", 116)
elseif choice == 2 then
SpawnSet(NPC, "model_type", 115)
elseif choice == 3 then
SpawnSet(NPC, "model_type", 105)
elseif choice == 4 then
SpawnSet(NPC, "model_type", 123)
else
SpawnSet(NPC, "model_type", 135)
end
   end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC, Spawn)
end

function InRange(NPC, Spawn)
local PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end

function LeaveRange(NPC, Spawn)

end
