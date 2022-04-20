--[[
    Script Name    : SpawnScripts/Stormhold/asmalllifeleech.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.10 02:04:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)

end


function spawn(NPC)
local Level = GetLevel(NPC)
if Level == 14 then
SpawnSet(NPC, "hp", 2427)
SpawnSet(NPC, "power", 1298)
SpawnSet(NPC, "difficulty", 9)
elseif Level == 15 then
SpawnSet(NPC, "hp", 2800)
SpawnSet(NPC, "power", 1400)
end
-- MOVEMENT

if GetSpawnLocationID(NPC) == 415629  then
 MovementLoopAddLocation(NPC, -21.87, 7.50, -10.16, 2, MakeRandomInt(16, 24))
 MovementLoopAddLocation(NPC, -21.13, 7.50, -11.63, 2, MakeRandomInt(16, 24))
 MovementLoopAddLocation(NPC, -21.48, 7.50, -19.06, 2, MakeRandomInt(16, 24))
  MovementLoopAddLocation(NPC, -22.79, 7.50, -13.23, 2, MakeRandomInt(16, 24))
   MovementLoopAddLocation(NPC, -24.82, 7.50, -22.63, 2, MakeRandomInt(16, 24))
    MovementLoopAddLocation(NPC, -21.15, 7.50, -10.12, 2, MakeRandomInt(16, 24))
    MovementLoopAddLocation(NPC, -23.87, 7.50, -14.88, 2, MakeRandomInt(16, 24))
    MovementLoopAddLocation(NPC, -24.70, 7.50, -18.82, 2, MakeRandomInt(16, 24))
 end
   end