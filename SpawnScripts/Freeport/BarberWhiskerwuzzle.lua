--[[
    Script Name    : SpawnScripts/Freeport/BarberWhiskerwuzzle.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 08:08:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "", "Got a hot date?  Ya need ta get yerself fixed up!", "woowoo", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "So ya want ta hide from someone huh?  Hey, it's none o' my business... Just curious...", "wink", 1689589577, 4560189, Spawn)
   end
end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "Hey you!  Scruffy!  Get over here!  You could use some work done!", "beckon", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

