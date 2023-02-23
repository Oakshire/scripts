--[[
    Script Name    : SpawnScripts/Antonica/MayorSpawnObject.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.22 08:02:50
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
local CampSpawn1 = SpawnByLocationID(zone, 133782489) --Level 16

AddTimer(NPC,6000,"CampSpawnCheck_Stage1")
end


function CampSpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local CampSpawn1 = GetSpawnByLocationID(zone, 133782489)

if IsAlive(CampSpawn1) == true  then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 300000, "Camp_Stage2")
  end
end
   
   
   
function Camp_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp_Stage2Spawn1=SpawnByLocationID(zone, 133782490)--Level 17

AddTimer(NPC,6000,"CampSpawnCheck_Stage2")
end



function CampSpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp_Stage2Spawn1 = GetSpawnByLocationID(zone, 133782490)
  
if IsAlive(Camp_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 300000, "Camp_Stage3")
  end
end


function Camp_Stage3(NPC, Spawn) --Stage 3 
  local zone = GetZone(NPC)
  local Camp_Stage3Spawn1=SpawnByLocationID(zone, 133782491)--Level 18

    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3")
end


function CampSpawnCheck_Stage3(NPC, Spawn)  --Stage 3 Living Check
  local zone = GetZone(NPC)
  local Camp_Stage3Spawn1 = GetSpawnByLocationID(zone, 133782491) 
 
if IsAlive(Camp_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"CampSpawnCheck_Stage3",1,Spawn)
   else
    AddTimer(NPC, 6000, "CampReset")
end
end

function CampReset(NPC)
local zone = GetZone(NPC)
local CampObject = GetSpawnByLocationID(zone, 133782488)   
if CampObject~= nil then
Despawn(CampObject)

end
end
