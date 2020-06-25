--[[
    Script Name    : SpawnScripts/CircleElders/Breeze.lua
    Script Author  : premierio015
    Script Date    : 2020.05.24 10:05:47
    Script Purpose : Breeze Script for Circle Event
                   : 
--]]

local KaylID = 433249

function spawn(NPC)
        
end


function respawn(NPC)
         spawn(NPC)
end



function death(NPC, Spawn) -- after Breeze dies, Kayl starts speech and call function "KillDialogue" inside his script.
local zone = GetZone(NPC)
local Kayl = GetSpawnByLocationID(zone, KaylID)
if Kayl ~= nil then
SpawnSet(Kayl, "attackable", 1)
SpawnSet(Kayl, "show_level", 1)
SpawnSet(Kayl, "targetable", 1)
SpawnSet(Kayl, "visual_state", 0)
PlayFlavor(Kayl, "", "Good show, but it's over now. You are no match for my strength. I will... Wait! Wh... who's there?", "point", 1689589577, 4560189)
AddTimer(Kayl, 1000, "KillDialogue", Spawn)
end
   end