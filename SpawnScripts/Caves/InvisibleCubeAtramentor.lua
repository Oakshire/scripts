--[[
    Script Name    : SpawnScripts/Caves/InvisibleCubeAtramentor.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.10 03:10:18
    Script Purpose : Atramentor Spawn Camp Script
                   : 
--]]

function spawn(NPC)

CampSpawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end




function CampSpawn(NPC, Spawn) -- Stage 1
    local zone = GetZone(NPC)
    local CampSpawn1 = SpawnByLocationID(zone, 133777642) --Atramentor(inactive)
    local CampSpawn2 = SpawnByLocationID(zone, 133777659)--Rockpaw Stonemaster
    local CampSpawn3 = SpawnByLocationID(zone, 133777660)--alabaster behemoth
    local CampSpawn4 = SpawnByLocationID(zone, 133777661)--alabaster behemoth
    local CampSpawn5 = SpawnByLocationID(zone, 133777662)--alabaster behemoth
    local CampSpawn6 = SpawnByLocationID(zone, 133777663)--alabaster behemoth
    local CampSpawn7 = SpawnByLocationID(zone, 133777643)--obsidian rocks
    local CampSpawn8 = SpawnByLocationID(zone, 133777656)--obsidian rocks
    local CampSpawn9 = SpawnByLocationID(zone, 133777657)--obsidian rocks
    local CampSpawn10 = SpawnByLocationID(zone, 133777658)--obsidian rocks

AddTimer(NPC,6000,"CampSpawnCheck_Stage1")
end

function CampSpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
    local CampSpawn2 = GetSpawnByLocationID(zone, 133777659)
    local CampSpawn3 = GetSpawnByLocationID(zone, 133777660)
    local CampSpawn4 = GetSpawnByLocationID(zone, 133777661)
    local CampSpawn5 = GetSpawnByLocationID(zone, 133777662)
    local CampSpawn6 = GetSpawnByLocationID(zone, 133777663)

if IsAlive(CampSpawn2) == true  then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn3) == true  then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn4) == true  then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn5) == true  then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn6) == true  then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    else
        
      AddTimer(NPC, 6000, "Camp_Stage2")
  end
end
   

function Camp_Stage2(NPC, Spawn) --Stage 2 Atramentor(active) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=20 then   -- % Chance for Boss to Spawn
    local CampSpawn1 = GetSpawnByLocationID(zone, 133777642) --Atramentor(inactive)
    local CampSpawn7 = GetSpawnByLocationID(zone, 133777643)
    local CampSpawn8 = GetSpawnByLocationID(zone, 133777656)
    local CampSpawn9 = GetSpawnByLocationID(zone, 133777657)
    local CampSpawn10 = GetSpawnByLocationID(zone, 133777658)
        Despawn(CampSpawn1)
        Despawn(CampSpawn7)
        Despawn(CampSpawn8)
        Despawn(CampSpawn9)
        Despawn(CampSpawn10)
    local Boss=SpawnByLocationID(zone, 133777665)--Atramentor
    FaceTarget(Boss, Spawn)
    Attack(Boss, Spawn)
    AddTimer(NPC,6000,"CampSpawnCheck_Stage2")
    else    -- Failed Atramentor Spawn
       AddTimer(NPC,900000,"CampReset")
  
    end
end


function CampSpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Boss = GetSpawnByLocationID(zone, 133777665) --Atramentor
 if IsAlive(Boss) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage2",1,Spawn)
   else
    AddTimer(NPC, 900000, "CampReset",1,Spawn)
  
 end
end

function CampReset(NPC)
local zone = GetZone(NPC)
local CampObject = GetSpawnByLocationID(zone, 133777664)  --Invis Cube 
local CampSpawn7 = GetSpawnByLocationID(zone, 133777643)
local CampSpawn8 = GetSpawnByLocationID(zone, 133777656)
local CampSpawn9 = GetSpawnByLocationID(zone, 133777657)
local CampSpawn10 = GetSpawnByLocationID(zone, 133777658)
if CampObject~= nil then
Despawn(CampObject)
elseif CampSpawn7~= nil then
Despawn(CampSpawn7)
elseif CampSpawn8~= nil then
Despawn(CampSpawn8)
elseif CampSpawn9~= nil then
Despawn(CampSpawn9)
elseif CampSpawn10~= nil then
Despawn(CampSpawn10)
end
end

