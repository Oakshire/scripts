--[[
    Script Name    : SpawnScripts/Nettleville/Evanloono.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 04:06:27
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 602.23, -26.52, 380.83, 2, 55)
	MovementLoopAddLocation(NPC, 601.82, -26.53, 381.32, 2, 0)
	MovementLoopAddLocation(NPC, 601.41, -26.49, 378.92, 2, 0)
	MovementLoopAddLocation(NPC, 601.51, -26.4, 374.62, 2, 0)
	MovementLoopAddLocation(NPC, 602.59, -24.46, 368.14, 2, 0)
	MovementLoopAddLocation(NPC, 604.38, -20.73, 358.84, 2, 0)
	MovementLoopAddLocation(NPC, 603.09, -20.42, 352.75, 2, 0)
	MovementLoopAddLocation(NPC, 600.16, -20.41, 349.25, 2, 0)
	MovementLoopAddLocation(NPC, 591.96, -20.25, 347.09, 2, 0)
	MovementLoopAddLocation(NPC, 590.97, -19.18, 349.64, 2, 0)
	MovementLoopAddLocation(NPC, 590.66, -19.25, 350.63, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 589.58, -19.17, 354.4, 2, 0)
	MovementLoopAddLocation(NPC, 590.31, -19.17, 358.04, 2, 0)
	MovementLoopAddLocation(NPC, 589.88, -19.17, 366.33, 2, 55)
	MovementLoopAddLocation(NPC, 591.07, -19.17, 365.35, 2, 0)
	MovementLoopAddLocation(NPC, 589.61, -19.17, 359.22, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 590.69, -19.18, 349.88, 2, 0)
	MovementLoopAddLocation(NPC, 592.05, -20.27, 346.92, 2, 0)
	MovementLoopAddLocation(NPC, 601.16, -20.56, 348.79, 2, 0)
	MovementLoopAddLocation(NPC, 604.47, -20.8, 343.07, 2, 0)
	MovementLoopAddLocation(NPC, 607.35, -20.77, 337.34, 2, 0)
	MovementLoopAddLocation(NPC, 610.98, -20.56, 330.61, 2, 0)
	MovementLoopAddLocation(NPC, 620.03, -20.52, 319.09, 2, 0)
	MovementLoopAddLocation(NPC, 630.47, -20.57, 309.61, 2, 0)
	MovementLoopAddLocation(NPC, 644.58, -20.42, 302.85, 2, 0)
	MovementLoopAddLocation(NPC, 659.34, -20.42, 296.01, 2, 0)
	MovementLoopAddLocation(NPC, 672.07, -20.05, 286.17, 2, 55)
	MovementLoopAddLocation(NPC, 671.05, -19.98, 287.93, 2, 0)
	MovementLoopAddLocation(NPC, 672.06, -20.02, 295.27, 2, 0)
	MovementLoopAddLocation(NPC, 669.52, -20.25, 305.63, 2, 0)
	MovementLoopAddLocation(NPC, 670.47, -20.42, 314.56, 2, 0)
	MovementLoopAddLocation(NPC, 673.07, -20.43, 321.01, 2, 0)
	MovementLoopAddLocation(NPC, 674.87, -20.47, 321.75, 2, 55)
	MovementLoopAddLocation(NPC, 675.48, -20.48, 321.37, 2, 0)
	MovementLoopAddLocation(NPC, 673.4, -20.44, 321.61, 2, 0)
	MovementLoopAddLocation(NPC, 671.04, -20.42, 317.23, 2, 0)
	MovementLoopAddLocation(NPC,669.36, -20.25, 308.32, 2, 0)
	MovementLoopAddLocation(NPC, 655.84, -20.42, 298.02, 2, 0)
	MovementLoopAddLocation(NPC, 651.38, -20.41, 298.61, 2, 0)
	MovementLoopAddLocation(NPC, 640.79, -20.5, 304.84, 2, 0)
	MovementLoopAddLocation(NPC, 628.21, -20.44, 311.67, 2, 0)
	MovementLoopAddLocation(NPC, 623.31, -20.49, 316.24, 2, 0)
	MovementLoopAddLocation(NPC, 609.61, -20.59, 334.27, 2, 0)
	MovementLoopAddLocation(NPC, 609.21, -20.71, 339.11, 2, 0)
	MovementLoopAddLocation(NPC, 607.16, -20.58, 350.9, 2, 0)
	MovementLoopAddLocation(NPC, 606.62, -20.76, 357.09, 2, 0)
	MovementLoopAddLocation(NPC, 606.99, -22.46, 363.01, 2, 0)
	MovementLoopAddLocation(NPC, 608.98, -26.29, 371.52, 2, 0)
	MovementLoopAddLocation(NPC, 603.75, -26.5, 378.57, 2, 0)
end


function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2330092)
    UseWidget(door)
end