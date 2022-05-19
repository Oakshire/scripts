--[[
    Script Name    : SpawnScripts/PeatBog/Lurkblister.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.19 12:05:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    waypoints(NPC)

end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 675.44, -33.55, 414.84, 2, 0)
	MovementLoopAddLocation(NPC, 693.45, -33.58, 469.35, 2, 0)
	MovementLoopAddLocation(NPC, 685.15, -32.99, 474, 2, 0)
	MovementLoopAddLocation(NPC, 675.36, -32.72, 470.99, 2, 0)
	MovementLoopAddLocation(NPC, 670.08, -34.62, 499.72, 2, 0)
	MovementLoopAddLocation(NPC, 662.13, -34.6, 505.85, 2, 0)
	MovementLoopAddLocation(NPC, 648.16, -33.23, 541.49, 2, 0)
	MovementLoopAddLocation(NPC, 643.52, -32.69, 545.07, 2, 0)
	MovementLoopAddLocation(NPC, 641.21, -32.74, 545.29, 2, 0)
	MovementLoopAddLocation(NPC, 637.05, -33.42, 540.22, 2, 0)
	MovementLoopAddLocation(NPC, 631.69, -33.08, 541.27, 2, 0)
	MovementLoopAddLocation(NPC, 621.96, -34.13, 534.95, 2, 0)
	MovementLoopAddLocation(NPC, 613.34, -33.52, 538.96, 2, 0)
	MovementLoopAddLocation(NPC, 606.02, -32.71, 536.18, 2, 0)
	MovementLoopAddLocation(NPC, 598.1, -32.89, 535.2, 2, 0)
	MovementLoopAddLocation(NPC, 594.58, -32.7, 539.98, 2, 0)
	MovementLoopAddLocation(NPC, 600.62, -32.66, 545.56, 2, 0)
	MovementLoopAddLocation(NPC, 602.11, -32.66, 550.23, 2, 0)
	MovementLoopAddLocation(NPC, 604.19, -32.62, 554.39, 2, 0)
	MovementLoopAddLocation(NPC, 611.8, -33, 581.29, 2, 0)
	MovementLoopAddLocation(NPC, 619.18, -33.42, 591.86, 2, 0)
	MovementLoopAddLocation(NPC, 626.52, -34.32, 590.21, 2, 0)
	MovementLoopAddLocation(NPC, 628.8, -34.38, 588.17, 2, 0)
	MovementLoopAddLocation(NPC, 660.99, -34.27, 612.77, 2, 0)
	MovementLoopAddLocation(NPC, 677.93, -32.67, 615.71, 2, 0)
	MovementLoopAddLocation(NPC, 696.13, -34.8, 612.3, 2, 0)
	MovementLoopAddLocation(NPC, 711.21, -34.33, 595.13, 2, 0)
	MovementLoopAddLocation(NPC, 717.7, -34.35, 595.67, 2, 0)
	MovementLoopAddLocation(NPC, 728.36, -33.92, 605.92, 2, 0)
	MovementLoopAddLocation(NPC, 733.54, -33.17, 608.15, 2, 0)
	MovementLoopAddLocation(NPC, 745.69, -33.23, 600.01, 2, 0)
	MovementLoopAddLocation(NPC, 753.15, -33.89, 598.25, 2, 0)
	MovementLoopAddLocation(NPC, 754.24, -34.57, 595.22, 2, 0)
	MovementLoopAddLocation(NPC, 765.01, -36.38, 587.55, 2, 0)
	MovementLoopAddLocation(NPC, 775.65, -35.64, 583.91, 2, 0)
	MovementLoopAddLocation(NPC, 786.31, -33.53, 584.61, 2, 0)
	MovementLoopAddLocation(NPC, 792.57, -32.66, 586.8, 2, 0)
	MovementLoopAddLocation(NPC, 797.63, -32.9, 588.24, 2, 0)
	MovementLoopAddLocation(NPC, 801.5, -33.16, 586.22, 2, 0)
	MovementLoopAddLocation(NPC, 805.92, -32.88, 564.72, 2, 0)
	MovementLoopAddLocation(NPC, 811.41, -32.38, 555.22, 2, 0)
	MovementLoopAddLocation(NPC, 811.46, -32.44, 548.09, 2, 0)
	MovementLoopAddLocation(NPC, 808.11, -32.44, 543.26, 2, 0)
	MovementLoopAddLocation(NPC, 800.78, -32.47, 539.41, 2, 0)
	MovementLoopAddLocation(NPC, 800.74, -32.3, 534.44, 2, 0)
	MovementLoopAddLocation(NPC, 804.84, -32.26, 528.21, 2, 0)
	MovementLoopAddLocation(NPC, 805.19, -32.36, 523.65, 2, 0)
	MovementLoopAddLocation(NPC, 799.43, -32.79, 520.46, 2, 0)
	MovementLoopAddLocation(NPC, 793.29, -33.23, 519.96, 2, 0)
	MovementLoopAddLocation(NPC, 790.47, -33.25, 518.65, 2, 0)
	MovementLoopAddLocation(NPC, 786.91, -33.25, 520.46, 2, 0)
	MovementLoopAddLocation(NPC, 771.09, -33.25, 520.39, 2, 0)
	MovementLoopAddLocation(NPC, 764.3, -33.21, 518.28, 2, 0)
	MovementLoopAddLocation(NPC, 756.76, -33.02, 518.67, 2, 0,  "Action")
end

function Action(NPC,Spawn)
    Despawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end