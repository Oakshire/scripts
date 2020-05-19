--[[
	Script Name	: SpawnScripts/Baubbleshire/aduck2.lua
	Script Purpose	: a duck
	Script Author	: Scatman
	Script Date	: 2009.05.11
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 893.18, -15.07, -442.53, 3, 0)
	MovementLoopAddLocation(NPC, 882.04, -14.06, -427.71, 3, 0)
	MovementLoopAddLocation(NPC, 876.31, -14.85, -425.49, 3, 0)
	MovementLoopAddLocation(NPC, 871.78, -18.49, -441.44, 3, 0)
	MovementLoopAddLocation(NPC, 861.72, -19.09, -449.21, 3, 0)
	MovementLoopAddLocation(NPC, 853.59, -18.92, -458.83, 3, 0)
	MovementLoopAddLocation(NPC, 850.55, -18.4, -465.92, 3, 0)
	MovementLoopAddLocation(NPC, 845.43, -17.83, -468.68, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 841.25, -17.88, -481.68, 3, 0)
	MovementLoopAddLocation(NPC, 835.32, -17.72, -482.92, 3, 0)
	MovementLoopAddLocation(NPC, 832.96, -17.83, -488.91, 3, 0)
	MovementLoopAddLocation(NPC, 834.34, -18.18, -493.91, 3, 0)
	MovementLoopAddLocation(NPC, 829.86, -17.86, -499.12, 3, 0)
	MovementLoopAddLocation(NPC, 828.85, -18.26, -507.2, 3, 0)
	MovementLoopAddLocation(NPC, 825.29, -18.04, -508.55, 3, 0)
	MovementLoopAddLocation(NPC, 823.22, -13.98, -498.94, 3, 0)
	MovementLoopAddLocation(NPC, 824.03, -13.34, -494.75, 3, 0)
	MovementLoopAddLocation(NPC, 820.18, -9.74, -485.21, 3, 0)
	MovementLoopAddLocation(NPC, 820.74, -8.89, -476.69, 3, 0)
	MovementLoopAddLocation(NPC, 831.88, -9.6, -468.74, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 836.16, -10.86, -465.54, 3, 0)
	MovementLoopAddLocation(NPC, 842.85, -16.52, -464.61, 3, 0)
	MovementLoopAddLocation(NPC, 850.46, -18.57, -466.87, 3, 0)
	MovementLoopAddLocation(NPC, 853.32, -18.56, -464.35, 3, 0)
	MovementLoopAddLocation(NPC, 860.08, -19.4, -450.12, 3, 0)
	MovementLoopAddLocation(NPC, 871.56, -18.66, -444.38, 3, 0)
	MovementLoopAddLocation(NPC, 895.61, -18.79, -457.92, 3, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end