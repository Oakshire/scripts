--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Scruffy.lua
	Script Purpose	:	Waypoint Path for Scruffy.lua
	Script Author	:	Rylec
	Script Date		:	10-04-2021 10:27:40 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function InRange(NPC, Spawn)
    Emote(NPC, "scowls at you.")
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 610.82, -35.23, -228.88, 2, MakeRandomInt(12, 18))
	MovementLoopAddLocation(NPC, 607.13, -32.98, -235.4, 2, 0)
	MovementLoopAddLocation(NPC, 604.89, -31.24, -238.38, 2, 0)
	MovementLoopAddLocation(NPC, 603.96, -31.23, -240.08, 2, 0)
	MovementLoopAddLocation(NPC, 603.41, -31.11, -241.46, 2, 0)
	MovementLoopAddLocation(NPC, 603.05, -31.08, -242.02, 2, 2)
	MovementLoopAddLocation(NPC, 599.37, -31.26, -238.85, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 596.13, -30.9, -237.2, 2, 0)
	MovementLoopAddLocation(NPC, 593.96, -29.41, -235.12, 2, 0)
	MovementLoopAddLocation(NPC, 592.34, -28.51, -234.16, 2, 0)
	MovementLoopAddLocation(NPC, 591.19, -28, -233.21, 2, 0)
	MovementLoopAddLocation(NPC, 587.16, -27.95, -231.85, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 590.55, -27.55, -228.59, 2, 0)
	MovementLoopAddLocation(NPC, 594.98, -24.84, -221.01, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 591.34, -27.99, -230.71, 2, 0)
	MovementLoopAddLocation(NPC, 592.78, -28.43, -233.29, 2, 0)
	MovementLoopAddLocation(NPC, 598.34, -31.25, -237.67, 2, 0)
	MovementLoopAddLocation(NPC, 599.13, -31.25, -238.13, 2, 0)
	MovementLoopAddLocation(NPC, 600.56, -31.26, -239.35, 2, 0)
	MovementLoopAddLocation(NPC, 602.14, -31.23, -240.28, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 603.91, -31.24, -239.62, 2, 0)
	MovementLoopAddLocation(NPC, 608.18, -34.05, -233.73, 2, 0)
	MovementLoopAddLocation(NPC, 610.71, -35.23, -228.99, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 609.49, -35.26, -230.68, 2, 0)
	MovementLoopAddLocation(NPC, 607.88, -34.57, -232.09, 2, 0)
	MovementLoopAddLocation(NPC, 606.12, -32.69, -235.47, 2, 0)
	MovementLoopAddLocation(NPC, 603.16, -31.24, -238.83, 2, 0)
	MovementLoopAddLocation(NPC, 601.82, -31.23, -241.1, 2, 0)
	MovementLoopAddLocation(NPC, 601.45, -31.22, -241.44, 2, 1)
	MovementLoopAddLocation(NPC, 597.9, -31.24, -237.19, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 594.38, -29.53, -234.85, 2, 0)
	MovementLoopAddLocation(NPC, 592.71, -28.46, -233.45, 2, 0)
	MovementLoopAddLocation(NPC, 591.66, -28.01, -232.77, 2, 0)
	MovementLoopAddLocation(NPC, 590.84, -28, -230.82, 2, 0)
	MovementLoopAddLocation(NPC, 591.46, -27.26, -228.63, 2, 0)
	MovementLoopAddLocation(NPC, 592.69, -25.77, -225.78, 2, 0)
	MovementLoopAddLocation(NPC, 594.36, -24.76, -223.47, 2, 0)
	MovementLoopAddLocation(NPC, 594.89, -24.84, -222.03, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 591.39, -27.23, -228.39, 2, 0)
	MovementLoopAddLocation(NPC, 590.04, -28.01, -230.06, 2, 0)
	MovementLoopAddLocation(NPC, 589.35, -28.06, -231.66, 2, 0)
	MovementLoopAddLocation(NPC, 592.82, -28.61, -233.97, 2, 0)
	MovementLoopAddLocation(NPC, 594.07, -29.18, -234.15, 2, 0)
	MovementLoopAddLocation(NPC, 596.41, -30.78, -236.18, 2, 0)
	MovementLoopAddLocation(NPC, 601.24, -31.25, -238.72, 2, MakeRandomInt(2, 6), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 598.74, -31.24, -237.33, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 596.17, -30.63, -236.18, 2, 0)
	MovementLoopAddLocation(NPC, 592.46, -28.28, -233.09, 2, 0)
	MovementLoopAddLocation(NPC, 591.52, -28, -232.66, 2, 0)
	MovementLoopAddLocation(NPC, 590.52, -28.02, -231.28, 2, 0)
	MovementLoopAddLocation(NPC, 589.79, -27.98, -229.12, 2, 0)
	MovementLoopAddLocation(NPC, 591.64, -26.27, -226.3, 2, 0)
	MovementLoopAddLocation(NPC, 593.38, -24.78, -224.03, 2, 0)
	MovementLoopAddLocation(NPC, 594.36, -24.78, -220.83, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 593.82, -24.75, -222.38, 2, 0)
	MovementLoopAddLocation(NPC, 593.79, -24.73, -223.41, 2, 0)
	MovementLoopAddLocation(NPC, 591.35, -26.98, -227.75, 2, 0)
	MovementLoopAddLocation(NPC, 590.9, -27.64, -229.06, 2, 0)
	MovementLoopAddLocation(NPC, 589.93, -28.02, -230.3, 2, 0)
	MovementLoopAddLocation(NPC, 588.72, -28.02, -232.47, 2, 1)
	MovementLoopAddLocation(NPC, 591.22, -28, -233.11, 2, 0)
	MovementLoopAddLocation(NPC, 592.3, -28.4, -233.9, 2, 0)
	MovementLoopAddLocation(NPC, 594.16, -29.35, -234.69, 2, 0)
	MovementLoopAddLocation(NPC, 594.8, -29.82, -235.49, 2, 0)
	MovementLoopAddLocation(NPC, 596.27, -30.66, -236.13, 2, 0)
	MovementLoopAddLocation(NPC, 598.87, -31.26, -238.51, 2, 0)
	MovementLoopAddLocation(NPC, 601.67, -31.25, -240.13, 2, MakeRandomInt(2, 6), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 604.8, -31.64, -237.08, 2, 0)
	MovementLoopAddLocation(NPC, 605.68, -32.48, -235.71, 2, 0)
	MovementLoopAddLocation(NPC, 608.02, -34.13, -233.25, 2, 0)
	MovementLoopAddLocation(NPC, 609.64, -35.02, -232.17, 2, 0)
	MovementLoopAddLocation(NPC, 609.66, -35.26, -229.86, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 609.52, -34.89, -232.41, 2, 0)
	MovementLoopAddLocation(NPC, 604.97, -31.69, -237.1, 2, 0)
	MovementLoopAddLocation(NPC, 603.81, -31.24, -239.63, 2, 0)
	MovementLoopAddLocation(NPC, 602.36, -31.23, -239.81, 2, 2)
	MovementLoopAddLocation(NPC, 597.82, -31.25, -237.28, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 596.09, -30.55, -236, 2, 0)
	MovementLoopAddLocation(NPC, 592.85, -28.79, -234.66, 2, 0)
	MovementLoopAddLocation(NPC, 592.03, -28.31, -233.87, 2, 0)
	MovementLoopAddLocation(NPC, 591.46, -28.01, -232.47, 2, 0)
	MovementLoopAddLocation(NPC, 590.77, -28.02, -231.65, 2, 0)
	MovementLoopAddLocation(NPC, 591.24, -26.76, -227.15, 2, 0)
	MovementLoopAddLocation(NPC, 591.9, -26.26, -226.36, 2, 0)
	MovementLoopAddLocation(NPC, 594.89, -24.77, -223.63, 2, MakeRandomInt(12, 18))
	MovementLoopAddLocation(NPC, 589.81, -28.02, -230.18, 2, 0)
	MovementLoopAddLocation(NPC, 591.05, -28.01, -232.79, 2, 0)
	MovementLoopAddLocation(NPC, 592.76, -28.44, -233.34, 2, 0)
	MovementLoopAddLocation(NPC, 599.03, -31.26, -238.91, 2, 0)
	MovementLoopAddLocation(NPC, 600.44, -31.26, -239.73, 2, 0)
	MovementLoopAddLocation(NPC, 601.39, -31.25, -240.11, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 602.67, -31.21, -241.51, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 604.59, -31.06, -239.86, 2, 0)
	MovementLoopAddLocation(NPC, 606.62, -32.23, -236.85, 2, 0)
	MovementLoopAddLocation(NPC, 607.83, -33.58, -234.43, 2, 0)
	MovementLoopAddLocation(NPC, 609.55, -34.91, -232.38, 2, 0)
	MovementLoopAddLocation(NPC, 610.72, -35.22, -230.03, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 609.83, -35.07, -232.11, 2, 0)
	MovementLoopAddLocation(NPC, 607.92, -33.81, -234.09, 2, 0)
	MovementLoopAddLocation(NPC, 606, -32.77, -235.04, 2, 0)
	MovementLoopAddLocation(NPC, 605.17, -32.12, -236.14, 2, 0)
	MovementLoopAddLocation(NPC, 604.73, -31.55, -237.33, 2, 0)
	MovementLoopAddLocation(NPC, 603.42, -31.25, -238.5, 2, 0)
	MovementLoopAddLocation(NPC, 598.23, -31.26, -238.86, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 594.8, -30.02, -236.02, 2, 0)
	MovementLoopAddLocation(NPC, 593.71, -29.41, -235.48, 2, 0)
	MovementLoopAddLocation(NPC, 590.8, -28.01, -232.97, 2, 0)
	MovementLoopAddLocation(NPC, 589.54, -28.02, -232.69, 2, 1)
	MovementLoopAddLocation(NPC, 590.74, -27.53, -228.65, 2, 0)
	MovementLoopAddLocation(NPC, 592.61, -25.83, -225.94, 2, 0)
	MovementLoopAddLocation(NPC, 593.4, -25.06, -224.58, 2, 0)
	MovementLoopAddLocation(NPC, 594.24, -24.75, -223.46, 2, 0)
	MovementLoopAddLocation(NPC, 594.72, -24.83, -222.31, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 593.3, -25.35, -225.27, 2, 0)
	MovementLoopAddLocation(NPC, 591.13, -26.93, -227.55, 2, 0)
	MovementLoopAddLocation(NPC, 590.21, -28.01, -230.5, 2, 0)
	MovementLoopAddLocation(NPC, 591.94, -28.16, -233.58, 2, 0)
	MovementLoopAddLocation(NPC, 593.29, -28.83, -234.2, 2, 0)
	MovementLoopAddLocation(NPC, 594.17, -29.52, -235.08, 2, 0)
	MovementLoopAddLocation(NPC, 595.55, -30.28, -235.67, 2, 0)
	MovementLoopAddLocation(NPC, 599.03, -31.26, -238.81, 2, 0)
	MovementLoopAddLocation(NPC, 602.79, -31.22, -239.87, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 604.23, -31.27, -238.53, 2, 0)
	MovementLoopAddLocation(NPC, 604.77, -31.42, -237.5, 2, 0)
	MovementLoopAddLocation(NPC, 606.04, -32.35, -236.19, 2, 0)
	MovementLoopAddLocation(NPC, 606.3, -32.72, -235.54, 2, 0)
	MovementLoopAddLocation(NPC, 608.24, -34.12, -233.42, 2, 0)
	
	MovementLoopAddLocation(NPC, 610.82, -35.23, -228.88, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 607.13, -32.98, -235.4, 7, 0)
	MovementLoopAddLocation(NPC, 604.89, -31.24, -238.38, 7, 0)
	MovementLoopAddLocation(NPC, 603.96, -31.23, -240.08, 7, 0)
	MovementLoopAddLocation(NPC, 603.41, -31.11, -241.46, 7, 0)
	MovementLoopAddLocation(NPC, 603.05, -31.08, -242.02, 7, 0)
	MovementLoopAddLocation(NPC, 599.37, -31.26, -238.85, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 596.13, -30.9, -237.2, 7, 0)
	MovementLoopAddLocation(NPC, 593.96, -29.41, -235.12, 7, 0)
	MovementLoopAddLocation(NPC, 592.34, -28.51, -234.16, 7, 0)
	MovementLoopAddLocation(NPC, 591.19, -28, -233.21, 7, 0)
	MovementLoopAddLocation(NPC, 587.16, -27.95, -231.85, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 590.55, -27.55, -228.59, 7, 0)
	MovementLoopAddLocation(NPC, 594.98, -24.84, -221.01, 7, 4)
	MovementLoopAddLocation(NPC, 591.34, -27.99, -230.71, 7, 0)
	MovementLoopAddLocation(NPC, 592.78, -28.43, -233.29, 7, 0)
	MovementLoopAddLocation(NPC, 598.34, -31.25, -237.67, 7, 0)
	MovementLoopAddLocation(NPC, 599.13, -31.25, -238.13, 7, 0)
	MovementLoopAddLocation(NPC, 600.56, -31.26, -239.35, 7, 0)
	MovementLoopAddLocation(NPC, 602.14, -31.23, -240.28, 7, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 603.91, -31.24, -239.62, 7, 0)
	MovementLoopAddLocation(NPC, 608.18, -34.05, -233.73, 7, 0)
	MovementLoopAddLocation(NPC, 610.71, -35.23, -228.99, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 609.49, -35.26, -230.68, 7, 0)
	MovementLoopAddLocation(NPC, 607.88, -34.57, -232.09, 7, 0)
	MovementLoopAddLocation(NPC, 606.12, -32.69, -235.47, 7, 0)
	MovementLoopAddLocation(NPC, 603.16, -31.24, -238.83, 7, 0)
	MovementLoopAddLocation(NPC, 601.82, -31.23, -241.1, 7, 0)
	MovementLoopAddLocation(NPC, 601.45, -31.22, -241.44, 7, 0)
	MovementLoopAddLocation(NPC, 597.9, -31.24, -237.19, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 594.38, -29.53, -234.85, 7, 0)
	MovementLoopAddLocation(NPC, 592.71, -28.46, -233.45, 7, 0)
	MovementLoopAddLocation(NPC, 591.66, -28.01, -232.77, 7, 0)
	MovementLoopAddLocation(NPC, 590.84, -28, -230.82, 7, 0)
	MovementLoopAddLocation(NPC, 591.46, -27.26, -228.63, 7, 0)
	MovementLoopAddLocation(NPC, 592.69, -25.77, -225.78, 7, 0)
	MovementLoopAddLocation(NPC, 594.36, -24.76, -223.47, 7, 0)
	MovementLoopAddLocation(NPC, 594.89, -24.84, -222.03, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 591.39, -27.23, -228.39, 7, 0)
	MovementLoopAddLocation(NPC, 590.04, -28.01, -230.06, 7, 0)
	MovementLoopAddLocation(NPC, 589.35, -28.06, -231.66, 7, 0)
	MovementLoopAddLocation(NPC, 592.82, -28.61, -233.97, 7, 0)
	MovementLoopAddLocation(NPC, 594.07, -29.18, -234.15, 7, 0)
	MovementLoopAddLocation(NPC, 596.41, -30.78, -236.18, 7, 0)
	MovementLoopAddLocation(NPC, 601.24, -31.25, -238.72, 7, MakeRandomInt(1, 3), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 598.74, -31.24, -237.33, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 596.17, -30.63, -236.18, 7, 0)
	MovementLoopAddLocation(NPC, 592.46, -28.28, -233.09, 7, 0)
	MovementLoopAddLocation(NPC, 591.52, -28, -232.66, 7, 0)
	MovementLoopAddLocation(NPC, 590.52, -28.02, -231.28, 7, 0)
	MovementLoopAddLocation(NPC, 589.79, -27.98, -229.12, 7, 0)
	MovementLoopAddLocation(NPC, 591.64, -26.27, -226.3, 7, 0)
	MovementLoopAddLocation(NPC, 593.38, -24.78, -224.03, 7, 0)
	MovementLoopAddLocation(NPC, 594.36, -24.78, -220.83, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 593.82, -24.75, -222.38, 7, 0)
	MovementLoopAddLocation(NPC, 593.79, -24.73, -223.41, 7, 0)
	MovementLoopAddLocation(NPC, 591.35, -26.98, -227.75, 7, 0)
	MovementLoopAddLocation(NPC, 590.9, -27.64, -229.06, 7, 0)
	MovementLoopAddLocation(NPC, 589.93, -28.02, -230.3, 7, 0)
	MovementLoopAddLocation(NPC, 588.72, -28.02, -232.47, 7, 0)
	MovementLoopAddLocation(NPC, 591.22, -28, -233.11, 7, 0)
	MovementLoopAddLocation(NPC, 592.3, -28.4, -233.9, 7, 0)
	MovementLoopAddLocation(NPC, 594.16, -29.35, -234.69, 7, 0)
	MovementLoopAddLocation(NPC, 594.8, -29.82, -235.49, 7, 0)
	MovementLoopAddLocation(NPC, 596.27, -30.66, -236.13, 7, 0)
	MovementLoopAddLocation(NPC, 598.87, -31.26, -238.51, 7, 0)
	MovementLoopAddLocation(NPC, 601.67, -31.25, -240.13, 7, MakeRandomInt(1, 3), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 604.8, -31.64, -237.08, 7, 0)
	MovementLoopAddLocation(NPC, 605.68, -32.48, -235.71, 7, 0)
	MovementLoopAddLocation(NPC, 608.02, -34.13, -233.25, 7, 0)
	MovementLoopAddLocation(NPC, 609.64, -35.02, -232.17, 7, 0)
	MovementLoopAddLocation(NPC, 609.66, -35.26, -229.86, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 609.52, -34.89, -232.41, 7, 0)
	MovementLoopAddLocation(NPC, 604.97, -31.69, -237.1, 7, 0)
	MovementLoopAddLocation(NPC, 603.81, -31.24, -239.63, 7, 0)
	MovementLoopAddLocation(NPC, 602.36, -31.23, -239.81, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 597.82, -31.25, -237.28, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 596.09, -30.55, -236, 7, 0)
	MovementLoopAddLocation(NPC, 592.85, -28.79, -234.66, 7, 0)
	MovementLoopAddLocation(NPC, 592.03, -28.31, -233.87, 7, 0)
	MovementLoopAddLocation(NPC, 591.46, -28.01, -232.47, 7, 0)
	MovementLoopAddLocation(NPC, 590.77, -28.02, -231.65, 7, 0)
	MovementLoopAddLocation(NPC, 591.24, -26.76, -227.15, 7, 0)
	MovementLoopAddLocation(NPC, 591.9, -26.26, -226.36, 7, 0)
	MovementLoopAddLocation(NPC, 594.89, -24.77, -223.63, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 589.81, -28.02, -230.18, 7, 0)
	MovementLoopAddLocation(NPC, 591.05, -28.01, -232.79, 7, 0)
	MovementLoopAddLocation(NPC, 592.76, -28.44, -233.34, 7, 0)
	MovementLoopAddLocation(NPC, 599.03, -31.26, -238.91, 7, 0)
	MovementLoopAddLocation(NPC, 600.44, -31.26, -239.73, 7, 0)
	MovementLoopAddLocation(NPC, 601.39, -31.25, -240.11, 7, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 602.67, -31.21, -241.51, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 604.59, -31.06, -239.86, 7, 0)
	MovementLoopAddLocation(NPC, 606.62, -32.23, -236.85, 7, 0)
	MovementLoopAddLocation(NPC, 607.83, -33.58, -234.43, 7, 0)
	MovementLoopAddLocation(NPC, 609.55, -34.91, -232.38, 7, 0)
	MovementLoopAddLocation(NPC, 610.72, -35.22, -230.03, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 609.83, -35.07, -232.11, 7, 0)
	MovementLoopAddLocation(NPC, 607.92, -33.81, -234.09, 7, 0)
	MovementLoopAddLocation(NPC, 606, -32.77, -235.04, 7, 0)
	MovementLoopAddLocation(NPC, 605.17, -32.12, -236.14, 7, 0)
	MovementLoopAddLocation(NPC, 604.73, -31.55, -237.33, 7, 0)
	MovementLoopAddLocation(NPC, 603.42, -31.25, -238.5, 7, 0)
	MovementLoopAddLocation(NPC, 598.23, -31.26, -238.86, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 594.8, -30.02, -236.02, 7, 0)
	MovementLoopAddLocation(NPC, 593.71, -29.41, -235.48, 7, 0)
	MovementLoopAddLocation(NPC, 590.8, -28.01, -232.97, 7, 0)
	MovementLoopAddLocation(NPC, 589.54, -28.02, -232.69, 7, 0)
	MovementLoopAddLocation(NPC, 590.74, -27.53, -228.65, 7, 0)
	MovementLoopAddLocation(NPC, 592.61, -25.83, -225.94, 7, 0)
	MovementLoopAddLocation(NPC, 593.4, -25.06, -224.58, 7, 0)
	MovementLoopAddLocation(NPC, 594.24, -24.75, -223.46, 7, 0)
	MovementLoopAddLocation(NPC, 594.72, -24.83, -222.31, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 593.3, -25.35, -225.27, 7, 0)
	MovementLoopAddLocation(NPC, 591.13, -26.93, -227.55, 7, 0)
	MovementLoopAddLocation(NPC, 590.21, -28.01, -230.5, 7, 0)
	MovementLoopAddLocation(NPC, 591.94, -28.16, -233.58, 7, 0)
	MovementLoopAddLocation(NPC, 593.29, -28.83, -234.2, 7, 0)
	MovementLoopAddLocation(NPC, 594.17, -29.52, -235.08, 7, 0)
	MovementLoopAddLocation(NPC, 595.55, -30.28, -235.67, 7, 0)
	MovementLoopAddLocation(NPC, 599.03, -31.26, -238.81, 7, 0)
	MovementLoopAddLocation(NPC, 602.79, -31.22, -239.87, 7, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 604.23, -31.27, -238.53, 7, 0)
	MovementLoopAddLocation(NPC, 604.77, -31.42, -237.5, 7, 0)
	MovementLoopAddLocation(NPC, 606.04, -32.35, -236.19, 7, 0)
	MovementLoopAddLocation(NPC, 606.3, -32.72, -235.54, 7, 0)
	MovementLoopAddLocation(NPC, 608.24, -34.12, -233.42, 7, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 677951544)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 1548185851)
end