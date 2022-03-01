--[[
    Script Name    : SpawnScripts/The Vault of the Fallen/Tseralith.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.17 02:07:33
    Script Purpose : 
                   : 
--]]
 
--- ALL SERVANTS OF TSERALITH ID'S
local Servant1ID = 345605
local Servant2ID = 345606
local Servant3ID = 345607
local Servant4ID = 345608
local Servant5ID = 345609
local Servant6ID = 345610


function spawn(NPC)
	AddTimer(NPC, 3000, "tseralith0", 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function tseralith0(NPC, Spawn)
PlayFlavor(NPC, "", "Summoning vengeance is foolish. You will now join my legion of souls.", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 5000, "tseralith01", 1, Spawn)
end

function spawn_hands(NPC, Spawn)
      Say(NPC, "TEST")
     local zone = GetZone(NPC)
     local minion1 = GetSpawnByLocationID(zone, 345624)
     local minion2 = GetSpawnByLocationID(zone, 345625)
     if minion1 or minion2 == nil then
     SpawnByLocationID(zone,  345624)
     SpawnByLocationID(zone, 345625)
end
   end


function tseralith01(NPC, Spawn)
PlayFlavor(NPC, "", "When it was done, it was done without question.", "", 1689589577, 4560189, Spawn)
AddTimer(NPC, 30000, "spawn_hands", 1, Spawn)
end

function death(NPC, Spawn)
AddTimer(NPC, 3000, "tseralith_death", 1, Spawn)
end

function tseralith_death(NPC, Spawn)
    local zone = GetZone(Spawn)
    local Servant1 = GetSpawnByLocationID(zone, Servant1ID)
     local Servant2 = GetSpawnByLocationID(zone, Servant2ID)
     local Servant3 = GetSpawnByLocationID(zone, Servant3ID)
       local Servant4 = GetSpawnByLocationID(zone, Servant4ID)
         local Servant5 = GetSpawnByLocationID(zone, Servant5ID)
           local Servant6 = GetSpawnByLocationID(zone, Servant6ID)
    KillSpawn(Servant1, null, 1)
    KillSpawn(Servant2, null, 1)
    KillSpawn(Servant3, null, 1)
    KillSpawn(Servant4, null, 1)
    KillSpawn(Servant5, null, 1)
    KillSpawn(Servant6, null, 1)
end

function respawn(NPC)
	spawn(NPC)
end