--[[
    Script Name    : SpawnScripts/Nettleville/Valerie.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 06:06:41
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	CheckFaction(NPC, Spawn, "Qeynos")
    if GetFactionAmount(Spawn,11)>0 then
    if math.random(1,100)<25 then
	GenericGuardHail(NPC, Spawn)
    end        
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 608.58, -20.61, 352.69, 2, 35)
	MovementLoopAddLocation(NPC, 606.93, -20.63, 353.22, 2, 0)
	MovementLoopAddLocation(NPC, 606.93, -20.73, 358.67, 2, 0)
	MovementLoopAddLocation(NPC, 606.78, -21.32, 360.46, 2, 0)
	MovementLoopAddLocation(NPC, 607.08, -23.42, 365.17, 2, 0)
	MovementLoopAddLocation(NPC, 609.71, -25.37, 369.21, 2, 0)
	MovementLoopAddLocation(NPC, 612.12, -26.39, 372.01, 2, 0)
	MovementLoopAddLocation(NPC, 612.72, -26.38, 372.39, 2, 0)
	MovementLoopAddLocation(NPC, 620.14, -25.74, 370.93, 2, 0)
	MovementLoopAddLocation(NPC, 624.68, -25.08, 369.15, 2, 0)
	MovementLoopAddLocation(NPC, 626.66, -24.95, 368.37, 2, 0)
	MovementLoopAddLocation(NPC, 633.57, -22.27, 369.35, 2, 0)
	MovementLoopAddLocation(NPC, 634.27, -22.3, 369.41, 2, 0)
	MovementLoopAddLocation(NPC, 634.6, -22.43, 367.03, 2, 0)
	MovementLoopAddLocation(NPC, 633.58, -22.43, 365.13, 2, 0)
	MovementLoopAddLocation(NPC, 632.41, -22.36, 356.07, 2, 0)
	MovementLoopAddLocation(NPC, 630.82, -22.32, 349.82, 2, 40)
	MovementLoopAddLocation(NPC, 631.72, -22.33, 351.41, 2, 0)
	MovementLoopAddLocation(NPC, 636.4, -22.32, 345.33, 2, 0)
	MovementLoopAddLocation(NPC, 639.81, -22.32, 340.77, 2, 0)
	MovementLoopAddLocation(NPC, 650.69, -22.28, 326.48, 2, 25)
	MovementLoopAddLocation(NPC, 644.24, -22.31, 334.98, 2, 0)
	MovementLoopAddLocation(NPC, 644.73, -22.32, 340.29, 2, 0)
	MovementLoopAddLocation(NPC, 638.66, -22.33, 349.4, 2, 0)
	MovementLoopAddLocation(NPC, 637.67, -22.34, 350.89, 2, 0)
	MovementLoopAddLocation(NPC, 636.68, -22.38, 358.22, 2, 0)
	MovementLoopAddLocation(NPC, 635.9, -22.32, 367.95, 2, 0)
	MovementLoopAddLocation(NPC, 636.09, -22.32, 368.94, 2, 0)
	MovementLoopAddLocation(NPC, 639.46, -23.21, 367.27, 2, 0)
	MovementLoopAddLocation(NPC, 642.71, -24.8, 364.85, 2, 0)
	MovementLoopAddLocation(NPC, 644.49, -24.84, 363.32, 2, 25)
	MovementLoopAddLocation(NPC, 646.71, -24.84, 364.81, 2, 0)
	MovementLoopAddLocation(NPC, 645.77, -24.73, 370.16, 2, 0)
	MovementLoopAddLocation(NPC, 645.17, -24.74, 377.2, 2, 0)
	MovementLoopAddLocation(NPC, 637.82, -24.86, 379.78, 2, 0)
	MovementLoopAddLocation(NPC, 629.84, -25.32, 379.81, 2, 0)
	MovementLoopAddLocation(NPC, 621.63, -25.94, 377.63, 2, 0)
	MovementLoopAddLocation(NPC, 606.35, -26.49, 376.77, 2, 0)
	MovementLoopAddLocation(NPC, 603.8, -26.39, 372.61, 2, 0)
	MovementLoopAddLocation(NPC, 604.68, -20.78, 359.37, 2, 0)
	MovementLoopAddLocation(NPC, 602.54, -20.43, 355.45, 2, 25)
end


