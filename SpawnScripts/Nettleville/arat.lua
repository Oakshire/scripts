--[[
    Script Name    : SpawnScripts/Nettleville/arat.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 12:06:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,18000,"MoveLocation")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function MoveLocation(NPC)
if GetSpawnLocationID(NPC)== 133773399 then
    MoveToLocation(NPC, 679.24, -20.43, 327.12, 2)
    MoveToLocation(NPC, 679.24, -20.43, 327.12, 2)
    MoveToLocation(NPC, 685.83, -20.42, 331.36, 2)
    MoveToLocation(NPC, 685.83, -20.42, 331.36, 2)
    MoveToLocation(NPC, 702.20, -24.03, 327.57, 2)
    MoveToLocation(NPC, 702.20, -24.03, 327.57, 2)
    MoveToLocation(NPC, 706.94, -27.21, 338.35, 2)
    MoveToLocation(NPC, 706.94, -27.21, 338.35, 2)
    MoveToLocation(NPC, 695.17, -30.47, 341.87, 2)
    MoveToLocation(NPC, 695.17, -30.47, 341.87, 2)
    MoveToLocation(NPC,689.71, -30.44, 345.11, 2)
    MoveToLocation(NPC,689.71, -30.44, 345.11, 2)
    MoveToLocation(NPC,690.21, -30.46, 344.63, 2)
    MoveToLocation(NPC,690.21, -30.46, 344.63, 2)
elseif    
     GetSpawnLocationID(NPC)== 133773400 then
    MoveToLocation(NPC, 594.29, -20.42, 299.85, 2)
    MoveToLocation(NPC, 594.29, -20.42, 299.85, 2)
    MoveToLocation(NPC, 594.98, -20.38, 293.39, 2)
    MoveToLocation(NPC, 594.98, -20.38, 293.39, 2)
    MoveToLocation(NPC, 606.36, -19.96, 284.26, 2)
    MoveToLocation(NPC, 606.36, -19.96, 284.26, 2)
    MoveToLocation(NPC, 621.03, -20.29, 280.61, 2)
    MoveToLocation(NPC, 621.03, -20.29, 280.61, 2)
    MoveToLocation(NPC, 628.44, -20.37, 282.29, 2)
    MoveToLocation(NPC, 628.44, -20.37, 282.29, 2)
    end
end