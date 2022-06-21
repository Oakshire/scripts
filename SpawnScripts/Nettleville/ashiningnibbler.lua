--[[
    Script Name    : SpawnScripts/Nettleville/ashiningnibbler.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 04:06:30
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
        if GetSpawnLocationID(NPC)== 419401 then

	MovementLoopAddLocation(NPC, 664.26, -41.16, 300.03, 2, 0)
	MovementLoopAddLocation(NPC, 669.49, -42.04, 316.97, 2, 0)
	MovementLoopAddLocation(NPC, 674.04, -42.35, 337.41, 2, 0)
	MovementLoopAddLocation(NPC, 677.88, -41.42, 354.67, 2, 0)
	MovementLoopAddLocation(NPC, 681.42, -41.44, 370.43, 2, 0)
	MovementLoopAddLocation(NPC, 684.14, -41.43, 370.61, 2, 0)
	MovementLoopAddLocation(NPC, 676.05, -41.75, 341.71, 2, 0)
	MovementLoopAddLocation(NPC, 673.52, -42.12, 313.23, 2, 0)
	MovementLoopAddLocation(NPC, 666.03, -41.55, 299.9, 2, 0)
	MovementLoopAddLocation(NPC, 673.52, -42.12, 313.23, 2, 0)
	MovementLoopAddLocation(NPC, 676.05, -41.75, 341.71, 2, 0)
	MovementLoopAddLocation(NPC, 684.14, -41.43, 370.61, 2, 0)
	MovementLoopAddLocation(NPC, 681.42, -41.44, 370.43, 2, 0)
	MovementLoopAddLocation(NPC, 677.88, -41.42, 354.67, 2, 0)
	MovementLoopAddLocation(NPC, 674.04, -42.35, 337.41, 2, 0)
	MovementLoopAddLocation(NPC, 669.49, -42.04, 316.97, 2, 0)
	MovementLoopAddLocation(NPC, 664.26, -41.16, 300.03, 2, 0)
    elseif GetSpawnLocationID(NPC)== 419437 then
 	MovementLoopAddLocation(NPC, 678.43, -40.72, 356.29, 2, 2)
	MovementLoopAddLocation(NPC, 688.47, -40.95, 371.07, 2, 0)
	MovementLoopAddLocation(NPC, 683.6, -41.28, 375.63, 2, 0)
	MovementLoopAddLocation(NPC, 682.28, -42.69, 370.56, 2, 0)
	MovementLoopAddLocation(NPC, 680.09, -41.73, 355.53, 2, 0)
	MovementLoopAddLocation(NPC, 675.67, -41.86, 341.68, 2, 0)
	MovementLoopAddLocation(NPC, 677.5, -43.09, 335.51, 2, 0)
	MovementLoopAddLocation(NPC, 677.41, -42.09, 326.44, 2, 0)
	MovementLoopAddLocation(NPC, 675.05, -42.36, 318.94, 2, 0)
	MovementLoopAddLocation(NPC, 672.19, -42.72, 329.02, 2, 0)
	MovementLoopAddLocation(NPC, 673.43, -41.07, 339.52, 2, 0)
	MovementLoopAddLocation(NPC, 677.61, -41.63, 350.27, 2, 0)
	MovementLoopAddLocation(NPC, 682.11, -41.3, 361.82, 2, 0)
	MovementLoopAddLocation(NPC, 677.61, -41.63, 350.27, 2, 0)
	MovementLoopAddLocation(NPC, 673.43, -41.07, 339.52, 2, 0)
	MovementLoopAddLocation(NPC, 672.19, -42.72, 329.02, 2, 0)
	MovementLoopAddLocation(NPC, 675.05, -42.36, 318.94, 2, 0)
	MovementLoopAddLocation(NPC, 677.41, -42.09, 326.44, 2, 0)
	MovementLoopAddLocation(NPC, 677.5, -43.09, 335.51, 2, 0)
	MovementLoopAddLocation(NPC, 675.67, -41.86, 341.68, 2, 0)
	MovementLoopAddLocation(NPC, 680.09, -41.73, 355.53, 2, 0)
	MovementLoopAddLocation(NPC, 682.28, -42.69, 370.56, 2, 0)
	MovementLoopAddLocation(NPC, 683.6, -41.28, 375.63, 2, 0)
	MovementLoopAddLocation(NPC, 688.47, -40.95, 371.07, 2, 0)
	MovementLoopAddLocation(NPC, 678.43, -40.72, 356.29, 2, 2)     
	
    elseif GetSpawnLocationID(NPC)== 133773402 then
	MovementLoopAddLocation(NPC, 688.73, -40.22, 379.2, 2, 2)
	MovementLoopAddLocation(NPC, 689.26, -41.06, 373.69, 2, 0)
	MovementLoopAddLocation(NPC, 681.26, -41.69, 367.01, 2, 2)
	MovementLoopAddLocation(NPC, 679.39, -40.83, 354.77, 2, 0)
	MovementLoopAddLocation(NPC, 676.38, -42.38, 341.15, 2, 0)
	MovementLoopAddLocation(NPC, 673.64, -39.99, 339.42, 2, 2)
	MovementLoopAddLocation(NPC, 675.21, -40.38, 346.64, 2, 0)
	MovementLoopAddLocation(NPC, 676.81, -41.72, 350.13, 2, 0)
	MovementLoopAddLocation(NPC, 683.36, -41.48, 357.71, 2, 0)
	MovementLoopAddLocation(NPC, 688.74, -40.48, 364.63, 2, 0)
	MovementLoopAddLocation(NPC, 684.6, -40.03, 376.74, 2, 0)
	MovementLoopAddLocation(NPC, 686.48, -40.37, 379.31, 2, 2)
	MovementLoopAddLocation(NPC, 688.99, -40.47, 366.88, 2, 0)
	MovementLoopAddLocation(NPC, 688.61, -40.64, 366.57, 2, 2)
	MovementLoopAddLocation(NPC, 682.64, -40.71, 374.52, 2, 0)
	MovementLoopAddLocation(NPC, 687.49, -41.35, 377.62, 2, 2)
	MovementLoopAddLocation(NPC, 682.64, -40.71, 374.52, 2, 0)
	MovementLoopAddLocation(NPC, 688.61, -40.64, 366.57, 2, 2)
	MovementLoopAddLocation(NPC, 688.99, -40.47, 366.88, 2, 0)
	MovementLoopAddLocation(NPC, 686.48, -40.37, 379.31, 2, 2)
	MovementLoopAddLocation(NPC, 684.6, -40.03, 376.74, 2, 0)
	MovementLoopAddLocation(NPC, 688.74, -40.48, 364.63, 2, 0)
	MovementLoopAddLocation(NPC, 683.36, -41.48, 357.71, 2, 0)
	MovementLoopAddLocation(NPC, 676.81, -41.72, 350.13, 2, 0)
	MovementLoopAddLocation(NPC, 675.21, -40.38, 346.64, 2, 0)
	MovementLoopAddLocation(NPC, 673.64, -39.99, 339.42, 2, 2)
	MovementLoopAddLocation(NPC, 676.38, -42.38, 341.15, 2, 0)
	MovementLoopAddLocation(NPC, 679.39, -40.83, 354.77, 2, 0)
	MovementLoopAddLocation(NPC, 681.26, -41.69, 367.01, 2, 2)
	MovementLoopAddLocation(NPC, 689.26, -41.06, 373.69, 2, 0)
	MovementLoopAddLocation(NPC, 688.73, -40.22, 379.2, 2, 2)    
end
end

