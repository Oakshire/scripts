--[[
	Script Name		:	theodoric.lua
	Script Purpose	:	Waypoint Path for theodoric.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 07:19:05 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	
end

function InRange(NPC, Spawn) 
    GenericDrunkCallout(NPC, Spawn, faction)    
    end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericDrunkHail(NPC, Spawn, faction)
end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 516.1, -9.57, 128.35, 2, 1)
	MovementLoopAddLocation(NPC, 516.1, -9.57, 128.35, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 516.74, -9.57, 131.87, 2, 1)
	MovementLoopAddLocation(NPC, 516.74, -9.57, 131.87, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 516.74, -9.57, 131.87, 2, 0)
	MovementLoopAddLocation(NPC, 532.62, -9.56, 132.75, 2, 0)
	MovementLoopAddLocation(NPC, 532.46, -9.56, 136.21, 2, 1)
	MovementLoopAddLocation(NPC, 532.46, -9.56, 136.21, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 532.46, -9.56, 136.21, 2, 0)
	MovementLoopAddLocation(NPC, 532.05, -9.56, 132.94, 2, 0)
	MovementLoopAddLocation(NPC, 540.22, -9.56, 133.93, 2, 0)
	MovementLoopAddLocation(NPC, 542.24, -9.56, 136.1, 2, 0)
	MovementLoopAddLocation(NPC, 561.26, -9.56, 133.56, 2, 0)
	MovementLoopAddLocation(NPC, 572.73, -9.43, 136.49, 2, 0)
	MovementLoopAddLocation(NPC, 572.91, -8.47, 131.8, 2, 0)
	MovementLoopAddLocation(NPC, 580.87, -8.48, 130.61, 2, 10)
	MovementLoopAddLocation(NPC, 578.34, -8.48, 127.68, 2, 1)
	MovementLoopAddLocation(NPC, 578.34, -8.48, 127.68, 2, 30,"Drink")
	MovementLoopAddLocation(NPC, 578.34, -8.48, 127.68, 2, 25,"Drink")
MovementLoopAddLocation(NPC, 578.07, -8.48, 126.71, 2, 0)
	MovementLoopAddLocation(NPC, 576.29, -8.47, 127.62, 2, 0)
	MovementLoopAddLocation(NPC, 575.25, -8.47, 131.3, 2, 0)
	MovementLoopAddLocation(NPC, 572.61, -8.47, 131.21, 2, 0)
	MovementLoopAddLocation(NPC, 571.26, -9.43, 127.3, 2, 0)
	MovementLoopAddLocation(NPC, 566.1, -9.56, 130.01, 2, 0)
	MovementLoopAddLocation(NPC, 553.61, -9.56, 134.67, 2, 0)
	MovementLoopAddLocation(NPC, 540.58, -9.56, 134.62, 2, 0)
	MovementLoopAddLocation(NPC, 529.62, -9.56, 133.41, 2, 0)
	MovementLoopAddLocation(NPC, 519.98, -9.56, 132.37, 2, 0)
	end


function Drink(NPC)
    PlayAnimation(NPC,11422)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,3)   
        if choice == 1 then    
        PlayAnimation(NPC,891)
        elseif choice == 2 then    
        PlayAnimation(NPC,11422)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end