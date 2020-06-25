--[[
	Script Name	: SpawnScripts/Baubbleshire/ManglerXIII.lua
	Script Purpose	: ManglerXIII
	Script Author	: Scatman
	Script Date	: 2009.05.11
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	MovementLoopAddLocation(NPC, 826.91, -13.66, -490.21, 3, 0)
	MovementLoopAddLocation(NPC, 824.42, -13.35, -493.6, 3, 0)
	MovementLoopAddLocation(NPC, 825.03, -13.73, -497.5, 3, 0)
	MovementLoopAddLocation(NPC, 822.44, -17.12, -506.62, 3, 0)
	MovementLoopAddLocation(NPC, 824.83, -18.54, -510.6, 3, 0)
	MovementLoopAddLocation(NPC, 828.88, -18.33, -509.13, 3, 0)
	MovementLoopAddLocation(NPC, 829.91, -17.86, -499.07, 3, 0)
	MovementLoopAddLocation(NPC, 833.47, -18.14, -495.41, 3, 0)
	MovementLoopAddLocation(NPC, 832.5, -17.83, -490.37, 3, 0)
	MovementLoopAddLocation(NPC, 835.44, -17.73, -482.96, 3, 0)
	MovementLoopAddLocation(NPC, 839.68, -17.81, -482.37, 3, 0)
	MovementLoopAddLocation(NPC, 842.27, -17.76, -477.8, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 843.31, -17.91, -473.83, 3, 0)
	MovementLoopAddLocation(NPC, 848.14, -18.12, -465.73, 3, 0)
	MovementLoopAddLocation(NPC, 858.82, -18.92, -466.15, 3, 0)
	MovementLoopAddLocation(NPC, 864.6, -19.15, -476.37, 3, 0)
	MovementLoopAddLocation(NPC, 851.8, -18.62, -485.51, 3, 0)
	MovementLoopAddLocation(NPC, 855.88, -18.35, -489.41, 3, 0)
	MovementLoopAddLocation(NPC, 863.1, -18.19, -486.36, 3, 0)
	MovementLoopAddLocation(NPC, 872.71, -18.18, -498.09, 3, 0)
	MovementLoopAddLocation(NPC, 878.42, -17.27, -509.24, 3, 0)
	MovementLoopAddLocation(NPC, 886.65, -16.56, -510.88, 3, 0)
	MovementLoopAddLocation(NPC, 893.2, -17.23, -501.53, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 891.85, -17.72, -493.99, 3, 0)
	MovementLoopAddLocation(NPC, 883.9, -18.4, -484.02, 3, 0)
	MovementLoopAddLocation(NPC, 882.57, -19.12, -471.32, 3, 0)
	MovementLoopAddLocation(NPC, 889.05, -19.18, -464.32, 3, 0)
	MovementLoopAddLocation(NPC, 894.13, -18.26, -453.89, 3, 0)
	MovementLoopAddLocation(NPC, 892.86, -14.82, -441.7, 3, 0)
	MovementLoopAddLocation(NPC, 882.21, -14.02, -427.67, 3, 0)
	MovementLoopAddLocation(NPC, 872, -14.36, -423.21, 3, 0)
	MovementLoopAddLocation(NPC, 864.06, -13.03, -422.22, 3, 0)
	MovementLoopAddLocation(NPC, 859.19, -11.86, -418.61, 3, 0)
	MovementLoopAddLocation(NPC, 863.71, -12.97, -422.26, 3, 0)
	MovementLoopAddLocation(NPC, 875.75, -14.65, -424.42, 3, 0)
	MovementLoopAddLocation(NPC, 869.91, -18.54, -441.16, 3, 0)
	MovementLoopAddLocation(NPC, 858.68, -18.65, -452.03, 3, math.random(0, 30))
	MovementLoopAddLocation(NPC, 853.68, -18.78, -459.91, 3, 0)
	MovementLoopAddLocation(NPC, 843.88, -17.12, -462.44, 3, 0)
	MovementLoopAddLocation(NPC, 837.31, -13.68, -472.08, 3, 0)
	MovementLoopAddLocation(NPC, 828.05, -14.44, -482.45, 3, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(1, 100) <= 25 then
		SendMessage(Spawn, GetName(NPC) .. " barks at you.")
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end