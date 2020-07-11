--[[
    Script Name    : SpawnScripts/WailingCaves/abloodthirstyworg2.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.08 07:07:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end



function respawn(NPC)

end

function FollowMaster2(NPC, Spawn)
local zone = GetZone(NPC)
local Worg404852 = GetSpawnByLocationID(zone, 404870)
if Worg404852 ~= nil then
SetFollowTarget(NPC, Worg404852)
SetSpeed(NPC , 2)
ToggleFollow(NPC)
local Worg404850 = GetSpawnByLocationID(zone, 404850)
if Worg404850 ~= nil then
AddTimer(Worg404850, 500, "FollowMaster3")
end
   end
       end