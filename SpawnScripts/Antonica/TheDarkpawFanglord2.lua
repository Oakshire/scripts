--[[
    Script Name    : SpawnScripts/Antonica/TheDarkpawFanglord2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.01 06:09:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -1662.09, -13.61, 750.33, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1656.4, -11.61, 737.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1641.06, -2.8, 691.4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1669.29, -5.06, 677.39, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1674.66, -9.62, 701.8, 2, 0)
	MovementLoopAddLocation(NPC, -1679.65, -10.44, 705.44, 2, 0)
	MovementLoopAddLocation(NPC, -1676.37, -9.93, 712.28, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1670.61, -8.93, 711.8, 2, 0)
	MovementLoopAddLocation(NPC, -1669.79, -9.63, 716.74, 2, 0)
	MovementLoopAddLocation(NPC, -1656.51, -12.86, 744.62, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1640.19, -10.44, 740.87, 2, 0)
	MovementLoopAddLocation(NPC, -1632.37, -8.36, 736.17, 2, 0)
	MovementLoopAddLocation(NPC, -1626.6, -9.01, 738.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1632.64, -8.39, 736.25, 2, 0)
	MovementLoopAddLocation(NPC, -1655.8, -14.29, 752.17, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1663.54, -11.35, 735.18, 2, 0)
	MovementLoopAddLocation(NPC, -1665.95, -11.16, 732.54, 2, 0)
	MovementLoopAddLocation(NPC, -1667.63, -10.74, 726.46, 2, 0)
	MovementLoopAddLocation(NPC, -1669.06, -10.49, 723.57, 2, math.random(5,10))
	
	
end

