--[[
    Script Name    : SpawnScripts/WailingCaves/ablackguard.lua
    Script Author  : Premierio015
    Script Date    : 2020.06.30 09:06:49
    Script Purpose : 
                   : 
--]]



function spawn(NPC)
         
end



function respawn(NPC)
         spawn(NPC)
end

function group_dead(NPC, Spawn)
local widget = GetSpawnByLocationID(Spawn, 439914)
UseWidget(widget)
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