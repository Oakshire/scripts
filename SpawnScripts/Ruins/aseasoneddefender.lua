--[[
	Script Name	: SpawnScripts/Ruins/aseasoneddefender.lua
	Script Purpose	: a seasoned defender <Freeport Militia>
	Script Author	: Scatman
	Script Date	: 2009.08.29
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/RuinsDefendersVoiceOvers.lua")

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	
	if sli == 159684 then
		StartPath1(NPC)
	elseif sli == 159683 then
		StartPath2(NPC)
	elseif sli == 159682 then
		StartPath3(NPC)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	generic_hail(NPC, Spawn)
end

function StartPath1(NPC)
	MovementLoopAddLocation(NPC, -20.26, -4.15, 85.17, 2, 0)
	MovementLoopAddLocation(NPC, -12.08, -4.24, 75.92, 2, 0)
	MovementLoopAddLocation(NPC, -14.95, -4.24, 64.55, 2, 0)
	MovementLoopAddLocation(NPC, -11.24, -4.24, 57.84, 2, 0)
	MovementLoopAddLocation(NPC, -12.24, -5, 41.88, 2, 0)
	MovementLoopAddLocation(NPC, -15.48, -5.31, 37.03, 2, 0)
	MovementLoopAddLocation(NPC, -11.25, -5.15, 36.47, 2, 0)
	MovementLoopAddLocation(NPC, -8.6, -4.88, 40.77, 2, 0)
	MovementLoopAddLocation(NPC, -8.43, -4.24, 50.98, 2, 0)
	MovementLoopAddLocation(NPC, -7.42, -4.24, 52.29, 2, 0)
	MovementLoopAddLocation(NPC, -5.13, -4.28, 71.41, 2, 0)
	MovementLoopAddLocation(NPC, -2.23, -4.26, 76.82, 2, 0)
	MovementLoopAddLocation(NPC, -6.65, -4.28, 93.79, 2, 0)
	MovementLoopAddLocation(NPC, -5.76, -4.24, 99.44, 2, 0)
	MovementLoopAddLocation(NPC, -11.76, -4.24, 108.34, 2, 0)
end

function StartPath2(NPC)
	MovementLoopAddLocation(NPC, -12.62, -4.26, 75.78, 2, 0)
	MovementLoopAddLocation(NPC, -18.93, -4.24, 83.4, 2, 0)
	MovementLoopAddLocation(NPC, -14.57, -4.25, 103.05, 2, 0)
	MovementLoopAddLocation(NPC, -18.66, -4.42, 120.44, 2, 0)
	MovementLoopAddLocation(NPC, -12.55, -4.39, 123.38, 2, 0)
	MovementLoopAddLocation(NPC, -8.87, -4.24, 109.37, 2, 0)
	MovementLoopAddLocation(NPC, -9.4, -4.25, 104.12, 2, 0)
	MovementLoopAddLocation(NPC, -1.7, -4.24, 78.12, 2, 0)
	MovementLoopAddLocation(NPC, -10.69, -4.24, 66.76, 2, 0)
end

function StartPath3(NPC)
	MovementLoopAddLocation(NPC, -15.67, -4.94, 16.16, 2, 0)
	MovementLoopAddLocation(NPC, -16.02, -5.15, 27.79, 2, 0)
	MovementLoopAddLocation(NPC, -8.82, -5.04, 39.21, 2, 0)
	MovementLoopAddLocation(NPC, -3.86, -4.27, 88.28, 2, 0)
	MovementLoopAddLocation(NPC, -12.66, -4.24, 93.68, 2, 0)
	MovementLoopAddLocation(NPC, -20.63, -4.09, 84.59, 2, 0)
	MovementLoopAddLocation(NPC, -12.54, -4.26, 76.28, 2, 0)
	MovementLoopAddLocation(NPC, -11.41, -4.26, 56.9, 2, 0)
	MovementLoopAddLocation(NPC, -11.8, -4.75, 43.46, 2, 0)
	MovementLoopAddLocation(NPC, -21.25, -5.21, 28.53, 2, 0)
	MovementLoopAddLocation(NPC, -20.74, -5.09, 17.62, 2, 0)
	MovementLoopAddLocation(NPC, -15.47, -4.31, 7.05, 2, 0)
	MovementLoopAddLocation(NPC, -8.18, -4.32, 10.26, 2, 0)
end