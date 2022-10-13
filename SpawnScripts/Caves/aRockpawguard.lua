--[[
	Script Name	: SpawnScripts/Caves/aRockpawguard.lua
	Script Purpose	: a Rockpaw guard 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
    if GetSpawnLocationID(NPC)==133777792 then
	MovementLoopAddLocation(NPC, 37.27, 38.1, -78.57, 2, 0)
	MovementLoopAddLocation(NPC, 37.5, 38.44, -87.86, 2, 0)
	MovementLoopAddLocation(NPC, 38.27, 37.87, -110.65, 2, 15)
	MovementLoopAddLocation(NPC, 38.9, 38.23, -90.86, 2, 0)
	MovementLoopAddLocation(NPC, 34.6, 37.91, -77.1, 2, 15)
	MovementLoopAddLocation(NPC, 35.24, 37.87, -76.47, 2, 0)
	MovementLoopAddLocation(NPC, 21.48, 37.63, -90.82, 2, 0)

	elseif GetSpawnLocationID(NPC)==133777793 then
	MovementLoopAddLocation(NPC, 21.48, 37.63, -90.82, 2, 15)
	MovementLoopAddLocation(NPC, 26.11, 37.64, -98.57, 2, 0)
	MovementLoopAddLocation(NPC, 26.64, 37.87, -107.78, 2, 0)
	MovementLoopAddLocation(NPC, 26.3, 38.45, -115.9, 2, 0)
	MovementLoopAddLocation(NPC, 20.14, 38.7, -119.14, 2, 15)
	MovementLoopAddLocation(NPC, 21.13, 38.7, -119.25, 2, 0)
	MovementLoopAddLocation(NPC, 25.71, 38.17, -114.38, 2, 0)
	MovementLoopAddLocation(NPC, 25.91, 37.62, -103.29, 2, 0)
	MovementLoopAddLocation(NPC, 24.84, 37.86, -91.23, 2, 0)
	MovementLoopAddLocation(NPC, 21.63, 37.84, -88.36, 2, 0)
	MovementLoopAddLocation(NPC, 17.22, 37.83, -88.88, 2, 15)
	end
	end