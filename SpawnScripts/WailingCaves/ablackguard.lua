--[[
    Script Name    : SpawnScripts/WailingCaves/ablackguard.lua
    Script Author  : Premierio015
    Script Date    : 2020.06.30 09:06:49
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
SetAggroRadius(NPC, 20, true)
end


function death(NPC, Spawn)
-- BELOW CHECKS IF ALL BLACKGUARDS IN ROOM IS DEAD, OPENS SECRET DOOR AND CALL FUNCTIONS IN GHI'ZARD WORG MASTER'S SCRIPT
local zone = GetZone(Spawn)
local blackguard1 = GetSpawnByLocationID(zone, 404841)
local blackguard2 = GetSpawnByLocationID(zone, 404844)
local blackguard3 = GetSpawnByLocationID(zone, 133769612)
local blackguard4 = GetSpawnByLocationID(zone, 133769613)
if not IsAlive(blackguard1) and not IsAlive(blackguard2) and not IsAlive(blackguard3) and not IsAlive(blackguard4) then
local door = GetSpawn(NPC, 2580104)
OpenDoor(door)
local zone = GetZone(Spawn)
local WorgMaster = GetSpawnByLocationID(zone, 404870)
if WorgMaster ~= nil then
AddTimer(WorgMaster, 3000, "WorgMaster")
local Worg = GetSpawnByLocationID(zone, 404852)
if Worg ~= nil then
AddTimer(Worg, 3000, "FollowMaster")
end
    end
	   end 
	      end



function respawn(NPC)
         spawn(NPC)
end
