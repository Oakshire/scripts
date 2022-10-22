--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/RotweedInvisCurbe.lua (Lol, typo)
    Script Author  : Dorbin
    Script Date    : 2022.10.21 12:10:53
    Script Purpose : Facilitates Rotweed Encounter for 'Destroy the Corruption' in Oakmyst Forest.  SpawnLocationID(133779141), SpawnID (8300054) 
    Note: Renamed: a lingering corruption
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
local zone = GetZone(NPC)
local Thistle1 = GetSpawnByLocationID(zone, 133779137)
local Thistle2 = GetSpawnByLocationID(zone, 133779138)
local Thistle3 = GetSpawnByLocationID(zone, 133779139)
local Rotweed = GetSpawnByLocationID(zone, 133779140)
    if HasQuest(Spawn, 230) and GetQuestStep(Spawn,230)==1 and Rotweed ==nil and Thistle1 ~=nil and Thistle2 ~=nil and Thistle3 ~=nil then
    SpawnSet(Thistle1, "model_type", "274")
    SpawnSet(Thistle1, "show_name", "1")
    SpawnSet(Thistle1, "targetable", "1")    
    SpawnSet(Thistle1, "attackable", "1")
    SpawnSet(Thistle1, "show_level", "1")
    SpawnSet(Thistle1, "faction", "1")
    SpawnSet(Thistle1, "name", "Rotweed Thistle")
    
    SpawnSet(Thistle2, "model_type", "274")
    SpawnSet(Thistle2, "show_name", "1")
    SpawnSet(Thistle2, "targetable", "1")    
    SpawnSet(Thistle2, "attackable", "1")
    SpawnSet(Thistle2, "show_level", "1")
    SpawnSet(Thistle2, "faction", "1")
    SpawnSet(Thistle2, "name", "Rotweed Thistle")
    
    SpawnSet(Thistle3, "model_type", "274")
    SpawnSet(Thistle3, "show_name", "1")
    SpawnSet(Thistle3, "targetable", "1")    
    SpawnSet(Thistle3, "attackable", "1")
    SpawnSet(Thistle3, "show_level", "1")
    SpawnSet(Thistle3, "faction", "1")
    SpawnSet(Thistle3, "name", "Rotweed Thistle")
  
    AddTimer(NPC,1000,"AttackPlayer",1,Spawn)
    AddTimer(NPC,6000,"RotweedCheck",1,Spawn)
    end
end

function AttackPlayer(NPC,Spawn)    --THISTLES ATTACK
local zone = GetZone(NPC)
local Thistle1 = GetSpawnByLocationID(zone, 133779137)
local Thistle2 = GetSpawnByLocationID(zone, 133779138)
local Thistle3 = GetSpawnByLocationID(zone, 133779139)

Attack(Thistle1,Spawn)
Attack(Thistle2,Spawn)
Attack(Thistle3,Spawn)
end

function  RotweedCheck(NPC,Spawn)
local zone = GetZone(NPC)
local Thistle1 = GetSpawnByLocationID(zone, 133779137)
local Thistle2 = GetSpawnByLocationID(zone, 133779138)
local Thistle3 = GetSpawnByLocationID(zone, 133779139)
local Rotweed = GetSpawnByLocationID(zone, 133779140)
if GetSpawnByLocationID(zone, 133779141) ~=nil then --CHECKS FOR INVIS CUBE
if not IsAlive(Thistle1) and not IsInCombat(Thistle1) and not IsAlive(Thistle2) and not IsInCombat(Thistle2) and not IsAlive(Thistle3) and not IsInCombat(Thistle3)  and Rotweed == nil then
    SpawnByLocationID(zone, 133779140)      --SPAWNS ROTWEED
    AddTimer(NPC,1500,"AttackPlayer2",1,Spawn)
else
     AddTimer(NPC,6000,"RotweedCheck",1,Spawn) --RESETS CHECK UNTIL THISTLES ARE GONE
end
end
end

function AttackPlayer2(NPC,Spawn) --ROTWEED ATTACKS
local zone = GetZone(NPC)
local Rotweed = GetSpawnByLocationID(zone, 133779140)
Attack(Rotweed,Spawn)
end