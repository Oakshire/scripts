--[[
    Script Name    : SpawnScripts/Commonlands/arunnerofRee.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.24 10:04:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, -577.10, -138.47, -875.62, 5, 0)    
	MovementLoopAddLocation(NPC, -450.69, -89.14, -923.41, 5, 0)
	MovementLoopAddLocation(NPC, -371.14, -52.13, -882.24, 5, 0)
	MovementLoopAddLocation(NPC, -313.31, -47.33, -993.12, 5, 0)
	MovementLoopAddLocation(NPC, -253.16, -47.69, -969.80, 5, 0)
	MovementLoopAddLocation(NPC, -219.42, -45.70, -862.45, 5, 0)
	MovementLoopAddLocation(NPC,  53.50, -39.22, -852.74, 5, 0)
	MovementLoopAddLocation(NPC, 94.47, -47.75, -784.69, 5, 0)
	MovementLoopAddLocation(NPC, 74.64, -47.73, -749.16, 5, 0)
	MovementLoopAddLocation(NPC, 94.47, -47.75, -784.69, 5, 0)
	MovementLoopAddLocation(NPC,  53.50, -39.22, -852.74, 5, 0)
	MovementLoopAddLocation(NPC, -219.42, -45.70, -862.45, 5, 0)
	MovementLoopAddLocation(NPC, -253.16, -47.69, -969.80, 5, 0)
	MovementLoopAddLocation(NPC, -313.31, -47.33, -993.12, 5, 0)
	MovementLoopAddLocation(NPC, -371.14, -52.13, -882.24, 5, 0)
	MovementLoopAddLocation(NPC, -450.69, -89.14, -923.41, 5, 0)
	MovementLoopAddLocation(NPC, -577.10, -138.47, -875.62, 5, 0)  
	MovementLoopAddLocation(NPC, -597.59, -145.61, -880.11, 5, 0)
end



    
function respawn(NPC)
	spawn(NPC)
end