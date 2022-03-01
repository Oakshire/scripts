--[[
    Script Name    : SpawnScripts/WailingCaves/doorsecretboss.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.04 06:07:17
    Script Purpose : 
                   : 
--]]

local WorgMasterID = 404870


function spawn(NPC)

end



function casted_on(NPC, Spawn, Message)
if Message == "Open" then
local WorgMaster = GetSpawnByLocationID(NPC, WorgMasterID)
MoveToLocation(WorgMaster, -266.80, -49.44, -74.92, 2)
end
    end
 


function respawn(NPC)
         spawn(NPC)
end
