--[[
    Script Name    : SpawnScripts/Freeport/Scythe.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.10 08:08:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
     local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "", "Being on the Overlord's payroll is a lot easier than ambushing caravans.", "nod", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "The Green Hoods of Qeynos lack the will needed to get things done.", "", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "",  "The Jackal's attacks on the Bloodskull Orcs have been masterful!  He fights like a man possessed!", "", 1689589577, 4560189, Spawn) 
    elseif choice == 4 then
    PlayFlavor(NPC, "", "At least the Overlord has the vision to see what needs to be done.  The Green Hoods have gotten soft.", "snicker", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Ha!  The Overlord had to send out his knights to ask the Red Hoods to join him!", "chuckle", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)

end

