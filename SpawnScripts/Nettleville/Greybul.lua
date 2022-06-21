--[[
    Script Name    : SpawnScripts/Nettleville/Greybul.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 06:06:15
    Script Purpose : 
                   : 
--]]

    local AttackTimer = false

    
function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC,3, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
if AttackTimer == false then
    AttackTimer = true    
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0)
    AddTimer(NPC,10000,"AttackTimerReset")
    end
end


function InRange(NPC,Spawn)
if AttackTimer == false then
if math.random(1,100) <=20 then
    AttackTimer = true    
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "attack", 0, 0)
    AddTimer(NPC,25000,"AttackTimerReset")
    end
end
end

function Sleep(NPC)
local choice = math.random(1,2)
if choice == 1 then
    SpawnSet(NPC, "action_state", 540)
    AddTimer(NPC, 22000, "Wake")
    AttackTimer = true
elseif choice ==2 then
end
end

function Wake(NPC)    
    SpawnSet(NPC, "action_state", 0)
AttackTimer = false
end

function AttackTimerReset(NPC,Spawn)
AttackTimer = false
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 686.5, -35.01, 343.35, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 684.08, -35.71, 339.32, 1, 25)
	MovementLoopAddLocation(NPC, 684.32, -34.47, 327.75, 1, 15)
	MovementLoopAddLocation(NPC, 687.05, -34.48, 328.51, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 690.05, -30.47, 342.64, 1, 0)
	MovementLoopAddLocation(NPC, 690.27, -30.45, 343.05, 1, 1)
	MovementLoopAddLocation(NPC, 690.27, -30.45, 343.05, 1, 2,"AttackRat")
	MovementLoopAddLocation(NPC, 690.27, -30.45, 343.05, 1, 1,"Rat")
	MovementLoopAddLocation(NPC, 705.34, -27.26, 339.5, 6, 0)
	MovementLoopAddLocation(NPC, 702.6, -24.09, 329.17, 6, 0)
	MovementLoopAddLocation(NPC, 687.08, -20.42, 333.46, 6, 0)
	MovementLoopAddLocation(NPC, 684.33, -20.42, 335.94, 6, 0)
	MovementLoopAddLocation(NPC, 671.21, -20.52, 328.9, 6, 0)
	MovementLoopAddLocation(NPC, 668.27, -20.46, 330.07, 6, 1)
	MovementLoopAddLocation(NPC, 668.27, -20.46, 330.07, 6, 2,"AttackRat")
	MovementLoopAddLocation(NPC, 668.27, -20.46, 330.07, 6, 2,"DespawnRat")
	MovementLoopAddLocation(NPC, 667.05, -20.46, 331.19, 6, 16)
	MovementLoopAddLocation(NPC, 668.95, -20.47, 328.88, 1, 0)
	MovementLoopAddLocation(NPC, 671.65, -20.52, 329.14, 1, 0)
	MovementLoopAddLocation(NPC, 675.08, -20.52, 336.21, 1, 2)
	MovementLoopAddLocation(NPC, 675.08, -20.52, 336.21, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 678.68, -20.42, 336.2, 1, 0)
	MovementLoopAddLocation(NPC, 685.32, -20.36, 338.68, 1, 25)
	MovementLoopAddLocation(NPC, 687.72, -20.41, 333.58, 1, 0)
	MovementLoopAddLocation(NPC, 693.49, -20.46, 332.06, 1, 0)
	MovementLoopAddLocation(NPC, 702.24, -24.04, 329.74, 1, 0)
	MovementLoopAddLocation(NPC, 703.46, -24.03, 330.43, 1, 0)
	MovementLoopAddLocation(NPC, 707.39, -27.22, 339.06, 1, 0)
	MovementLoopAddLocation(NPC, 706.67, -27.23, 341.76, 1, 2)
	MovementLoopAddLocation(NPC, 706.67, -27.23, 341.76, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 697.47, -30.2, 343.68, 1, 0)
	MovementLoopAddLocation(NPC, 689.13, -30.44, 344.11, 1, 2)
	MovementLoopAddLocation(NPC, 689.13, -30.44, 344.11, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 688.02, -34.48, 331.94, 1, 0)
	MovementLoopAddLocation(NPC, 684.8, -34.47, 327.88, 1, 2)
	MovementLoopAddLocation(NPC, 684.8, -34.47, 327.88, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 684.55, -34.74, 333.41, 1, 0)
	MovementLoopAddLocation(NPC, 683.4, -35.7, 336.4, 1, 2)
	MovementLoopAddLocation(NPC, 683.4, -35.7, 336.4, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 681.85, -35.79, 331.65, 1, 0)


	MovementLoopAddLocation(NPC, 686.5, -35.01, 343.35, 1, 0)
	MovementLoopAddLocation(NPC, 686.5, -35.01, 343.35, 1, 0)
	MovementLoopAddLocation(NPC, 684.08, -35.71, 339.32, 1, 2)
	MovementLoopAddLocation(NPC, 684.08, -35.71, 339.32, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 684.32, -34.47, 327.75, 1, 15)
	MovementLoopAddLocation(NPC, 687.05, -34.48, 328.51, 1, 25)
	MovementLoopAddLocation(NPC, 690.05, -30.47, 342.64, 1, 0)
	MovementLoopAddLocation(NPC, 690.27, -30.45, 343.05, 1, 0)
	MovementLoopAddLocation(NPC, 705.34, -27.26, 339.5, 1, 2)
	MovementLoopAddLocation(NPC, 705.34, -27.26, 339.5, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 702.6, -24.09, 329.17, 1, 0)
	MovementLoopAddLocation(NPC, 687.08, -20.42, 333.46, 1, 0)
	MovementLoopAddLocation(NPC, 684.33, -20.42, 335.94, 1, 0)
	MovementLoopAddLocation(NPC, 671.21, -20.52, 328.9, 1, 0)
	MovementLoopAddLocation(NPC, 680.57, -20.34, 323.36,1, 2)
	MovementLoopAddLocation(NPC, 680.57, -20.34, 323.36,1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 668.95, -20.47, 328.88, 1, 0)
	MovementLoopAddLocation(NPC, 671.65, -20.52, 329.14, 1, 0)
	MovementLoopAddLocation(NPC, 675.08, -20.52, 336.21, 1, 2)
	MovementLoopAddLocation(NPC, 675.08, -20.52, 336.21, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 678.68, -20.42, 336.2, 1, 0)
	MovementLoopAddLocation(NPC, 685.32, -20.36, 338.68, 1, 2)
	MovementLoopAddLocation(NPC, 685.32, -20.36, 338.68, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 687.72, -20.41, 333.58, 1, 0)
	MovementLoopAddLocation(NPC, 693.49, -20.46, 332.06, 1, 0)
	MovementLoopAddLocation(NPC, 702.24, -24.04, 329.74, 1, 0)
	MovementLoopAddLocation(NPC, 703.46, -24.03, 330.43, 1, 0)
	MovementLoopAddLocation(NPC, 707.39, -27.22, 339.06, 1, 0)
	MovementLoopAddLocation(NPC, 706.67, -27.23, 341.76, 1, 2)
	MovementLoopAddLocation(NPC, 706.67, -27.23, 341.76, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 697.47, -30.2, 343.68, 1, 0)
	MovementLoopAddLocation(NPC, 689.13, -30.44, 344.11, 1, 2)
	MovementLoopAddLocation(NPC, 689.13, -30.44, 344.11, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 688.02, -34.48, 331.94, 1, 0)
	MovementLoopAddLocation(NPC, 684.8, -34.47, 327.88, 1, 2)
	MovementLoopAddLocation(NPC, 684.8, -34.47, 327.88, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 684.55, -34.74, 333.41, 1, 0)
	MovementLoopAddLocation(NPC, 683.4, -35.7, 336.4, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 681.85, -35.79, 331.65, 1, 0)
	end

function AttackRat(NPC,Spawn)
    AttackTimer = true    
    PlayFlavor(NPC,"","","attack",0,0)
    AddTimer(NPC,30000,"AttackTimerReset")
    end

function Rat(NPC,Spawn)
    local rat = GetSpawn(NPC,2330138)
    if rat ~=nil then
    SetTarget(NPC,rat)
    PlayFlavor(rat,"","","attack",0,0)
	MovementLoopAddLocation(rat, 705.34, -27.26, 339.5, 6, 0)
	MovementLoopAddLocation(rat, 702.6, -24.09, 329.17, 6, 0)
	MovementLoopAddLocation(rat, 687.08, -20.42, 333.46, 6, 0)
	MovementLoopAddLocation(rat, 684.33, -20.42, 335.94, 6, 0)
	MovementLoopAddLocation(rat, 671.21, -20.52, 328.9, 6, 0)
	MovementLoopAddLocation(rat, 668.27, -20.46, 330.07, 6, 4)
	MovementLoopAddLocation(rat, 667.57, -20.46, 330.85, 6, 15)
end
end

function DespawnRat(NPC,Spawn)
local rat = GetSpawn(NPC,2330138)

    if rat ~=nil then
    KillSpawn(rat,NPC)
end
end