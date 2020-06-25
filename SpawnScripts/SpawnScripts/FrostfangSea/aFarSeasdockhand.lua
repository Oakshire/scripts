--[[
	Script Name	: SpawnScripts/FrostfangSea/aFarSeasdockhand.lua
	Script Purpose	: a Far Seas dockhand <Far Seas Trading Company>
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
	MovementLoopAddLocation(NPC, -356.89, 30.06, 221.89, 2, 5)
	MovementLoopAddLocation(NPC, -340.84, 30.68, 213.38, 2, 0)
	MovementLoopAddLocation(NPC, -346.85, 30.68, 190.74, 2, 0)
	MovementLoopAddLocation(NPC, -372.11, 29.19, 188.43, 2, 0)
	MovementLoopAddLocation(NPC, -382, 27.92, 172.56, 2, 0)
	MovementLoopAddLocation(NPC, -396.69, 22.43, 139.94, 2, 0)
	MovementLoopAddLocation(NPC, -413.74, 24.45, 117.98, 2, 0)
	MovementLoopAddLocation(NPC, -407.96, 26.02, 96.43, 2, 0)
	MovementLoopAddLocation(NPC, -385.31, 38.69, 59.85, 2, 0)
	MovementLoopAddLocation(NPC, -388.58, 41.35, 48.87, 2, 0)
	MovementLoopAddLocation(NPC, -423.39, 52.31, 54.65, 2, 0)
	MovementLoopAddLocation(NPC, -422.64, 52.79, 47.93, 2, 0)
	MovementLoopAddLocation(NPC, -401.55, 52.79, 27.18, 2, 0)
	MovementLoopAddLocation(NPC, -438.03, 53.19, 25.34, 2, 0)
	MovementLoopAddLocation(NPC, -438.31, 52.31, 42.13, 2, 0)
	MovementLoopAddLocation(NPC, -423.39, 52.31, 54.65, 2, 0)
	MovementLoopAddLocation(NPC, -388.58, 41.35, 48.87, 2, 0)
	MovementLoopAddLocation(NPC, -385.31, 38.69, 59.85, 2, 0)
	MovementLoopAddLocation(NPC, -407.96, 26.02, 96.43, 2, 0)
	MovementLoopAddLocation(NPC, -413.74, 24.45, 117.98, 2, 0)
	MovementLoopAddLocation(NPC, -396.69, 22.43, 139.94, 2, 0)
	MovementLoopAddLocation(NPC, -382, 27.92, 172.56, 2, 0)
	MovementLoopAddLocation(NPC, -372.11, 29.19, 188.43, 2, 0)
	MovementLoopAddLocation(NPC, -346.85, 30.68, 190.74, 2, 0)
	MovementLoopAddLocation(NPC, -340.84, 30.68, 213.38, 2, 0)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "", "The Far Seas Trading Company is always looking for a few strong backs and brave souls.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Watch your step around these parts, traveler.", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "Safe travels to you.", "", 0, 0, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
end