--[[
    Script Name    : SpawnScripts/WaillingCaves/AdvisorKreLak.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 04:07:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 500, "door_closed") -- DOOR CLOSED BY DEFAULT
end

function door_closed(NPC, Spawn)
local door = GetSpawn(NPC, 2580086)
CloseDoor(door)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
local door = GetSpawn(NPC, 2580086) -- OPEN SECRET DOOR IF ADVISOR IS DEAD
OpenDoor(door)
end

function respawn(NPC)
	spawn(NPC)
end