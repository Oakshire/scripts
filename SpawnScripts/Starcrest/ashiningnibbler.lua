--[[
    Script Name    : SpawnScripts/Starcrest/ashiningnibbler.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.01 04:07:20
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
    if GetSpawnLocationID(NPC)==419736 then
	MovementLoopAddLocation(NPC, 716.05, -41.46, 287.16, 2, 0)
	MovementLoopAddLocation(NPC, 722.21, -41.46, 290.16, 2, 2)
	MovementLoopAddLocation(NPC, 726.37, -41.46, 303.99, 2, 0)
	MovementLoopAddLocation(NPC, 728.12, -41.46, 306.92, 2, 0)
	MovementLoopAddLocation(NPC, 722.04, -41.46, 298.78, 2, 0)
	MovementLoopAddLocation(NPC, 720.53, -41.46, 288.79, 2, 0)
    elseif GetSpawnLocationID(NPC)==419753 then
	MovementLoopAddLocation(NPC, 728.99, -41.28, 310.56, 2, 0)
	MovementLoopAddLocation(NPC, 725.95, -41.44, 297.9, 2, 0)
	MovementLoopAddLocation(NPC, 727.94, -41.48, 315.8, 2, 0)
	MovementLoopAddLocation(NPC, 737.14, -42.32, 330.59, 2, 0)
	MovementLoopAddLocation(NPC, 737.34, -40.95, 341.25, 2, 2)
	MovementLoopAddLocation(NPC, 735.04, -41.49, 339.11, 2, 0)
	MovementLoopAddLocation(NPC, 734.26, -41.76, 318.82, 2, 0)
	MovementLoopAddLocation(NPC, 727.83, -40.59, 303.85, 2, 0)
	MovementLoopAddLocation(NPC, 724.24, -42.13, 295.5, 2, 0)
    elseif GetSpawnLocationID(NPC)==419776 then
	MovementLoopAddLocation(NPC, 741.03, -41.72, 357.53, 2, 0)
	MovementLoopAddLocation(NPC, 729.65, -40.81, 326.97, 2, 0)
	MovementLoopAddLocation(NPC, 730.18, -42.33, 320.47, 2, 0)
	MovementLoopAddLocation(NPC, 738.52, -41.51, 340.68, 2, 0)
	MovementLoopAddLocation(NPC, 743.85, -40.64, 359.42, 2, 2)
	MovementLoopAddLocation(NPC, 738.72, -40.65, 345.46, 2, 0)
	MovementLoopAddLocation(NPC, 738.83, -41.85, 340.21, 2, 0)
	MovementLoopAddLocation(NPC, 738.79, -42.06, 354.92, 2, 0)
	MovementLoopAddLocation(NPC, 745.49, -41.29, 363.08, 2, 0)
	MovementLoopAddLocation(NPC, 733.78, -40.56, 338.73, 2, 0)
end
end

