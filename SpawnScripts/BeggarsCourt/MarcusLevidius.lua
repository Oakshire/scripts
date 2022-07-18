--[[
	Script Name	: SpawnScripts/BeggarsCourt/MarcusLevidius.lua
	Script Purpose	: Marcus Levidius 
	Script Author	: John Adams
	Script Date	: 2009.04.05 (18.7.2022 by torsten, waypoints)
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
    waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Yes, yes, hello. I'm busy.", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Oh, drat, I hope not. Oh, sorry, I thought you might have meant the weather.", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Grim determination has gotten us to where we are now.", "agree", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "One day, we shall reign supreme over the lessers.", "brandish", 1689589577, 4560189, Spawn)
	end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 39.71, -6.25, 46.31, 2, 0)
	MovementLoopAddLocation(NPC, 29.43, -5.75, 40.97, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 34.18, -5, 33, 2, 0)
	MovementLoopAddLocation(NPC, 26.31, -5.75, 32.09, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -17.58, -5, 17.83, 2, 0)
	MovementLoopAddLocation(NPC, -15.27, -4.99, 7.51, 2, 0)
	MovementLoopAddLocation(NPC, -10.51, -2.31, 11.61, 2, 0)
	MovementLoopAddLocation(NPC, -1.01, 1.94, 15.71, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 3.24, 2.66, 5.35, 2, 0)
	MovementLoopAddLocation(NPC, 15.59, 3.5, 7.75, 2, 0)
	MovementLoopAddLocation(NPC, 19.71, 3.5, 2.88, 2, 0)
	MovementLoopAddLocation(NPC, 21.91, 5.25, -14.45, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 7.21, 4.75, -23.88, 2, 0)
	MovementLoopAddLocation(NPC, -0.71, 3.75, -24.3, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, -13.99, 2, -4.07, 2, 0)
	MovementLoopAddLocation(NPC, 7, 2.71, 8.39, 2, 0)
	MovementLoopAddLocation(NPC, 48.64, 2.59, 9.6, 2, 0)
	MovementLoopAddLocation(NPC, 28.38, 2, 14.39, 2, 0)
	MovementLoopAddLocation(NPC, 47.81, 2.5, 10.96, 2, 0)
	MovementLoopAddLocation(NPC, 50, 1.93, 26.01, 2, math.random(8,12))
	MovementLoopAddLocation(NPC, 32.54, -5, 24.13, 2, 0)
	MovementLoopAddLocation(NPC, 29.27, -6.25, 46.87, 2, 0)
	MovementLoopAddLocation(NPC, 11.54, -6.51, 46.06, 2, 0)
end