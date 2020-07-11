--[[
    Script Name    : SpawnScripts/WailingCaves/abloodthirstyworg4.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.08 08:07:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function FollowMaster4(NPC, Spawn)
local zone = GetZone(NPC)
local WorgMaster = GetSpawnByLocationID(zone, 404870)
if WorgMaster ~= nil then
SetFollowTarget(NPC, WorgMaster)
SetSpeed(NPC , 2)
ToggleFollow(NPC)
end
   end

function respawn(NPC)

end

