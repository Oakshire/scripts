--[[
    Script Name    : SpawnScripts/Stormhold/adefiledsentry.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.10 02:04:00
    Script Purpose : 
                   : 
--]]




function spawn(NPC)
local MobLevel = GetLevel(NPC)    
if MobLevel == 16 then
SpawnSet(NPC, "hp", 2176)
SpawnSet(NPC, "power", 789)
SpawnSet(NPC, "difficulty", 6)
elseif MobLevel == 15 then
SpawnSet(NPC, "hp", 3484)
SpawnSet(NPC, "power", 1439)
SpawnSet(NPC, "difficulty", 7)
end
-- MOMVEMENT
 if GetSpawnLocationID(NPC) == 133773062  then
 MovementLoopAddLocation(NPC, -22.86, 7.50, -18.39, 2, MakeRandomInt(16, 24))
 MovementLoopAddLocation(NPC, -21.02, 7.50, -19.67, 2, MakeRandomInt(16, 24))
 MovementLoopAddLocation(NPC, -20.68, 7.50, -11.40, 2, MakeRandomInt(16, 24))
  MovementLoopAddLocation(NPC, -22.09, 7.50, -11.39, 2, MakeRandomInt(16, 24))
   MovementLoopAddLocation(NPC, -23.90, 7.50, -20.92, 2, MakeRandomInt(16, 24))
    MovementLoopAddLocation(NPC, -22.06, 7.50, -22.99, 2, MakeRandomInt(16, 24))
    MovementLoopAddLocation(NPC, -24.01, 7.50, -22.09, 2, MakeRandomInt(16, 24))
    MovementLoopAddLocation(NPC, -21.92, 7.50, -14.94, 2, MakeRandomInt(16, 24))
   end
end 

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end



