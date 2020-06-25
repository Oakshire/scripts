--[[
	Script Name	: SpawnScripts/Ruins/SpawnScripts/Ruins/aLonetuskwarrior.lua
	Script Purpose	: a Lonetusk warrior
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

dofile("SpawnScripts/Ruins/LonetuskVoiceOvers.lua")
local spoke = false

function spawn(NPC)
	spoke = false
	local sli = GetSpawnLocationID(NPC)
	
	if sli == 159756 then
		StartPath1(NPC)
	elseif sli == 159757 then
		StartPath2(NPC)
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
	MovementLoopAddLocation(NPC, -0.13, -4.26, 165.68, 2, 0)
	MovementLoopAddLocation(NPC, -14.62, -4.33, 163.43, 2, 0)
	MovementLoopAddLocation(NPC, -23.68, -4.32, 157.94, 2, 0)
	MovementLoopAddLocation(NPC, -24.96, -4.28, 139.69, 2, 0)
	MovementLoopAddLocation(NPC, -22.01, -4.36, 139.48, 2, 0)
	MovementLoopAddLocation(NPC, -20.86, -4.37, 146.05, 2, 0)
	MovementLoopAddLocation(NPC, -21.55, -4.29, 153.57, 2, 0)
	MovementLoopAddLocation(NPC, -12.1, -4.24, 159.76, 2, 0)
	MovementLoopAddLocation(NPC, 11.83, -4.28, 157.78, 2, 0)
	MovementLoopAddLocation(NPC, 12.93, -4.24, 164.87, 2, 0)
end

function StartPath2(NPC)
	MovementLoopAddLocation(NPC, -18.8, -4.39, 161.74, 2, 0)
	MovementLoopAddLocation(NPC, -12.84, -4.29, 163.4, 2, 0)
	MovementLoopAddLocation(NPC, 11.15, -4.26, 166.07, 2, 0)
	MovementLoopAddLocation(NPC, 11.89, -4.24, 158.55, 2, 0)
	MovementLoopAddLocation(NPC, -16.14, -4.24, 158.93, 2, 0)
	MovementLoopAddLocation(NPC, -19.88, -4.36, 146.36, 2, 0)
	MovementLoopAddLocation(NPC, -24.98, -4.28, 139.56, 2, 0)
	MovementLoopAddLocation(NPC, -25.94, -4.42, 155.75, 2, 0)
end