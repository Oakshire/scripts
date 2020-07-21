--[[
    Script Name    : SpawnScripts/Freeport/IzzayMeestere.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.20 07:07:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
FaceTarget(NPC, Spawn)
choice = math.random(1, 3)
if choice == 1 then
PlayFlavor(NPC, "", "They listens in to us.  It's only fair to listens to them.", "grumble", 1689589577, 4560189, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "", "What is the Militia doing this time?", "lookaway", 1689589577, 4560189, Spawn)
else
PlayFlavor(NPC, "", "It is sure ugly here!", "shiver", 1689589577, 4560189, Spawn)
end
   end


function InRange(NPC, Spawn)
choice = math.random(1, 3)
if choice == 1 then
PlayFlavor(NPC, "", "They listens in to us.  It's only fair to listens to them.", "grumble", 1689589577, 4560189, Spawn)
elseif choice == 2 then
PlayFlavor(NPC, "", "What is the Militia doing this time?", "lookaway", 1689589577, 4560189, Spawn)
else
PlayFlavor(NPC, "", "It is sure ugly here!", "shiver", 1689589577, 4560189, Spawn)
end
   end

function LeaveRange(NPC, Spawn)

end

function respawn(NPC)
         spawn(NPC)
end

