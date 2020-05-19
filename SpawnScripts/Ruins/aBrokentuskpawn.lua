--[[
	Script Name	: SpawnScripts/Ruins/aBrokentuskpawn.lua
	Script Purpose	: a Brokentusk pawn
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/BrokentuskVoiceOvers.lua")
local spoke = false

function spawn(NPC)
	spoke = false
	local sli = GetSpawnLocationID(NPC)

	if sli == 133076 or sli == 133077 or sli == 133078 or sli == 133079 then
		-- The sparring pawns.
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 10783, 450) -- attack
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 13058, 450) -- taunt combat art
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 12065, 450) -- pugilist parry
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 12050, 450) -- pugilist dodge forehand 
	elseif sli == 133054 or sli == 133055 or sli == 159761 or sli == 133058 or sli == 133070 or sli == 133071 or sli == 133064 or sli == 159762 or sli == 133061 or sli == 159768 then
		-- The pawns cheering on the sparring pawns.
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 11150, 43918) -- cheer
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 10760 , 43528) -- applaud
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 10856, 43624) -- boggle
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 11152, 43920) -- chuckle
		AddVisualStateLoop(NPC, 1000, math.random(0, 1000), 11285, 44053) -- curse
	elseif sli == 159746 then
		StartPath1(NPC)
	elseif sli == 133018 then
		StartPath2(NPC)
	elseif sli == 159758 then
		StartPath3(NPC)
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
	MovementLoopAddLocation(NPC, -120.64, -2.58, 17.04, 4, 0)
	MovementLoopAddLocation(NPC, -89.23, -2.69, 25, 4, 0)
	MovementLoopAddLocation(NPC, -53.93, -2.63, 27.08, 4, 0)
	MovementLoopAddLocation(NPC, -55.71, -2.52, 33.44, 4, 0)
	MovementLoopAddLocation(NPC, -89.93, -2.74, 36.69, 4, 0)
	MovementLoopAddLocation(NPC, -103.84, -2.64, 22.62, 4, 0)
	MovementLoopAddLocation(NPC, -120.87, -2.6, 19.65, 4, 0)
	MovementLoopAddLocation(NPC, -135.95, -2.61, 31.13, 4, 0)
	MovementLoopAddLocation(NPC, -138.46, -2.58, 23.24, 4, 0)
end

function StartPath2(NPC)
	MovementLoopAddLocation(NPC, -119.97, 2.26, 127.77, 4, 0)
	MovementLoopAddLocation(NPC, -123.42, 0.92, 107.14, 4, 0)
	MovementLoopAddLocation(NPC, -123.68, -2.62, 73.93, 4, 0)
	MovementLoopAddLocation(NPC, -101.58, -2.56, 63.45, 4, 0)
	MovementLoopAddLocation(NPC, -96.64, -2.59, 75.03, 4, 0)
	MovementLoopAddLocation(NPC, -119.92, -2.63, 94.64, 4, 0)
	MovementLoopAddLocation(NPC, -119.77, 2.26, 128.79, 4, 0)
	MovementLoopAddLocation(NPC, -127.08, 2.26, 141.62, 4, 0)
end

function StartPath3(NPC)
	MovementLoopAddLocation(NPC, -122.63, 2.28, 120.17, 4, 0)
	MovementLoopAddLocation(NPC, -123.33, -1.71, 98.13, 4, 0)
	MovementLoopAddLocation(NPC, -97.93, -2.42, 71.18, 4, 0)
	MovementLoopAddLocation(NPC, -91.85, -2.63, 52.03, 4, 0)
	MovementLoopAddLocation(NPC, -97.82, -2.45, 53.78, 4, 0)
	MovementLoopAddLocation(NPC, -118.73, -2.54, 74.65, 4, 0)
	MovementLoopAddLocation(NPC, -123.79, -2.62, 75.76, 4, 0)
	MovementLoopAddLocation(NPC, -123.07, 2.28, 120.49, 4, 0)
	MovementLoopAddLocation(NPC, -149.83, 2.26, 142.84, 4, 0)
end