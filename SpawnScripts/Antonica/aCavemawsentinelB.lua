--[[
    Script Name    : SpawnScripts/Antonica/aCavemawsentinelB.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.19 06:07:35
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
	MovementLoopAddLocation(NPC, -962.81, -23.02, -139.89, 2, 5)
	MovementLoopAddLocation(NPC, -978.23, -22.54, -138.42, 2, 0)
	MovementLoopAddLocation(NPC, -984.83, -21.14, -143.6, 2, 0)
	MovementLoopAddLocation(NPC, -988.16, -18.49, -150.7, 2, 0)
	MovementLoopAddLocation(NPC, -992.57, -15.01, -157.11, 2, 0)
	MovementLoopAddLocation(NPC, -994.03, -12.79, -166.32, 2, 0)
	MovementLoopAddLocation(NPC, -996.99, -12.14, -172.16, 2, 0)
	MovementLoopAddLocation(NPC, -999.78, -11.9, -177.5, 2, 0)
	MovementLoopAddLocation(NPC, -996.81, -11.92, -183.37, 2, 0)
	MovementLoopAddLocation(NPC, -992.79, -12.01, -185.67, 2, 0)
	MovementLoopAddLocation(NPC, -988.35, -12.15, -186.41, 2, 0)
	MovementLoopAddLocation(NPC, -978.19, -12.55, -183.07, 2, 0)
	MovementLoopAddLocation(NPC, -954.43, -13.06, -173.81, 2, 0)
	MovementLoopAddLocation(NPC, -944.99, -12.4, -174.54, 2, 0)
	MovementLoopAddLocation(NPC, -933.26, -10.59, -176.33, 2, 0)
	MovementLoopAddLocation(NPC, -923.13, -8.82, -183.57, 2, 0)
	MovementLoopAddLocation(NPC, -912.04, -7.16, -187.96, 2, 0)
	MovementLoopAddLocation(NPC, -899.22, -6.3, -189.61, 2, 0)
	MovementLoopAddLocation(NPC, -890.66, -5.87, -190.51, 2, 0)
	MovementLoopAddLocation(NPC, -881.45, -6.04, -185.12, 2, 0)
	MovementLoopAddLocation(NPC, -890.65, -6.01, -188.96, 2, 0)
	MovementLoopAddLocation(NPC, -902.75, -6.38, -189.62, 2, 0)
	MovementLoopAddLocation(NPC, -911.51, -7.13, -187.78, 2, 0)
	MovementLoopAddLocation(NPC, -921.11, -8.61, -183.46, 2, 0)
	MovementLoopAddLocation(NPC, -931.72, -10.43, -177.55, 2, 0)
	MovementLoopAddLocation(NPC, -941.35, -11.77, -174.86, 2, 0)
	MovementLoopAddLocation(NPC, -953.31, -12.92, -174.2, 2, 0)
	MovementLoopAddLocation(NPC, -977.05, -12.69, -183.92, 2, 0)
	MovementLoopAddLocation(NPC, -986.59, -12.22, -186.58, 2, 0)
	MovementLoopAddLocation(NPC, -993.69, -11.98, -185.57, 2, 0)
	MovementLoopAddLocation(NPC, -998, -11.92, -180.23, 2, 0)
	MovementLoopAddLocation(NPC, -997.67, -12.02, -174.89, 2, 0)
	MovementLoopAddLocation(NPC, -994.48, -12.44, -168.47, 2, 0)
	MovementLoopAddLocation(NPC, -993.67, -13.18, -162.88, 2, 0)
	MovementLoopAddLocation(NPC, -992.22, -15.72, -155.37, 2, 0)
	MovementLoopAddLocation(NPC, -987.46, -19.82, -147.35, 2, 0)
	MovementLoopAddLocation(NPC, -981.1, -22.14, -139.91, 2, 0)
	MovementLoopAddLocation(NPC, -974.79, -22.94, -139.27, 2, 0)
	MovementLoopAddLocation(NPC, -962.81, -23.02, -139.89, 2, 0)
end

