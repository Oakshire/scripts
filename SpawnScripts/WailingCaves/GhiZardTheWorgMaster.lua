--[[
    Script Name    : SpawnScripts/WailingCaves/GhiZardTheWorgMaster.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.08 05:07:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    SetAggroRadius(NPC, 20, true)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function WorgMaster(NPC, Spawn)
MoveToLocation(NPC, -271.37, -49.44, -75.35, 2, "WorgMaster2")
local zone = GetZone(NPC)
local LordRee = GetSpawnByLocationID(zone, 404840)
if LordRee ~= nil then
PlayFlavor(LordRee, "", "Ahh, Ghi'Zard, just in time!  Are your worgs ready to feed?", "scheme", 1689589577, 4560189, Spawn)
end
local Worg = GetSpawnByLocationID(zone, 404852)
if Worg ~= nil then
AddTimer(Worg, 1000, "FollowMaster")
end
   end

function WorgMaster2(NPC, Spawn)
MoveToLocation(NPC, -271.56, -49.35, -80.81, 2, "WorgMaster3")
PlayFlavor(NPC, "", "Just picking my target, Master.", "", 1689589577, 4560189, Spawn)
end

function WorgMaster3(NPC, Spawn)
MoveToLocation(NPC, -278.72, -49.44, -85.01, 2, "WorgMaster4")
end

-- BELOW MAKES WORGS AND GHI'ZARD ATTACKABLE


function WorgMaster4(NPC, Spawn)
 local zone = GetZone(NPC)
local Worg1 = GetSpawnByLocationID(zone, 404849)
local Worg2 = GetSpawnByLocationID(zone, 404850)
local Worg3 = GetSpawnByLocationID(zone, 404851)
local Worg4 = GetSpawnByLocationID(zone, 404852)   
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "Find your food, worgs!  Attack!", "", 1689589577, 4560189, Spawn)
SpawnSet(NPC, "attackable", "1")
SpawnSet(NPC, "show_level", "1")
SpawnSet(NPC, "faction", "1")

SpawnSet(Worg1, "attackable", "1")
SpawnSet(Worg1, "show_level", "1")
SpawnSet(Worg1, "faction", "1")

SpawnSet(Worg2, "attackable", "1")
SpawnSet(Worg2, "show_level", "1")
SpawnSet(Worg2, "faction", "1")

SpawnSet(Worg3, "attackable", "1")
SpawnSet(Worg3, "show_level", "1")
SpawnSet(Worg3, "faction", "1")

SpawnSet(Worg4, "attackable", "1")
SpawnSet(Worg4, "show_level", "1")
SpawnSet(Worg4, "faction", "1")
end





-- BELOW 

function death(NPC, Spawn)
local zone = GetZone(NPC)
local LordRee = GetSpawnByLocationID(zone, 404840)
if LordRee ~= nil then
PlayFlavor(LordRee, "", "Poor Ghi'Zard, I'll have to feed him to the spiders.  As for you, my patience is gone.  It's time to deal with you myself.  Ladies, after you!", "", 1689589577, 4560189, Spawn)
AddTimer(LordRee, 1000, "FinalPhase")
end
   end