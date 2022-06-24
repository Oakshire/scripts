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

function FaceStreet1(NPC)
	SpawnSet(NPC, "heading", "163")
end	

function FaceStreet2(NPC)
	SpawnSet(NPC, "heading", "116")
end	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 608.57, -20.62, 352.9, 2, 1,"FaceStreet2")
	MovementLoopAddLocation(NPC, 608.57, -20.62, 352.9, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 608.25, -20.63, 353.2, 2, 0)
	MovementLoopAddLocation(NPC, 606.78, -21.17, 360.09, 2, 0)
	MovementLoopAddLocation(NPC, 607.06, -22.18, 362.3, 2, 0)
	MovementLoopAddLocation(NPC, 608.25, -24.23, 366.77, 2, 0)
	MovementLoopAddLocation(NPC, 612.28, -26.38, 371.89, 2, 0)
	MovementLoopAddLocation(NPC, 613.61, -26.35, 372.59, 2, 0)
	MovementLoopAddLocation(NPC, 624.31, -25.13, 369.21, 2, 0)
	MovementLoopAddLocation(NPC, 626.56, -24.95, 368.43, 2, 0)
	MovementLoopAddLocation(NPC, 633.77, -22.28, 369.31, 2, 0)
	MovementLoopAddLocation(NPC, 635.62, -22.34, 369.35, 2, 0)
	MovementLoopAddLocation(NPC, 635.62, -22.34, 369.35, 2, 0)
	MovementLoopAddLocation(NPC, 635.97, -22.28, 371.34, 2, 1)
	MovementLoopAddLocation(NPC, 635.97, -22.28, 371.34, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 636.15, -22.27, 372.36, 2, 0)
	MovementLoopAddLocation(NPC, 634.32, -22.33, 367.52, 2, 0)
	MovementLoopAddLocation(NPC, 633.08, -22.49, 364.66, 2, 0)
	MovementLoopAddLocation(NPC, 632.49, -22.42, 359.82, 2, 0)
	MovementLoopAddLocation(NPC, 632.47, -22.35, 355.37, 2, 0)
	MovementLoopAddLocation(NPC, 630.4, -22.25, 349.16, 2, 1)
	MovementLoopAddLocation(NPC, 630.4, -22.25, 349.16, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 631.76, -22.32, 350.03, 2, 0)
	MovementLoopAddLocation(NPC, 633.94, -22.32, 348.04, 2, 0)
	MovementLoopAddLocation(NPC, 638.98, -22.32, 348.53, 2, 0)
	MovementLoopAddLocation(NPC, 641.84, -22.32, 344.59, 2, 0)
	MovementLoopAddLocation(NPC, 647.28, -22.32, 337.11, 2, 0)
	MovementLoopAddLocation(NPC, 645.68, -22.3, 330.46, 2, 1,"FaceStreet1")
	MovementLoopAddLocation(NPC, 645.68, -22.3, 330.46, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 645.68, -22.3, 330.46, 2, 0)
	MovementLoopAddLocation(NPC, 645.3, -22.31, 334.71, 2, 0)
	MovementLoopAddLocation(NPC, 641.93, -22.32, 338.45, 2, 0)
	MovementLoopAddLocation(NPC, 635.94, -22.32, 346.94, 2, 0)
	MovementLoopAddLocation(NPC, 633.09, -22.35, 354.49, 2, 0)
	MovementLoopAddLocation(NPC, 635.81, -22.32, 367.49, 2, 0)
	MovementLoopAddLocation(NPC, 636.51, -22.29, 369.92, 2, 0)
	MovementLoopAddLocation(NPC, 633.29, -22.35, 370.6, 2, 0)
	MovementLoopAddLocation(NPC, 626.8, -25.01, 370.04, 2, 0)
	MovementLoopAddLocation(NPC, 624.43, -25.28, 371.59, 2, 0)
	MovementLoopAddLocation(NPC, 611.43, -26.42, 373.95, 2, 0)
	MovementLoopAddLocation(NPC, 602.69, -25.81, 371.17, 2, 0)
	MovementLoopAddLocation(NPC, 603.73, -22.57, 363.64, 2, 0)
	MovementLoopAddLocation(NPC, 604.67, -20.77, 358.66, 2, 0)
	MovementLoopAddLocation(NPC, 604.15, -20.67, 356.58, 2, 0)
	MovementLoopAddLocation(NPC, 608.78, -20.6, 352.6, 2, 0)
end



