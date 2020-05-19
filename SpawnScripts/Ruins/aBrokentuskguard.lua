--[[
	Script Name	: SpawnScripts/Ruins/aBrokentuskguard.lua
	Script Purpose	: a Brokentusk guard
	Script Author	: Scatman (updated by jakejp 2018.06.10)
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/BrokentuskVoiceOvers.lua")
local spoke = false

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
	spoke = false
	local sli = GetSpawnLocationID(NPC)
	
	-- Wanderer from where the 'an Overseer' spawns.
	if sli == 408961 or sli == 408975 then
		local choice = math.random(1,2)
		if choice == 1 then
			AddTimer(NPC, math.random(0, 10000), "StartPath1")
		elseif choice == 2 then
			AddTimer(NPC, math.random(0, 10000), "StartPath1Reverse")
		end
	end

        -- Spawns in front of guard by well
        if sli == 1585507 or sli == 1585508 or sli == 1585509 then 
	        EmoteLoop(NPC)
        end
end

function InRange(NPC, Spawn)
	local scared = "cringe"
	if GetLevel(Spawn) > 9 then
		PlayFlavor(NPC, "", "", scared, 0, 0)
	end 
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function EmoteLoop(NPC) -- Thanks theFoof
	local choice = math.random(1,4)
	local emote
	if choice == 1 then
		emote = "flex"
	elseif choice == 2 then
		emote = "stretch"
	elseif choice == 3 then
		emote = "point"
	elseif choice == 4 then
		emote = "peer"
	end
	PlayFlavor(NPC, "", "", emote, 0, 0)
	AddTimer(NPC, math.random(3000,10000), "EmoteLoop")
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
	MovementLoopAddLocation(NPC, -140.28, -2.57, 22.58, 2, 0)
	MovementLoopAddLocation(NPC, -137.92, -2.56, 20.52, 2, 0)
	MovementLoopAddLocation(NPC, -129.41, -2.57, 19.94, 2, 0)
	MovementLoopAddLocation(NPC, -126.23, -2.56, 18.19, 2, 0)
	MovementLoopAddLocation(NPC, -122.83, -2.55, 14.43, 2, 0)
	MovementLoopAddLocation(NPC, -114.21, -2.61, 17.31, 2, 0)
	MovementLoopAddLocation(NPC, -109.99, -2.64, 17.76, 2, 0)
	MovementLoopAddLocation(NPC, -103.32, -2.67, 19.41, 2, 0)
	MovementLoopAddLocation(NPC, -99.51, -2.68, 17.5, 2, 0)
	MovementLoopAddLocation(NPC, -94.95, -2.72, 17.96, 2, 0)
	MovementLoopAddLocation(NPC, -87.91, -2.7, 15.73, 2, 0)
	MovementLoopAddLocation(NPC, -80.37, -2.73, 16.74, 2, 0)
	MovementLoopAddLocation(NPC, -73.37, -2.7, 24.81, 2, 0)
	MovementLoopAddLocation(NPC, -61.57, -2.68, 26.83, 2, 0)
	MovementLoopAddLocation(NPC, -50.97, -2.78, 26.87, 2, 0)
	MovementLoopAddLocation(NPC, -46.63, -2.62, 29.66, 2, 0)
	MovementLoopAddLocation(NPC, -44.9, -2.46, 34.15, 2, 0)
	MovementLoopAddLocation(NPC, -50.13, -2.46, 37.13, 2, 0)
	MovementLoopAddLocation(NPC, -54.52, -2.63, 34.25, 2, 0)
	MovementLoopAddLocation(NPC, -61.37, -2.76, 33.77, 2, 0)
	MovementLoopAddLocation(NPC, -65.66, -2.71, 32.21, 2, 0)
	MovementLoopAddLocation(NPC, -74.41, -2.67, 31.71, 2, 0)
	MovementLoopAddLocation(NPC, -76.57, -2.76, 33.66, 2, 0)
	MovementLoopAddLocation(NPC, -96.97, -2.72, 31.94, 2, 0)
	MovementLoopAddLocation(NPC, -101.32, -2.71, 26.16, 2, 0)
	MovementLoopAddLocation(NPC, -108.64, -2.71, 24.22, 2, 0)
	MovementLoopAddLocation(NPC, -112.72, -2.63, 21.67, 2, 0)
	MovementLoopAddLocation(NPC, -121.34, -2.6, 20.29, 2, 0)
	MovementLoopAddLocation(NPC, -126.81, -2.61, 23.84, 2, 0)
	MovementLoopAddLocation(NPC, -128.9, -2.63, 27.83, 2, 0)
	MovementLoopAddLocation(NPC, -134.67, -2.63, 31.56, 2, 0)
	MovementLoopAddLocation(NPC, -139.13, -2.61, 30.96, 2, 0)
	MovementLoopAddLocation(NPC, -140.67, -2.59, 28.5, 2, 0)
end

function StartPath1Reverse(NPC)
	MovementLoopAddLocation(NPC, -140.67, -2.59, 28.5, 2, 0)
	MovementLoopAddLocation(NPC, -139.13, -2.61, 30.96, 2, 0)
	MovementLoopAddLocation(NPC, -134.67, -2.63, 31.56, 2, 0)
	MovementLoopAddLocation(NPC, -128.9, -2.63, 27.83, 2, 0)
	MovementLoopAddLocation(NPC, -126.81, -2.61, 23.84, 2, 0)
	MovementLoopAddLocation(NPC, -121.34, -2.6, 20.29, 2, 0)
	MovementLoopAddLocation(NPC, -112.72, -2.63, 21.67, 2, 0)
	MovementLoopAddLocation(NPC, -108.64, -2.71, 24.22, 2, 0)
	MovementLoopAddLocation(NPC, -101.32, -2.71, 26.16, 2, 0)
	MovementLoopAddLocation(NPC, -96.97, -2.72, 31.94, 2, 0)
	MovementLoopAddLocation(NPC, -76.57, -2.76, 33.66, 2, 0)
	MovementLoopAddLocation(NPC, -74.41, -2.67, 31.71, 2, 0)
	MovementLoopAddLocation(NPC, -65.66, -2.71, 32.21, 2, 0)
	MovementLoopAddLocation(NPC, -61.37, -2.76, 33.77, 2, 0)
	MovementLoopAddLocation(NPC, -54.52, -2.63, 34.25, 2, 0)
	MovementLoopAddLocation(NPC, -50.13, -2.46, 37.13, 2, 0)
	MovementLoopAddLocation(NPC, -44.9, -2.46, 34.15, 2, 0)
	MovementLoopAddLocation(NPC, -46.63, -2.62, 29.66, 2, 0)
	MovementLoopAddLocation(NPC, -50.97, -2.78, 26.87, 2, 0)
	MovementLoopAddLocation(NPC, -61.57, -2.68, 26.83, 2, 0)
	MovementLoopAddLocation(NPC, -73.37, -2.7, 24.81, 2, 0)
	MovementLoopAddLocation(NPC, -80.37, -2.73, 16.74, 2, 0)
	MovementLoopAddLocation(NPC, -87.91, -2.7, 15.73, 2, 0)
	MovementLoopAddLocation(NPC, -94.95, -2.72, 17.96, 2, 0)
	MovementLoopAddLocation(NPC, -99.51, -2.68, 17.5, 2, 0)
	MovementLoopAddLocation(NPC, -103.32, -2.67, 19.41, 2, 0)
	MovementLoopAddLocation(NPC, -109.99, -2.64, 17.76, 2, 0)
	MovementLoopAddLocation(NPC, -114.21, -2.61, 17.31, 2, 0)
	MovementLoopAddLocation(NPC, -122.83, -2.55, 14.43, 2, 0)
	MovementLoopAddLocation(NPC, -126.23, -2.56, 18.19, 2, 0)
	MovementLoopAddLocation(NPC, -129.41, -2.57, 19.94, 2, 0)
	MovementLoopAddLocation(NPC, -137.92, -2.56, 20.52, 2, 0)
	MovementLoopAddLocation(NPC, -140.28, -2.57, 22.58, 2, 0)
end