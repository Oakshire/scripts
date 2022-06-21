--[[
    Script Name    : SpawnScripts/Nettleville/Scrably.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 01:06:39
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
	MovementLoopAddLocation(NPC, 655.97, -20.34, 275, 1, 2)
	MovementLoopAddLocation(NPC, 655.97, -20.34, 275, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 659.88, -20.35, 280.41, 1, 0)
	MovementLoopAddLocation(NPC, 663, -20.12, 288.99, 1, 0)
	MovementLoopAddLocation(NPC, 661.02, -20.22, 291.91, 1, 2)
	MovementLoopAddLocation(NPC, 661.02, -20.22, 291.91, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 661.06, -20.32, 294.6, 1, 0)
	MovementLoopAddLocation(NPC, 660.11, -20.43, 308.92, 1, 0)
	MovementLoopAddLocation(NPC, 662.44, -20.46, 315.29, 1, 0)
	MovementLoopAddLocation(NPC, 664.94, -20.44, 317.96, 1, 0)
	MovementLoopAddLocation(NPC, 668, -20.43, 318.55, 1, 0)
	MovementLoopAddLocation(NPC, 673.61, -20.43, 318.87, 1, 0)
	MovementLoopAddLocation(NPC, 677.71, -20.31, 318.36, 1, 0)
	MovementLoopAddLocation(NPC, 680.58, -20.26, 316.52, 1, 0)
	MovementLoopAddLocation(NPC, 679.22, -20.24, 311.99, 1, 1)
	MovementLoopAddLocation(NPC, 679.22, -20.24, 311.99, 1, 1)
	MovementLoopAddLocation(NPC, 679.22, -20.24, 311.99, 1, 2)
	MovementLoopAddLocation(NPC, 679.22, -20.24, 311.99, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 676.74, -20.38, 309.91, 1, 0)
	MovementLoopAddLocation(NPC, 675.48, -20.25, 306.54, 1, 0)
	MovementLoopAddLocation(NPC, 675.83, -20.25, 301.27, 1, 0)
	MovementLoopAddLocation(NPC, 672.49, -19.93, 291.35, 1, 0)
	MovementLoopAddLocation(NPC, 659, -20.33, 281.43, 1, 0)
	MovementLoopAddLocation(NPC, 656.52, -20.34, 274.4, 1, 0)
	MovementLoopAddLocation(NPC, 652.63, -20.31, 273.86, 1, 0)
	MovementLoopAddLocation(NPC, 641.44, -20.17, 274.44, 1, 15)
	MovementLoopAddLocation(NPC, 630.81, -20.23, 277.46, 1, 0)
	MovementLoopAddLocation(NPC, 630.79, -20.34, 278.48, 6, 1)
	MovementLoopAddLocation(NPC, 630.79, -20.34, 278.48, 1, 1,"AttackRat")
	MovementLoopAddLocation(NPC, 630.79, -20.34, 278.48, 1, 1,"Rat")
	MovementLoopAddLocation(NPC, 630.79, -20.34, 278.48, 1, 1)
	MovementLoopAddLocation(NPC, 632.51, -20.37, 286.38, 6, 0)
	MovementLoopAddLocation(NPC, 634.08, -20.41, 291.28, 6, 0)
	MovementLoopAddLocation(NPC, 636.51, -20.67, 303.06, 6, 0)
	MovementLoopAddLocation(NPC, 625.45, -20.56, 309.72, 6, 0)
	MovementLoopAddLocation(NPC, 618.02, -20.49, 315.42, 6, 0)
	MovementLoopAddLocation(NPC, 606.96, -20.62, 331.81, 6, 0)
	MovementLoopAddLocation(NPC, 603.96, -20.81, 342.72, 6, 0)
	MovementLoopAddLocation(NPC, 602.86, -20.8, 344.14, 6, 0)
	MovementLoopAddLocation(NPC, 598.72, -20.54, 347.16, 6, 0)
	MovementLoopAddLocation(NPC, 589.45, -20.27, 345.05, 6, 0)
	MovementLoopAddLocation(NPC, 587.24, -20.26, 345.44, 6, 1)
	MovementLoopAddLocation(NPC, 587.24, -20.26, 345.44, 6, 2,"AttackRat")
	MovementLoopAddLocation(NPC, 587.24, -20.26, 345.44, 1, 2,"DespawnRat")
	MovementLoopAddLocation(NPC, 585.81, -20.2, 347.21, 1, 15)
	MovementLoopAddLocation(NPC, 587.01, -20.25, 346.04, 1, 0)
	MovementLoopAddLocation(NPC, 596.06, -20.27, 346.87, 1, 0)
	MovementLoopAddLocation(NPC, 601.8, -20.74, 347.22, 1, 0)
	MovementLoopAddLocation(NPC, 613.59, -20.64, 325.33, 1, 0)
	MovementLoopAddLocation(NPC, 625.27, -20.41, 313.72, 1, 0)
	MovementLoopAddLocation(NPC, 636.57, -20.67, 302.92, 1, 0)
	MovementLoopAddLocation(NPC, 661.58, -20.21, 291.62, 1, 2)
	MovementLoopAddLocation(NPC, 661.58, -20.21, 291.62, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 664.54, -20.05, 291.26, 1, 0)
	MovementLoopAddLocation(NPC, 665.01, -20.03, 293.01, 1, 0)
	MovementLoopAddLocation(NPC, 675.26, -20.25, 305.05, 1, 0)
	MovementLoopAddLocation(NPC, 675.57, -20.35, 308.36, 1, 2)
	MovementLoopAddLocation(NPC, 675.57, -20.35, 308.36, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 672.45, -20.41, 310.59, 1, 0)
	MovementLoopAddLocation(NPC, 671.2, -20.42, 311.45, 1, 0)
	MovementLoopAddLocation(NPC, 672.17, -20.42, 315.84, 1, 0)
	MovementLoopAddLocation(NPC, 673.42, -20.42, 316.4, 1, 0)
	MovementLoopAddLocation(NPC, 675.13, -20.42, 316.9, 1, 0)
	MovementLoopAddLocation(NPC, 678.75, -20.29, 319.64, 1, 2)
	MovementLoopAddLocation(NPC, 678.75, -20.29, 319.64, 1, 25)
	MovementLoopAddLocation(NPC, 678.86, -20.33, 321.02, 1, 0)
	MovementLoopAddLocation(NPC, 678.46, -20.38, 321.64, 1, 0)
	MovementLoopAddLocation(NPC, 677.44, -20.43, 321.54, 1, 0)
	MovementLoopAddLocation(NPC, 675.86, -20.41, 318.55, 1, 0)
	MovementLoopAddLocation(NPC, 676.56, -20.39, 309.96, 1, 2)
	MovementLoopAddLocation(NPC, 676.56, -20.39, 309.96, 1, 25,"Sleep")
	MovementLoopAddLocation(NPC, 675.6, -20.26, 306.59, 1, 0)
	MovementLoopAddLocation(NPC, 676.31, -20.25, 302.45, 1, 0)
	MovementLoopAddLocation(NPC, 672.31, -20.08, 296.39, 1, 0)
	MovementLoopAddLocation(NPC, 665.67, -20.12, 296.66, 1, 0)
	MovementLoopAddLocation(NPC, 652.03, -20.4, 300.45, 1, 0)
	MovementLoopAddLocation(NPC, 645.17, -20.25, 304.89, 1, 0)
	MovementLoopAddLocation(NPC, 642.51, -20.29, 306.4, 1, 15)
	MovementLoopAddLocation(NPC, 635.93, -20.48, 298.19, 1, 0)
	MovementLoopAddLocation(NPC, 633.21, -20.41, 291.29, 1, 0)
	MovementLoopAddLocation(NPC, 630.32, -20.41, 286.19, 1, 15)
	MovementLoopAddLocation(NPC, 631.48, -20.4, 280.11, 1, 0)
	MovementLoopAddLocation(NPC, 636.7, -20.29, 275.74, 1, 0)
	MovementLoopAddLocation(NPC, 646.95, -20.29, 275.27, 1, 0)
	MovementLoopAddLocation(NPC, 656.29, -20.02, 270.19, 1, 0)
	MovementLoopAddLocation(NPC, 657.25, -20.17, 270.53, 1, 15)
end


function AttackRat(NPC,Spawn)
    AttackTimer = true    
    PlayFlavor(NPC,"","","attack",0,0)
    AddTimer(NPC,30000,"AttackTimerReset")
    end

function Rat(NPC,Spawn)
    local rat = GetSpawn(NPC,2330139)
    if rat ~=nil then
    SetTarget(NPC,rat)
    PlayFlavor(rat,"","","attack",0,0)
	MovementLoopAddLocation(rat, 632.51, -20.37, 286.38, 6, 0)
	MovementLoopAddLocation(rat, 634.08, -20.41, 291.28, 6, 0)
	MovementLoopAddLocation(rat, 636.51, -20.67, 303.06, 6, 0)
	MovementLoopAddLocation(rat, 625.45, -20.56, 309.72, 6, 0)
	MovementLoopAddLocation(rat, 618.02, -20.49, 315.42, 6, 0)
	MovementLoopAddLocation(rat, 606.96, -20.62, 331.81, 6, 0)
	MovementLoopAddLocation(rat, 603.96, -20.81, 342.72, 6, 0)
	MovementLoopAddLocation(rat, 602.86, -20.8, 344.14, 6, 0)
	MovementLoopAddLocation(rat, 598.72, -20.54, 347.16, 6, 0)
	MovementLoopAddLocation(rat, 589.45, -20.27, 345.05, 6, 0)
	MovementLoopAddLocation(rat, 587.24, -20.26, 345.44, 6, 30)
end
end

function DespawnRat(NPC,Spawn)
    local rat = GetSpawn(NPC,2330139)
    if rat ~=nil then
    KillSpawn(rat,NPC)
end
end
