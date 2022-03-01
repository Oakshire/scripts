--[[
    Script Name    : SpawnScripts/Freeport/SlaughtergrotttheVigilant.lua
    Script Author  : premierio015
    Script Date    : 2020.07.11 07:07:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
 local choice = math.random(1, 2)
 if choice == 1 then
PlayFlavor(NPC, "", "You want to explore? Rediscover lost lands!", "", 1689589577, 4560189, Spawn)
 else
PlayFlavor(NPC, "", "Adventure!  You want it!  I tell you where to get it!", "", 1689589577, 4560189, Spawn)
end
   end
      
function LeaveRange(NPC, Spawn)

end