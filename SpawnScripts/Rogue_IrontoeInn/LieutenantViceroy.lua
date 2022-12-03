--[[
    Script Name    : SpawnScripts/Rogue_IrontoeInn/LieutenantViceroy.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.03 05:12:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 0.15, 6.23, 2, 2, 0)
	MovementLoopAddLocation(NPC, 1.82, 6.23, 0.64, 2, 6)
	MovementLoopAddLocation(NPC, 1.82, 6.23, 0.64, 2, 0)
	MovementLoopAddLocation(NPC, -2.23, 6.23, 4.58, 2, 0)
	MovementLoopAddLocation(NPC, -3.57, 6.23, 6.67, 2, 8,"Face")
	MovementLoopAddLocation(NPC, -3.76, 6.23, 6.45, 2, 0)
	MovementLoopAddLocation(NPC, -0.05, 6.23, 2.09, 2, 0)
end

function Face(NPC)
    SetHeading(NPC,50)
end