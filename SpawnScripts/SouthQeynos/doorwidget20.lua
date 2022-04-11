--[[
    Script Name    : SpawnScripts/SouthQeynos/doorwidget20.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.10 03:04:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 3, "InRange", "LeaveRange")		
end


function InRange(NPC)
    if GetSpawnID(Spawn,2310034) ~=nil then
    OpenDoor(NPC)
    end
end

function LeaveRange(NPC)
    if GetSpawnID(Spawn,2310034) ==nil then
    CloseDoor(NPC)
    end
end

function respawn(NPC)
	spawn(NPC)
end