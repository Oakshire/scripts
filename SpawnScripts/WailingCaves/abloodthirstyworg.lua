--[[
    Script Name    : SpawnScripts/WailingCaves/abloodthirstyworg.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.08 06:07:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function FollowMaster(NPC, Spawn)
local zone = GetZone(NPC)
local WorgMaster = GetSpawnByLocationID(zone, 404870)
if WorgMaster ~= nil then
SetFollowTarget(NPC, WorgMaster)
SetSpeed(NPC , 2)
ToggleFollow(NPC)
local Worg404851 = GetSpawnByLocationID(zone, 404851)
if Worg404851 ~= nil then
AddTimer(Worg404851, 500, "FollowMaster2")
end
   end
      end

function respawn(NPC)
         spawn(NPC)
end

