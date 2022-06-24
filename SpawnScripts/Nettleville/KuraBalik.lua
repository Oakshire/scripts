--[[
    Script Name    : SpawnScripts/Nettleville/KuraBalik.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.22 07:06:22
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/UnknownLanguage.lua")
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,13)then
    FaceTarget(NPC, Spawn)    
    Garbled(NPC,Spawn)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
    else
	FaceTarget(NPC, Spawn)        
    GenericEcologyHail(NPC, Spawn, faction)
    end
end

function InRange(NPC, Spawn) 
        if not HasLanguage(Spawn,13)then
        if math.random(1, 100) <= 15 then            
            FaceTarget(NPC, Spawn)    
          Garbled(NPC,Spawn)
        end
        else
    GenericEcologyCallout(NPC, Spawn, faction)                  
    end
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 671.99, -24.3, 346.58, 2, 1)
	MovementLoopAddLocation(NPC, 671.99, -24.3, 346.58, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 670.16, -24.67, 349.38, 2, 0)
	MovementLoopAddLocation(NPC, 665.95, -24.84, 354.58, 2, 0)
	MovementLoopAddLocation(NPC, 661.85, -24.84, 353.91, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 657.08, -24.93, 350.33, 2, 0)
	MovementLoopAddLocation(NPC, 654.83, -24.93, 352.29, 2, 0)
	MovementLoopAddLocation(NPC, 654.83, -24.93, 352.29, 2, 1)
	MovementLoopAddLocation(NPC, 654.83, -24.93, 352.29, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 653.77, -24.93, 352.70, 2, 0)
	MovementLoopAddLocation(NPC, 654.8, -24.93, 351.19, 2, 0)
	MovementLoopAddLocation(NPC, 650.96, -24.93, 341.78, 2, 1)
	MovementLoopAddLocation(NPC, 650.96, -24.93, 341.78, 2, 1)
	MovementLoopAddLocation(NPC, 650.96, -24.93, 341.78, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 653.9, -24.93, 344.1, 2, 0)
	MovementLoopAddLocation(NPC, 656.14, -24.93, 346.42, 2, 0)
	MovementLoopAddLocation(NPC, 657.1, -24.93, 350.36, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 662.05, -24.84, 354.16, 2, 0)
	MovementLoopAddLocation(NPC, 667.65, -24.77, 349.94, 2, 0)
	MovementLoopAddLocation(NPC, 668.03, -24.16, 344.69, 2, 0)
	MovementLoopAddLocation(NPC, 668.39, -24.01, 344.07, 2, 0)
	MovementLoopAddLocation(NPC, 667.77, -23.63, 342.84, 2, 0)
	MovementLoopAddLocation(NPC, 655.47, -22.31, 333.06, 2, 0)
	MovementLoopAddLocation(NPC, 653.26, -22.31, 331.62, 2, 0)
	MovementLoopAddLocation(NPC, 650.12, -22.32, 333.9, 2, 0)
	MovementLoopAddLocation(NPC, 645.31, -22.32, 339.87, 2, 0)
	MovementLoopAddLocation(NPC, 638.82, -22.32, 348.51, 2, 0)
	MovementLoopAddLocation(NPC, 637.75, -22.38, 353.72, 2, 0)
	MovementLoopAddLocation(NPC, 629.34, -21.47, 355.77, 2, 1)
	MovementLoopAddLocation(NPC, 629.34, -21.47, 355.77, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 631.84, -22.36, 356.16, 2, 0)
	MovementLoopAddLocation(NPC, 635.17, -22.32, 349.2, 2, 0)
	MovementLoopAddLocation(NPC, 639.89, -22.32, 341.15, 2, 0)
	MovementLoopAddLocation(NPC, 644.23, -22.31, 335.26, 2, 0)
	MovementLoopAddLocation(NPC, 652.91, -22.3, 328.76, 2, 0)
	MovementLoopAddLocation(NPC, 660.78, -22.36, 333.86, 2, 0)
	MovementLoopAddLocation(NPC, 669.02, -23.11, 341.03, 2, 0)
	MovementLoopAddLocation(NPC, 670.6, -23.85, 343.68, 2, 0)
	MovementLoopAddLocation(NPC, 670.87, -24.64, 349.44, 2, 0)
	MovementLoopAddLocation(NPC, 674.54, -24.52, 349.53, 2, 0)
	MovementLoopAddLocation(NPC, 677.59, -20.45, 338.42, 2, 0)
	MovementLoopAddLocation(NPC, 678.2, -20.42, 334.74, 2, 0)
	MovementLoopAddLocation(NPC, 674.62, -20.54, 327.27, 2, 0)
	MovementLoopAddLocation(NPC, 670.57, -20.42, 316.29, 2, 0)
	MovementLoopAddLocation(NPC, 672.31, -20.42, 314.41, 2, 1)
	MovementLoopAddLocation(NPC, 672.31, -20.42, 314.41, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 673.51, -20.42, 313.19, 2, 0)
	MovementLoopAddLocation(NPC, 671.05, -20.42, 315.76, 2, 0)
	MovementLoopAddLocation(NPC, 677.74, -20.43, 333.36, 2, 0)
	MovementLoopAddLocation(NPC, 678.37, -20.46, 339.35, 2, 0)
	MovementLoopAddLocation(NPC, 677.2, -23.24, 346.14, 2, 0)
	MovementLoopAddLocation(NPC, 675.09, -24.57, 350.56, 2, 0)
	MovementLoopAddLocation(NPC, 671.84, -24.51, 348.22, 2, 0)
	MovementLoopAddLocation(NPC, 673.21, -23.95, 344.4, 2, 0)
end

function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2330091)
    UseWidget(door)
end
