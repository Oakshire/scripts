--[[
    Script Name    : SpawnScripts/Antonica/ObeliskSpawn.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.16 09:02:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
CampSpawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


--- CAMP 1

function CampSpawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local CampSpawn1 = SpawnByLocationID(zone, 133782425) --Rift Watcher
    else
    local CampSpawn1a = SpawnByLocationID(zone, 133782425) -- Rift Watcher
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local CampSpawn2 = SpawnByLocationID(zone, 133782426)--Rift Watcher
    else
    local CampSpawn2a = SpawnByLocationID(zone, 133782429)-- Servitor
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local CampSpawn3 = SpawnByLocationID(zone, 133782427)--Rift Watcher
    else
    local CampSpawn3a = SpawnByLocationID(zone, 133782427)-- Rift Watcher
    end   

AddTimer(NPC,6000,"CampSpawnCheck_Stage1")
end

function CampSpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local CampSpawn1 = GetSpawnByLocationID(zone, 133782425)
local CampSpawn1a = GetSpawnByLocationID(zone, 133782425)
local CampSpawn2 = GetSpawnByLocationID(zone, 133782426)
local CampSpawn2a = GetSpawnByLocationID(zone, 133782429)
local CampSpawn3 = GetSpawnByLocationID(zone, 133782427)
local CampSpawn3a = GetSpawnByLocationID(zone, 133782427)


if IsAlive(CampSpawn1) == true or IsAlive(Camp1Spawn1a) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn2) == true or IsAlive(Camp1Spawn2a) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(CampSpawn3) == true or IsAlive(Camp1Spawn3a) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
    
    
   else
      AddTimer(NPC, 6000, "Camp_Stage2")
  end
end
   
function Camp_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp_Stage2Spawn1=SpawnByLocationID(zone, 133782428)--Portal
    FaceTarget(Camp_Stage2Spawn1, Spawn)
    Attack(Camp_Stage2Spawn1, Spawn)
    AddTimer(NPC, 300000, "CampReset")    

end



function CampReset(NPC)
local zone = GetZone(NPC)
local CampObject = GetSpawnByLocationID(zone, 133782423)   
if CampObject~= nil then
Despawn(CampObject)
    local Portal = GetSpawnByLocationID(zone, 133782428)--Portal
    if Portal ~=nil then
    Despawn(Portal)

end
end
end
