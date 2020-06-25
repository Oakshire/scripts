--[[
	Script Name	: SpawnScripts/Baubbleshire/JumJum.lua
	Script Purpose	: Jum Jum
	Script Author	: Scatman
	Script Date	: 2009.05.11
	Script Notes	: 
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, 875.58, -14.85, -425.02, 3, 0)
	MovementLoopAddLocation(NPC, 872.4, -18.42, -439.51, 3, 0)
	MovementLoopAddLocation(NPC, 857.69, -18.47, -453.94, 3, 0)
	MovementLoopAddLocation(NPC, 854.45, -18.81, -460.17, 3, 0)
	MovementLoopAddLocation(NPC, 846.24, -17.61, -460.55, 3, 0)
	MovementLoopAddLocation(NPC, 840.82, -14.64, -465.98, 3, 0)
	MovementLoopAddLocation(NPC, 834.44, -10.29, -466.54, 3, 0)
	MovementLoopAddLocation(NPC, 819.85, -9.08, -479.2, 3, 0)
	MovementLoopAddLocation(NPC, 819.3, -9.92, -486.05, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 814.71, -11.45, -488.68, 3, 0)
	MovementLoopAddLocation(NPC, 814.92, -12.61, -494.18, 3, 0)
	MovementLoopAddLocation(NPC, 825.57, -13.73, -495.76, 3, 0)
	MovementLoopAddLocation(NPC, 823.85, -19.09, -512.36, 3, 0)
	MovementLoopAddLocation(NPC, 829.99, -18.24, -506.78, 3, 0)
	MovementLoopAddLocation(NPC, 829.92, -17.88, -499.49, 3, 0)
	MovementLoopAddLocation(NPC, 833.51, -18.22, -496.33, 3, 0)
	MovementLoopAddLocation(NPC, 833.57, -18.01, -492.46, 3, 0)
	MovementLoopAddLocation(NPC, 832.61, -17.83, -489.74, 3, 0)
	MovementLoopAddLocation(NPC, 835.43, -17.71, -483.41, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 841.16, -17.87, -481.63, 3, 0)
	MovementLoopAddLocation(NPC, 843.88, -17.84, -472.36, 3, 0)
	MovementLoopAddLocation(NPC, 847.53, -18.14, -466.67, 3, 0)
	MovementLoopAddLocation(NPC, 852.22, -18.46, -465.15, 3, 0)
	MovementLoopAddLocation(NPC, 863.47, -18.73, -446.32, 3, 0)
	MovementLoopAddLocation(NPC, 871.74, -18.5, -441.79, 3, 0)
	MovementLoopAddLocation(NPC, 881.84, -18.62, -449.61, 3, 0)
	MovementLoopAddLocation(NPC, 891.23, -18.87, -457.63, 3, 0)
	MovementLoopAddLocation(NPC, 894.72, -18.41, -454.69, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 893.33, -14.96, -442.13, 3, 0)
	MovementLoopAddLocation(NPC, 880.45, -14.09, -425.4, 3, 0)
end

function respawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end