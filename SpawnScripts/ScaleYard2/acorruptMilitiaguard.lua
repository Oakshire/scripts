--[[
    Script Name    : SpawnScripts/ScaleYard2/acorruptMilitiaguard.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.28 07:08:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
  SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
  EmoteLoop (NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function EmoteLoop(NPC)
 local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 12182)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 2809)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end


function InRange(NPC, Spawn)
PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
end

function LeaveRange(NPC, Spawn)

end

function attacked(NPC, Spawn)
local choice = math.random(1, 4)
if choice == 1 then
PlayFlavor(NPC, "", "Welcome to a lifetime of slavery.", "", 1689589577, 4560189)
elseif choice == 2 then
PlayFlavor(NPC, "", "The iksar fear nothing!", "", 1689589577, 4560189)
elseif choice == 3 then
PlayFlavor(NPC, "", "You made a very serious mistake, my subject.", "", 1689589577, 4560189)
else
PlayFlavor(NPC, "", "Now, prepare to face an eternity of fear.", "", 1689589577, 4560189)
end
   end

function death(NPC, Spawn)
PlayFlavor(NPC, "", "Fall back!  We'll meet again.", "", 1689589577, 4560189)
end
  