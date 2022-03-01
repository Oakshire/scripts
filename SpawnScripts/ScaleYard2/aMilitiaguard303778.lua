--[[
    Script Name    : SpawnScripts/ScaleYard2/aMilitiaguard303778.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.28 07:08:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 50, "InRange", "InRange")
SpawnSet(NPC, "visual_state", 11422)
local choice = math.random(1,3)
if choice == 1 then
SpawnSet(NPC, "model_type", 103)
elseif choice == 2 then
SpawnSet(NPC, "model_type", 1574)
else
SpawnSet(NPC, "model_type", 1575)
end
   end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end
