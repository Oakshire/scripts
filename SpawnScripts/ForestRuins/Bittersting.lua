--[[
    Script Name    : SpawnScripts/ForestRuins/Bittersting.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.26 07:02:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    	MovementLoopAddLocation(NPC, 1072.61, -17.26, -589.26, 2, 5)
    	MovementLoopAddLocation(NPC, 1063.16, -15.27, -589.57, 2, 5)
    	MovementLoopAddLocation(NPC, 1072.61, -17.26, -589.26, 2, 5)
    	MovementLoopAddLocation(NPC, 1054.28, -13.47, -599.50, 5)
    	MovementLoopAddLocation(NPC, 1047.10, -13.47, -594.5, 2, 3)
    	MovementLoopAddLocation(NPC, 1064.33, -13.47, -604.16, 2, 5)
    	MovementLoopAddLocation(NPC, 1029.81, -13.47, -615.57, 2, 3)
    	MovementLoopAddLocation(NPC, 1031.38, -13.47, -607.66, 2, 3)
    	end