--[[
    Script Name    : SpawnScripts/Oakmyst/FerithAnar.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.15 08:01:25
    Script Purpose : Roaming for Ferith'Anar
    Note           : Needs attention for switching between movement loops.
--]]


function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end
 --an attempt at combining all three spawn locations
function waypoints(NPC)
    	if GetSpawnLocationID (NPC) == 422488 then
        waypoints1(NPC)
    elseif GetSpawnLocationID (NPC) == 422489 then
        waypoints2(NPC)
    elseif GetSpawnLocationID (NPC) == 422493 then
        waypoints3(NPC)
    end
end   



-- Movement Loop sequences

function waypoints1 (NPC)
    MovementLoopAddLocation(NPC, 798.83, 12.31, -265.92, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 780.68, 13.35, -256, 2, 0)
	MovementLoopAddLocation(NPC, 767.57, 13.35, -242.98, 2, 0)
	MovementLoopAddLocation(NPC, 780.69, 13.69, -240.02, 2, 0)
	MovementLoopAddLocation(NPC, 785.51, 13.83, -233.94, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 782.41, 12.74, -230.35, 2, 0)
	MovementLoopAddLocation(NPC, 782.96, 7.28, -223.98, 2, 0)
	MovementLoopAddLocation(NPC, 792.07, 7.09, -219.84, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 810.64, 6.16, -222.51, 2, 0)
	MovementLoopAddLocation(NPC, 816.33, 5.79, -208.36, 2, 0)
	MovementLoopAddLocation(NPC, 826.31, 5.59, -204.66, 2, 0)
	MovementLoopAddLocation(NPC, 838.93, 8.16, -217.26, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 852.59, 9.52, -228.04, 2, 0)
	MovementLoopAddLocation(NPC, 834.27, 3.83, -231.05, 2, 0)
	MovementLoopAddLocation(NPC, 845.08, 2.85, -239.5, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 853.92, 2.51, -245.29, 2, 0)
	MovementLoopAddLocation(NPC, 844.65, 3.18, -265.4, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 828.76, 5.19, -266.22, 2, 0)
	MovementLoopAddLocation(NPC, 815.82, 8.04, -279.82, 2, 0)
	MovementLoopAddLocation(NPC, 803.68, 11.49, -271.34, 2, math.random(5, 10), "Pathway1")

    end   


function waypoints2 (NPC)
    MovementLoopAddLocation(NPC, 815.2, 5.5, -216.43, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 797.71, 7.03, -216.74, 2, 0)
	MovementLoopAddLocation(NPC, 786.46, 7.1, -222.21, 2, 0)
	MovementLoopAddLocation(NPC, 792.64, 7.1, -226.55, 2, 0)
	MovementLoopAddLocation(NPC, 805.57, 14.37, -231.79, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 802.54, 14.47, -233.72, 2, 0)
	MovementLoopAddLocation(NPC, 795.06, 18.79, -237.68, 2, 0)
	MovementLoopAddLocation(NPC, 807.97, 13.78, -232.59, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 817.14, 5.22, -224.89, 2, 0)
	MovementLoopAddLocation(NPC, 817.1, 5.72, -210.38, 2, 0)
	MovementLoopAddLocation(NPC, 824.87, 4.83, -197.5, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 831.04, 4.56, -194, 2, 0)
	MovementLoopAddLocation(NPC, 846.98, 8.88, -222.33, 2, 0)
	MovementLoopAddLocation(NPC, 878.25, 12.11, -219.89, 2, 0)
	MovementLoopAddLocation(NPC, 875.55, 11.81, -217.42, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 852.82, 9.55, -228.08, 2, 0)
	MovementLoopAddLocation(NPC, 836.28, 3.64, -232.82, 2, 0)
	MovementLoopAddLocation(NPC, 844.36, 2.79, -240.17, 2, 0)
	MovementLoopAddLocation(NPC, 862.78, 1.72, -244.91, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 858.83, 2.05, -244.82, 2, 0)
	MovementLoopAddLocation(NPC, 841.93, 3.11, -257.88, 2, 0)
	MovementLoopAddLocation(NPC, 836.95, 4.32, -241.68, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 828.29, 12.61, -243.23, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 820.03, 13.53, -237.38, 2, 0)
	MovementLoopAddLocation(NPC, 808.95, 6.35, -221.05, 2, math.random(5, 10),"Pathway2")

    end

function waypoints3 (NPC)
    MovementLoopAddLocation(NPC, 901.38, 1.95, -275.18, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 893.49, 1.12, -266.46, 2, 0)
	MovementLoopAddLocation(NPC, 886.73, 0.63, -255.32, 2, 0)
	MovementLoopAddLocation(NPC, 881.28, 0.24, -247.69, 2, 0)
	MovementLoopAddLocation(NPC, 860.08, 1.95, -244.64, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 854.8, 2.4, -244.8, 2, 0)
	MovementLoopAddLocation(NPC, 852.13, 2.65, -250.7, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 850.71, 2.77, -259.23, 2, 0)
	MovementLoopAddLocation(NPC, 857.74, 11.76, -272.58, 2, 0)
	MovementLoopAddLocation(NPC, 854.23, 12.99, -280.31, 2, 0)
	MovementLoopAddLocation(NPC, 838.11, 13.22, -285.98, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 849.23, 13.48, -289.53, 2, 0)
	MovementLoopAddLocation(NPC, 847.94, 13.31, -297.82, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 858.83, 13.05, -288.69, 2, 0)
	MovementLoopAddLocation(NPC, 879.44, 10.48, -281.42, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 876.51, 11.24, -290.14, 2, 0)
	MovementLoopAddLocation(NPC, 885.3, 10.5, -295.68, 2, math.random(5, 10))
	MovementLoopAddLocation(NPC, 891.65, 8.62, -292.25, 2, 0)
	MovementLoopAddLocation(NPC, 900.08, 2.28, -293.41, 2, 0)
	MovementLoopAddLocation(NPC, 896.93, 1.66, -269.96, 2, "Pathway3")

    end

function respawn(NPC)
	spawn(NPC)
end
   
   
 -- Triggering Loop sequence rotation after initial time through movement waypoints
        -- Does not work currently - Movement loops only repeat first pattern.
        
function Pathway3 (NPC)
    local choice = MakeRandomInt(1, 2)
    
   -- if choice == 1 then
    --waypoints3(NPC)
    
    if choice == 2 then
    MoveToLocation(NPC, 879.66, 0.31, -245.20,2) 
    MoveToLocation(NPC, 867.08, 1.34, -245.34,2) 
    MoveToLocation(NPC, 867.08, 1.34, -245.34,2)  
    waypoints2(NPC)
    else 
    MoveToLocation(NPC, 852.36, 2.65, -244.06,2)
    MoveToLocation(NPC, 823.06, 6.45, -267.52,2)
    MoveToLocation(NPC, 818.50, 7.36, -278.27,2)
    MoveToLocation(NPC, 818.50, 7.36, -278.27,2)
    waypoints1(NPC)
    end
end

function Pathway2 (NPC)
    local choice = MakeRandomInt(1, 2)
    
   -- if choice == 1 then
   -- waypoints2 (NPC)
    
    if choice == 2 then

    MoveToLocation(NPC, 835.77, 3.68, -235.72,2) 
    MoveToLocation(NPC, 839.33, 3.49, -257.94,2) 
    MoveToLocation(NPC, 839.33, 3.49, -257.94,2)
    waypoints1(NPC)
    else   
    MoveToLocation(NPC,856.26, 2.23, -242.68,2)
     MoveToLocation(NPC,883.08, 0.24, -249.14,2)
     MoveToLocation(NPC,883.08, 0.24, -249.14,2)
     waypoints3(NPC)
    end
end

function Pathway1 (NPC)
    local choice = MakeRandomInt(1, 2)
   
   -- if choice == 1 then
   -- waypoints1(NPC)
  
   if choice == 2 then
    MoveToLocation(NPC, 822.16, 6.54, -282.55,2) 
    MoveToLocation(NPC, 844.21, 4.49, -318.7,2) 
    MoveToLocation(NPC, 861.05, 2.11, -322.19,2) 
    MoveToLocation(NPC, 872.81, 1.36, -320.97,0) 
    MoveToLocation(NPC, 898.02, 2.14, -318.28,2)
    MoveToLocation(NPC, 911.11, 2.28, -304.26,2)
    MoveToLocation(NPC, 911.11, 2.28, -304.26,2)
    waypoints3(NPC)
    else 
    MoveToLocation(NPC, 783.2, 13.35, -250.47,2) 
    MoveToLocation(NPC, 794.22, 18.68, -237.53,2)
    MoveToLocation(NPC, 805.6, 14.40, -232.05,2)
    MoveToLocation(NPC, 805.6, 14.40, -232.05,2)    
    waypoints2(NPC)
        end
    end


