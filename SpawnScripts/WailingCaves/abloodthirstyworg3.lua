--[[
    Script Name    : SpawnScripts/WailingCaves/abloodthirstyworg3.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.08 08:07:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function FollowMaster3(NPC, Spawn)
local zone = GetZone(NPC)
local WorgMaster = GetSpawnByLocationID(zone, 404870)
if WorgMaster ~= nil then
SetFollowTarget(NPC, WorgMaster)
SetSpeed(NPC , 2)
ToggleFollow(NPC)
local Worg404849 = GetSpawnByLocationID(zone, 404849)
if Worg404849 ~= nil then
AddTimer(Worg404849, 500, "FollowMaster4")
end
   end
      end

function respawn(NPC)

end

