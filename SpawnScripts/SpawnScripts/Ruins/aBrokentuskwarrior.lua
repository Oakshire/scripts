--[[
	Script Name	: SpawnScripts/Ruins/aBrokentuskwarrior.lua
	Script Purpose	: a Brokentusk warrior
	Script Author	: Scatman (updated by jakejp 2018.10.08)
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/BrokentuskVoiceOvers.lua")
local spoke = false

function spawn(NPC)
	spoke = false
	local sli = GetSpawnLocationID(NPC)
	
	if sli == 408926 then
                -- Roamer by the statue with the prophets to the stairs. 
		StartPath1(NPC)
	elseif sli == 159749 or sli == 159750 or sli == 159751 then
		-- Runners from the statue with the prophets around it.  Run right into the seasoned guards.
		StartPath2(NPC)
	elseif sli == 1585501 or sli == 1585502 or sli == 1585523 or sli == 1585524 or sli == 1585525 or sli == 408808 then
		-- Orcs that cheer on the harried vagrant squatter.
		SetPlayerProximityFunction(NPC, 10, "InRange")
		EmoteLoop(NPC)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local vagrant_squatter = GetSpawn(NPC, 1270015)
	if vagrant_squatter ~= nil and GetDistance(NPC, vagrant_squatter) <= 50 then
		local choice = math.random(1, 3)
		if choice == 1 then
			Say(NPC, "Dance, or I give you to HIM!", Spawn)
		elseif choice == 2 then
			Say(NPC, "So fragile, so...funny!", Spawn)
		elseif choice == 3 then
			Say(NPC, "Dance little one!", Spawn)
		end
	end
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
	MovementLoopAddLocation(NPC, -35.9, -3.62, 47.9, 2, 0)
	MovementLoopAddLocation(NPC, -35.18, -2.72, 58.96, 2, 0)
	MovementLoopAddLocation(NPC, -42.3, -2.43, 71.24, 2, 0)
	MovementLoopAddLocation(NPC, -40.02, -2.38, 75.94, 2, 0)
	MovementLoopAddLocation(NPC, -43.62, -2.08, 81.69, 2, 0)
	MovementLoopAddLocation(NPC, -47.92, -2.5, 73.39, 2, 0)
	MovementLoopAddLocation(NPC, -46.64, -2.59, 65.03, 2, 0)
	MovementLoopAddLocation(NPC, -41.31, -2.89, 58.72, 2, 0)
	MovementLoopAddLocation(NPC, -44.55, -3.94, 45.11, 2, 0)
	MovementLoopAddLocation(NPC, -36.96, -3.82, 42.52, 2, 0)
end

function StartPath2(NPC)
	MovementLoopAddLocation(NPC, -47.47, -2.4, 67.54, 4, 0)
	MovementLoopAddLocation(NPC, -37.98, -2.22, 81.62, 4, 0)
	MovementLoopAddLocation(NPC, -14.18, -4.24, 91.13, 4, 0)
	MovementLoopAddLocation(NPC, -19.79, -4.42, 109.62, 4, 0)
	MovementLoopAddLocation(NPC, -4.71, -4.42, 120.59, 4, 0)
	MovementLoopAddLocation(NPC, -1.99, -4.42, 96.09, 4, 0)
	MovementLoopAddLocation(NPC, 10.14, -3.2, 79.98, 4, 0)
	MovementLoopAddLocation(NPC, -6.7, -4.27, 63.84, 4, 0)
	MovementLoopAddLocation(NPC, -11.05, -5.06, 39.66, 4, 0)
	MovementLoopAddLocation(NPC, -24.45, -3.71, 82.41, 4, 0)
	MovementLoopAddLocation(NPC, -45.66, -2.42, 76.96, 4, 0)
	MovementLoopAddLocation(NPC, -46.29, -2.55, 68.6, 4, 0)
	MovementLoopAddLocation(NPC, -67.39, -0.9, 67.99, 4, 0)
end

function EmoteLoop(NPC) -- Thanks theFoof
	local choice = math.random(1,4)
	local emote
	if choice == 1 then
		emote = "cheer"
	elseif choice == 2 then
		emote = "chuckle"
	end
	PlayFlavor(NPC, "", "", emote, 0, 0)
	AddTimer(NPC, math.random(1000,5000), "EmoteLoop")
end
