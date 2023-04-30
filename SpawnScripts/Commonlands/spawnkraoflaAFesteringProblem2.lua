--[[
    Script Name    : SpawnScripts/Commonlands/spawnkraoflaAFesteringProblem2.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.29 05:04:27
    Script Purpose : For Freeport Froglok quest
                   : 
--]]
function spawn(NPC)
Camp1Spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function Camp1Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
    local aQeynosianScout1 = SpawnByLocationID(zone, 299822)
    local aQeynosianScout2 = SpawnByLocationID(zone, 299824)
    local aQeynosianScout3 = SpawnByLocationID(zone, 299825)
    local aQeynosianProtector = SpawnByLocationID(zone, 299826)

AddTimer(NPC,6000,"CampSpawnCheck_Stage1")
end

function CampSpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
    local aQeynosianScout1 = GetSpawnByLocationID(zone, 299822)
    local aQeynosianScout2 = GetSpawnByLocationID(zone, 299824)
    local aQeynosianScout3 = GetSpawnByLocationID(zone, 299825)
    local aQeynosianProtector = GetSpawnByLocationID(zone, 299826)
    local Kraofla = GetSpawnByLocationID(zone, 133784668)
if IsAlive(aQeynosianScout1) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(aQeynosianScout2) == true then
   AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(aQeynosianScout3) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(aQeynosianProtector) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    else
    AddTimer(NPC,6000,"Camp1_Stage2",1, Spawn)
end
end

function Camp1_Stage2(NPC, Spawn)
  local zone = GetZone(NPC)
    if GetSpawnByLocationID(zone, 133784668) ==nil then
    local Kraofla = SpawnByLocationID(zone, 133784668)
    FaceTarget(Kraofla, Spawn)
    Attack(Kraofla, Spawn)
    end
    AddTimer(NPC, 6000, "Camp1_Stage2Check")
end

function Camp1_Stage2Check(NPC, Spawn)
  local zone = GetZone(NPC)
  local KraoflaSpawn = GetSpawnByLocationID(zone, 133784668) 
 if IsAlive(KraoflaSpawn) == true then
    AddTimer(NPC,6000,"Camp1_Stage2Check",1,Spawn)
   else
    AddTimer(NPC, 40000, "Camp1Reset",1,Spawn)
  end
end

    
function Camp1Reset(NPC)
    Despawn(NPC)
end