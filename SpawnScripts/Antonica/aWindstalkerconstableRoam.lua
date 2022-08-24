--[[
    Script Name    : SpawnScripts/Antonica/aWindstalkerconstableRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.08.23 07:08:10
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
	MovementLoopAddLocation(NPC, -1854.32, -38.25, -525.05, 2, 0)
	MovementLoopAddLocation(NPC, -1845.68, -38.36, -521.85, 2, 0)
	MovementLoopAddLocation(NPC, -1833.86, -38.03, -520.23, 2, 0)
	MovementLoopAddLocation(NPC, -1820.47, -37.61, -514.41, 2, 0)
	MovementLoopAddLocation(NPC, -1806.85, -37.04, -511.34, 2, 0)
	MovementLoopAddLocation(NPC, -1795.3, -36.66, -510.21, 2, 0)
	MovementLoopAddLocation(NPC, -1791.94, -36.35, -509.72, 2, 0)
	MovementLoopAddLocation(NPC, -1780.07, -34.85, -502.85, 2, 0)
	MovementLoopAddLocation(NPC, -1760.47, -32.35, -496.22, 2, 0)
	MovementLoopAddLocation(NPC, -1735.25, -29.5, -503.74, 2, 0)
	MovementLoopAddLocation(NPC, -1717.08, -28.36, -497.34, 2, 0)
	MovementLoopAddLocation(NPC, -1733, -29.29, -502.42, 2, 0)
	MovementLoopAddLocation(NPC, -1755.39, -31.79, -495.51, 2, 0)
	MovementLoopAddLocation(NPC, -1763.28, -32.75, -495.82, 2, 0)
	MovementLoopAddLocation(NPC, -1776.44, -34.27, -501.63, 2, 0)
	MovementLoopAddLocation(NPC, -1788.33, -35.96, -508.02, 2, 0)
	MovementLoopAddLocation(NPC, -1806.63, -37.09, -510.26, 2, 0)
	MovementLoopAddLocation(NPC, -1822.86, -37.62, -514.76, 2, 0)
	MovementLoopAddLocation(NPC, -1834.87, -38.08, -522.56, 2, 0)
	MovementLoopAddLocation(NPC, -1843.69, -38.34, -524.12, 2, 0)
	MovementLoopAddLocation(NPC, -1856.71, -38.48, -528.58, 2, 0)
	MovementLoopAddLocation(NPC, -1861.32, -38.48, -536.73, 2, 0)
end

