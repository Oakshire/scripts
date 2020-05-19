--[[
	Script Name	: SpawnScripts/Ruins/aLonetusksentry.lua
	Script Purpose	: a Lonetusk sentry
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

dofile("SpawnScripts/Ruins/aLonetuskBloodseer.lua")
local spoke = false

function spawn(NPC)
	spoke = false
	local sli = GetSpawnLocationID(NPC)
	
	if sli == 159752 then
		StartPath1(NPC)
	elseif sli == 133494 then
		StartPath2(NPC)
	elseif sli == 133485 then
		StartPath3(NPC)
	elseif sli == 159753 or sli == 159754 then
		StartPath4(NPC)
	elseif sli == 159755 then
		-- ^^ wanderer
		StartPath5(NPC)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		generic_aggro(NPC, Spawn)
	end
end

function healthchanged(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		local health_percent = GetHP(NPC) / GetMaxHP(NPC)
		if health_percent < 0.50 and spoke == false then
			spoke = true
			generic_healthchanged(NPC, Spawn)
		end
	end
end

function killed(NPC, Spawn)
	generic_killed(NPC, Spawn)
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(0, 100)
	if chance <= 25 then
		generic_death(NPC, Spawn)
	end
end

function StartPath1(NPC)
	MovementLoopAddLocation(NPC, -41.32, -3.74, 120.32, 2, 0)
	MovementLoopAddLocation(NPC, -65.94, -2.47, 99.71, 2, 0)
	MovementLoopAddLocation(NPC, -77.68, -2.43, 99, 2, 0)
	MovementLoopAddLocation(NPC, -77.79, -2.57, 104.14, 2, 0)
	MovementLoopAddLocation(NPC, -66.54, -2.66, 106.48, 2, 0)
	MovementLoopAddLocation(NPC, -57.71, -2.76, 111.01, 2, 0)
	MovementLoopAddLocation(NPC, -53.14, -2.68, 118.32, 2, 0)
	MovementLoopAddLocation(NPC, -44.23, -3.49, 126.27, 2, 0)
	MovementLoopAddLocation(NPC, -32.83, -4.42, 141.49, 2, 0)
	MovementLoopAddLocation(NPC, -28.68, -4.42, 156.88, 2, 0)
end

function StartPath2(NPC)
	MovementLoopAddLocation(NPC, -67.64, -2.42, 100.51, 2, 0)
	MovementLoopAddLocation(NPC, -50.99, -3.03, 109.9, 2, 0)
	MovementLoopAddLocation(NPC, -34.21, -4.28, 133.12, 2, 0)
	MovementLoopAddLocation(NPC, -21.44, -4.35, 145.14, 2, 0)
	MovementLoopAddLocation(NPC, -28.3, -4.42, 150.16, 2, 0)
	MovementLoopAddLocation(NPC, -29.34, -4.32, 143.17, 2, 0)
	MovementLoopAddLocation(NPC, -43.55, -3.54, 127, 2, 0)
	MovementLoopAddLocation(NPC, -50.41, -2.84, 121.45, 2, 0)
	MovementLoopAddLocation(NPC, -52.63, -2.77, 114.84, 2, 0)
	MovementLoopAddLocation(NPC, -75.87, -2.49, 103.47, 2, 0)
	MovementLoopAddLocation(NPC, -77.35, -2.45, 98.34, 2, 0)
end

function StartPath3(NPC)
	MovementLoopAddLocation(NPC, -94.78, -1.3, 131.55, 2, 0)
	MovementLoopAddLocation(NPC, -88.14, -1.48, 131.68, 2, 0)
	MovementLoopAddLocation(NPC, -87.84, -1.52, 127.62, 2, 0)
	MovementLoopAddLocation(NPC, -88.6, -2.61, 112.67, 2, 0)
	MovementLoopAddLocation(NPC, -80.61, -2.54, 104.52, 2, 0)
	MovementLoopAddLocation(NPC, -83.55, -2.47, 101.98, 2, 0)
	MovementLoopAddLocation(NPC, -91.03, -2.48, 110.27, 2, 0)
	MovementLoopAddLocation(NPC, -92.3, -2.59, 113.78, 2, 0)
	MovementLoopAddLocation(NPC, -92, -1.54, 128.43, 2, 0)
	MovementLoopAddLocation(NPC, -94.87, -1.32, 130.14, 2, 0)
	MovementLoopAddLocation(NPC, -95.15, -1.28, 131.86, 2, 0)
end

function StartPath4(NPC)
	MovementLoopAddLocation(NPC, -50.43, -3.04, 100.97, 4, 0)
	MovementLoopAddLocation(NPC, -44.55, -3.31, 96.16, 4, 0)
	MovementLoopAddLocation(NPC, -36.75, -3.59, 94.58, 4, 0)
	MovementLoopAddLocation(NPC, -22.18, -3.82, 109.96, 4, 0)
	MovementLoopAddLocation(NPC, -19.79, -4.38, 123.6, 4, 0)
	MovementLoopAddLocation(NPC, -3.78, -4.27, 119.49, 4, 0)
	MovementLoopAddLocation(NPC, -5.81, -4.42, 106.36, 4, 0)
	MovementLoopAddLocation(NPC, 7.25, -3.84, 81.62, 4, 0)
	MovementLoopAddLocation(NPC, -3.5, -4.24, 75.01, 4, 0)
	MovementLoopAddLocation(NPC, -7.39, -4.48, 45.03, 4, 0)
	MovementLoopAddLocation(NPC, 4.13, -4.02, 40.35, 4, 0)
	MovementLoopAddLocation(NPC, -14.54, -5.17, 32.26, 4, 0)
	MovementLoopAddLocation(NPC, -18.62, -5.31, 38.18, 4, 0)
	MovementLoopAddLocation(NPC, -8.9, -4.24, 57.35, 4, 0)
	MovementLoopAddLocation(NPC, -22.65, -4.03, 77.66, 4, 0)
	MovementLoopAddLocation(NPC, -26, -4.08, 100.43, 4, 0)
	MovementLoopAddLocation(NPC, -29.41, -3.83, 101.3, 4, 0)
	MovementLoopAddLocation(NPC, -41.86, -3.41, 95.6, 4, 0)
	MovementLoopAddLocation(NPC, -52.15, -2.89, 100.89, 4, 0)
	MovementLoopAddLocation(NPC, -44.28, -3.35, 115.19, 4, 0)
end

function StartPath5(NPC)
	MovementLoopAddLocation(NPC, -56.31, -2.52, 138.86, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -45.55, -2.62, 138.2, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -63.53, -2.66, 149.64, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -61.63, -2.66, 163.37, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -58.97, -2.67, 153.47, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -52.19, -2.67, 155.04, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -45.12, -2.72, 147.89, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -44.97, -3.32, 127.2, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -57.75, -2.65, 144.9, 4, math.random(0, 15))
	MovementLoopAddLocation(NPC, -52.23, -2.67, 158.43, 4, math.random(0, 15))
end