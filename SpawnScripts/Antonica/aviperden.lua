--[[
    Script Name    : SpawnScripts/Antonica/aviperden.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.14 08:07:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
CampSpawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function CampSpawn(NPC)
if GetSpawnLocationID(NPC)==142365 then --Nest1
Camp1Spawn(NPC)
elseif GetSpawnLocationID(NPC)==133773880 then
Camp2Spawn(NPC)
elseif GetSpawnLocationID(NPC)==142363 then
Camp3Spawn(NPC)
elseif GetSpawnLocationID(NPC)==142367 then
Camp4Spawn(NPC)
end
end

--- CAMP 1

function Camp1Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp1Spawn1 = SpawnByLocationID(zone, 133773774)
local Camp1Spawn2 = SpawnByLocationID(zone, 133773772)
local Camp1Spawn3 = SpawnByLocationID(zone, 133773771)
local Camp1Spawn4 = SpawnByLocationID(zone, 133773775)
local Camp1Spawn5 = SpawnByLocationID(zone, 133773776)
local Camp1Spawn6 = SpawnByLocationID(zone, 133773773)
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1")
end

function Camp1SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp1Spawn1 = GetSpawnByLocationID(zone, 133773774)
local Camp1Spawn2 = GetSpawnByLocationID(zone, 133773772)
local Camp1Spawn3 = GetSpawnByLocationID(zone, 133773771)
local Camp1Spawn4 = GetSpawnByLocationID(zone, 133773775)
local Camp1Spawn5 = GetSpawnByLocationID(zone, 133773776)
local Camp1Spawn6 = GetSpawnByLocationID(zone, 133773773)
 if IsAlive(Camp1Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn2) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn3) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn4) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn5) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn6) == true then
   AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp1_Stage2")
  end
end
   
function Camp1_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp1_Stage2Spawn1=SpawnByLocationID(zone, 142389)--noxious viper
    FaceTarget(Camp1_Stage2Spawn1, Spawn)
    Attack(Camp1_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2")
end


function Camp1SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage2Spawn1 = GetSpawnByLocationID(zone, 142389)
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp1_Stage3")
  end
end


function Camp1_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp1_Stage3Spawn1=SpawnByLocationID(zone, 133773777)--a Malevolent Viper
    FaceTarget(Camp1_Stage3Spawn1, Spawn)
    Attack(Camp1_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp1Reset")
end
end


function Camp1SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773777)
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp1Reset")
  end
end


function Camp1Reset(NPC)
local zone = GetZone(NPC)
local Camp1Object = GetSpawnByLocationID(zone, 142365)   
if Camp1Object~= nil then
Despawn(Camp1Object)
end
end


--- CAMP 2

function Camp2Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp2Spawn1 = SpawnByLocationID(zone, 133773765)
local Camp2Spawn2 = SpawnByLocationID(zone, 133773766)
local Camp2Spawn3 = SpawnByLocationID(zone, 133773767)
local Camp2Spawn4 = SpawnByLocationID(zone, 133773768)
local Camp2Spawn5 = SpawnByLocationID(zone, 133773769)
local Camp2Spawn6 = SpawnByLocationID(zone, 133773770)
AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1")
end

function Camp2SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp2Spawn1 = GetSpawnByLocationID(zone, 133773765)
local Camp2Spawn2 = GetSpawnByLocationID(zone, 133773766)
local Camp2Spawn3 = GetSpawnByLocationID(zone, 133773767)
local Camp2Spawn4 = GetSpawnByLocationID(zone, 133773768)
local Camp2Spawn5 = GetSpawnByLocationID(zone, 133773769)
local Camp2Spawn6 = GetSpawnByLocationID(zone, 133773770)
 if IsAlive(Camp2Spawn1) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn2) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn3) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn4) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn5) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn6) == true then
   AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp2_Stage2")
  end
end
   
function Camp2_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp2_Stage2Spawn1=SpawnByLocationID(zone, 142390)--a noxious viper
    FaceTarget(Camp2_Stage2Spawn1, Spawn)
    Attack(Camp2_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp2SpawnCheck_Stage2")
end


function Camp2SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp2_Stage2Spawn1 = GetSpawnByLocationID(zone, 142390)
 if IsAlive(Camp2_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp2_Stage3")
  end
end


function Camp2_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp2_Stage3Spawn1=SpawnByLocationID(zone, 194957)--a Malevolent Viper
    FaceTarget(Camp2_Stage3Spawn1, Spawn)
    Attack(Camp2_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp2Reset")
end
end


function Camp2SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp2_Stage3Spawn1 = GetSpawnByLocationID(zone, 194957)
 if IsAlive(Camp2_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp2Reset")
  end
end


function Camp2Reset(NPC)
local zone = GetZone(NPC)
local Camp2Object = GetSpawnByLocationID(zone, 133773880)   
if Camp2Object~= nil then
Despawn(Camp2Object)
end
end

   
  
--- CAMP 3

function Camp3Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp3Spawn1 = SpawnByLocationID(zone, 133773827)
local Camp3Spawn2 = SpawnByLocationID(zone, 133773828)
local Camp3Spawn3 = SpawnByLocationID(zone, 133773829)
local Camp3Spawn4 = SpawnByLocationID(zone, 133773830)
local Camp3Spawn5 = SpawnByLocationID(zone, 133773831)
local Camp3Spawn6 = SpawnByLocationID(zone, 133773832)
AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1")
end

function Camp3SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp3Spawn1 = GetSpawnByLocationID(zone, 133773827)
local Camp3Spawn2 = GetSpawnByLocationID(zone, 133773828)
local Camp3Spawn3 = GetSpawnByLocationID(zone, 133773829)
local Camp3Spawn4 = GetSpawnByLocationID(zone, 133773830)
local Camp3Spawn5 = GetSpawnByLocationID(zone, 133773831)
local Camp3Spawn6 = GetSpawnByLocationID(zone, 133773832)
 if IsAlive(Camp3Spawn1) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn2) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn3) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn4) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn5) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn6) == true then
   AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp3_Stage2")
  end
end
   
function Camp3_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp3_Stage2Spawn1=SpawnByLocationID(zone, 133773834)--a noxious viper
    FaceTarget(Camp3_Stage2Spawn1, Spawn)
    Attack(Camp3_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp3SpawnCheck_Stage2")
end


function Camp3SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp3_Stage2Spawn1 = GetSpawnByLocationID(zone, 133773834)
 if IsAlive(Camp3_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp3_Stage3")
  end
end


function Camp3_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp3_Stage3Spawn1=SpawnByLocationID(zone, 133773833)--Ta Malevolent Viper
    FaceTarget(Camp3_Stage3Spawn1, Spawn)
    Attack(Camp3_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp3Reset")
end
end


function Camp3SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp3_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773833)
 if IsAlive(Camp3_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp3Reset")
  end
end


function Camp3Reset(NPC)
local zone = GetZone(NPC)
local Camp3Object = GetSpawnByLocationID(zone, 142363)   
if Camp3Object~= nil then
Despawn(Camp3Object)
end
end


--- CAMP 4

function Camp4Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp4Spawn1 = SpawnByLocationID(zone, 133773835)
local Camp4Spawn2 = SpawnByLocationID(zone, 133773836)
local Camp4Spawn3 = SpawnByLocationID(zone, 133773837)
local Camp4Spawn4 = SpawnByLocationID(zone, 133773838)
local Camp4Spawn5 = SpawnByLocationID(zone, 133773839)
local Camp4Spawn6 = SpawnByLocationID(zone, 133773840)
AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1")
end

function Camp4SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp4Spawn1 = GetSpawnByLocationID(zone, 133773835)
local Camp4Spawn2 = GetSpawnByLocationID(zone, 133773836)
local Camp4Spawn3 = GetSpawnByLocationID(zone, 133773837)
local Camp4Spawn4 = GetSpawnByLocationID(zone, 133773838)
local Camp4Spawn5 = GetSpawnByLocationID(zone, 133773839)
local Camp4Spawn6 = GetSpawnByLocationID(zone, 133773840)
 if IsAlive(Camp4Spawn1) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn2) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn3) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn4) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn5) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn6) == true then
   AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp4_Stage2")
  end
end
   
function Camp4_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp4_Stage2Spawn1=SpawnByLocationID(zone, 142397)--a noxious viper
    FaceTarget(Camp4_Stage2Spawn1, Spawn)
    Attack(Camp4_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp4SpawnCheck_Stage2")
end


function Camp4SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp4_Stage2Spawn1 = GetSpawnByLocationID(zone, 142397)
 if IsAlive(Camp4_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp4_Stage3")
  end
end


function Camp4_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp4_Stage3Spawn1=SpawnByLocationID(zone, 133773841)--Ta Malevolent Viper
    FaceTarget(Camp4_Stage3Spawn1, Spawn)
    Attack(Camp4_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp4Reset")
end
end


function Camp4SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp4_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773841)
 if IsAlive(Camp4_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp4Reset")
  end
end


function Camp4Reset(NPC)
local zone = GetZone(NPC)
local Camp4Object = GetSpawnByLocationID(zone, 142367)   
if Camp4Object~= nil then
Despawn(Camp4Object)
end
end

 


 
