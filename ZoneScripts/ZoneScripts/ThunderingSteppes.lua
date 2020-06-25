--[[
	Script Name		:	ThunderingSteppes.lua
	Script Purpose	:	Handle various things around the steppes
	Script Author	:	Jabantiz
	Script Date		:	7/11/2015
	Script Notes	:	
--]]

-- Location ID's for the doors
local NorthDoor = 437017
local SouthDoor = 437013

local NorthDoorClosed = 352
local SouthDoorClosed = 170

function init_zone_script(zone)
    SetLocationProximityFunction(zone, 172.5, 18.5, -880.97, 10, "GriffonTower", "Leave")   -- Ant Gate
    SetLocationProximityFunction(zone, -174.68, 13.41, 509.50, 10, "GriffonTower", "Leave") -- SE Station
    SetLocationProximityFunction(zone, 254.41, -8.92, 1343.37, 10, "GriffonTower", "Leave") -- ColdWind
    SetLocationProximityFunction(zone, 622.95, 18.45, -234.11, 10, "GriffonTower", "Leave") -- Thundermist
    SetLocationProximityFunction(zone, -394.25, -23.21, -418.25, 10, "GriffonTower", "Leave") -- Docks
end

function player_entry(zone, player)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
	local door1 = GetSpawnByLocationID(zone, NorthDoor)
	local door2 = GetSpawnByLocationID(zone, SouthDoor)
	
	if door1 ~= nil then
		if GetHeading(door1) == NorthDoorClosed then
			UseWidget(door1)
		end
	end
	
	if door2 ~= nil then
		if GetHeading(door2) == SouthDoorClosed then
			UseWidget(door2)
		end
	end
end

function dusk(zone)
	local door1 = GetSpawnByLocationID(zone, NorthDoor)
	local door2 = GetSpawnByLocationID(zone, SouthDoor)
	
	if door1 ~= nil then
		if GetHeading(door1) ~= NorthDoorClosed then
			UseWidget(door1)
		end
	end
	
	if door2 ~= nil then
		if GetHeading(door2) ~= SouthDoorClosed then
			UseWidget(door2)
		end
	end
end

function GriffonTower(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
	end
end

function Leave(zone, Spawn)
end