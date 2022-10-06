--[[
    Script Name    : SpawnScripts/classic_caves/aDustpawPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.02 07:09:51
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
	waypoints(NPC)
end


function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 41.86, 2.36, -93.52, 2, 5)
	MovementLoopAddLocation(NPC, 36.72, 2.65, -89.82, 2, 0)
	MovementLoopAddLocation(NPC, 30.83, 3.32, -87.54, 2, 0)
	MovementLoopAddLocation(NPC, 27.95, 3.36, -83.76, 2, 0)
	MovementLoopAddLocation(NPC, 26.16, 4.24, -79.81, 2, 0)
	MovementLoopAddLocation(NPC, 24.48, 5.11, -76, 2, 5)
	MovementLoopAddLocation(NPC, 24.48, 5.11, -76, 2, 0)
	MovementLoopAddLocation(NPC, 26.36, 4.02, -80.91, 2, 0)
	MovementLoopAddLocation(NPC, 30.22, 3.33, -86.88, 2, 0)
	MovementLoopAddLocation(NPC, 30.22, 3.33, -86.88, 2, 0)
	MovementLoopAddLocation(NPC, 35.89, 2.76, -89.09, 2, 0)
	MovementLoopAddLocation(NPC, 38.97, 2.56, -91.5, 2, 0)
end

