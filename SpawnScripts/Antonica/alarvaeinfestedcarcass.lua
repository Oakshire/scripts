--[[
    Script Name    : SpawnScripts/Antonica/alarvaeinfestedcarcass.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.17 05:07:01
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
if GetSpawnLocationID(NPC)==592995 then --Carcass 1
Camp1Spawn(NPC)
elseif GetSpawnLocationID(NPC)==592996 then
Camp2Spawn(NPC)
elseif GetSpawnLocationID(NPC)==592993 then
Camp3Spawn(NPC)
elseif GetSpawnLocationID(NPC)==592994 then
Camp4Spawn(NPC)
elseif GetSpawnLocationID(NPC)==592992 then
Camp5Spawn(NPC)
end
end

--- CAMP 1

function Camp1Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp1Spawn1 = SpawnByLocationID(zone, 133773881)
local Camp1Spawn2 = SpawnByLocationID(zone, 133773882)
local Camp1Spawn3 = SpawnByLocationID(zone, 133773883)
local Camp1Spawn4 = SpawnByLocationID(zone, 133773884)
local Camp1Spawn5 = SpawnByLocationID(zone, 133773885)
local Camp1Spawn6 = SpawnByLocationID(zone, 133773886)
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1")
end

function Camp1SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp1Spawn1 = GetSpawnByLocationID(zone, 133773881)
local Camp1Spawn2 = GetSpawnByLocationID(zone, 133773882)
local Camp1Spawn3 = GetSpawnByLocationID(zone, 133773883)
local Camp1Spawn4 = GetSpawnByLocationID(zone, 133773884)
local Camp1Spawn5 = GetSpawnByLocationID(zone, 133773885)
local Camp1Spawn6 = GetSpawnByLocationID(zone, 133773886)
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
    local Camp1_Stage2Spawn1=SpawnByLocationID(zone, 133773887)--klicnik prince
    FaceTarget(Camp1_Stage2Spawn1, Spawn)
    Attack(Camp1_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2")
end


function Camp1SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage2Spawn1 = GetSpawnByLocationID(zone, 133773887)
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
    local Camp1_Stage3Spawn1=SpawnByLocationID(zone, 133773888)--King Klicnik
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
local Camp1Object = GetSpawnByLocationID(zone, 592995)   
if Camp1Object~= nil then
Despawn(Camp1Object)
end
end


--- CAMP 2

function Camp2Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp2Spawn1 = SpawnByLocationID(zone, 133773893)
local Camp2Spawn2 = SpawnByLocationID(zone, 133773894)
local Camp2Spawn3 = SpawnByLocationID(zone, 133773895)
local Camp2Spawn4 = SpawnByLocationID(zone, 133773896)
local Camp2Spawn5 = SpawnByLocationID(zone, 133773897)
local Camp2Spawn6 = SpawnByLocationID(zone, 133773898)
AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1")
end

function Camp2SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp2Spawn1 = GetSpawnByLocationID(zone, 133773893)
local Camp2Spawn2 = GetSpawnByLocationID(zone, 133773894)
local Camp2Spawn3 = GetSpawnByLocationID(zone, 133773895)
local Camp2Spawn4 = GetSpawnByLocationID(zone, 133773896)
local Camp2Spawn5 = GetSpawnByLocationID(zone, 133773897)
local Camp2Spawn6 = GetSpawnByLocationID(zone, 133773898)
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
    local Camp2_Stage2Spawn1=SpawnByLocationID(zone, 133773892)--a klicnik prince
    FaceTarget(Camp2_Stage2Spawn1, Spawn)
    Attack(Camp2_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp2SpawnCheck_Stage2")
end


function Camp2SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp2_Stage2Spawn1 = GetSpawnByLocationID(zone, 133773892)
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
    local Camp2_Stage3Spawn1=SpawnByLocationID(zone, 133773889)--King Klicnik
    FaceTarget(Camp2_Stage3Spawn1, Spawn)
    Attack(Camp2_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp2Reset")
end
end


function Camp2SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp2_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773889)
 if IsAlive(Camp2_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp2Reset")
  end
end


function Camp2Reset(NPC)
local zone = GetZone(NPC)
local Camp2Object = GetSpawnByLocationID(zone, 592996)   
if Camp2Object~= nil then
Despawn(Camp2Object)
end
end

   
  
--- CAMP 3

function Camp3Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp3Spawn1 = SpawnByLocationID(zone, 133773914)
local Camp3Spawn2 = SpawnByLocationID(zone, 133773915)
local Camp3Spawn3 = SpawnByLocationID(zone, 133773916)
local Camp3Spawn4 = SpawnByLocationID(zone, 133773917)
local Camp3Spawn5 = SpawnByLocationID(zone, 133773918)
local Camp3Spawn6 = SpawnByLocationID(zone, 133773919)
AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1")
end

function Camp3SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp3Spawn1 = GetSpawnByLocationID(zone, 133773914)
local Camp3Spawn2 = GetSpawnByLocationID(zone, 133773915)
local Camp3Spawn3 = GetSpawnByLocationID(zone, 133773916)
local Camp3Spawn4 = GetSpawnByLocationID(zone, 133773917)
local Camp3Spawn5 = GetSpawnByLocationID(zone, 133773918)
local Camp3Spawn6 = GetSpawnByLocationID(zone, 133773919)
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
    local Camp3_Stage2Spawn1=SpawnByLocationID(zone, 133773920)--a klicnik prince
    FaceTarget(Camp3_Stage2Spawn1, Spawn)
    Attack(Camp3_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp3SpawnCheck_Stage2")
end


function Camp3SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp3_Stage2Spawn1 = GetSpawnByLocationID(zone, 133773920)
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
    local Camp3_Stage3Spawn1=SpawnByLocationID(zone, 133773913)--King Klicnik
    FaceTarget(Camp3_Stage3Spawn1, Spawn)
    Attack(Camp3_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp3Reset")
end
end


function Camp3SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp3_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773913)
 if IsAlive(Camp3_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp3Reset")
  end
end


function Camp3Reset(NPC)
local zone = GetZone(NPC)
local Camp3Object = GetSpawnByLocationID(zone, 592993)   
if Camp3Object~= nil then
Despawn(Camp3Object)
end
end


--- CAMP 4

function Camp4Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp4Spawn1 = SpawnByLocationID(zone, 133773899)
local Camp4Spawn2 = SpawnByLocationID(zone, 133773900)
local Camp4Spawn3 = SpawnByLocationID(zone, 133773901)
local Camp4Spawn4 = SpawnByLocationID(zone, 133773902)
local Camp4Spawn5 = SpawnByLocationID(zone, 133773903)
local Camp4Spawn6 = SpawnByLocationID(zone, 133773904)
AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1")
end

function Camp4SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp4Spawn1 = GetSpawnByLocationID(zone, 133773899)
local Camp4Spawn2 = GetSpawnByLocationID(zone, 133773900)
local Camp4Spawn3 = GetSpawnByLocationID(zone, 133773901)
local Camp4Spawn4 = GetSpawnByLocationID(zone, 133773902)
local Camp4Spawn5 = GetSpawnByLocationID(zone, 133773903)
local Camp4Spawn6 = GetSpawnByLocationID(zone, 133773904)
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
    local Camp4_Stage2Spawn1=SpawnByLocationID(zone, 133773891)--a klicnik prince
    FaceTarget(Camp4_Stage2Spawn1, Spawn)
    Attack(Camp4_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp4SpawnCheck_Stage2")
end


function Camp4SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp4_Stage2Spawn1 = GetSpawnByLocationID(zone, 133773891)
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
    local Camp4_Stage3Spawn1=SpawnByLocationID(zone, 133773890)--King Klicnik
    FaceTarget(Camp4_Stage3Spawn1, Spawn)
    Attack(Camp4_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp4Reset")
end
end


function Camp4SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp4_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773890)
 if IsAlive(Camp4_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp4Reset")
  end
end


function Camp4Reset(NPC)
local zone = GetZone(NPC)
local Camp4Object = GetSpawnByLocationID(zone, 592994)   
if Camp4Object~= nil then
Despawn(Camp4Object)
end
end


--- CAMP 5

function Camp5Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp5Spawn1 = SpawnByLocationID(zone, 133773905)
local Camp5Spawn2 = SpawnByLocationID(zone, 133773906)
local Camp5Spawn3 = SpawnByLocationID(zone, 133773907)
local Camp5Spawn4 = SpawnByLocationID(zone, 133773908)
local Camp5Spawn5 = SpawnByLocationID(zone, 133773909)
local Camp5Spawn6 = SpawnByLocationID(zone, 133773910)
AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1")
end

function Camp5SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp5Spawn1 = GetSpawnByLocationID(zone, 133773905)
local Camp5Spawn2 = GetSpawnByLocationID(zone, 133773906)
local Camp5Spawn3 = GetSpawnByLocationID(zone, 133773907)
local Camp5Spawn4 = GetSpawnByLocationID(zone, 133773908)
local Camp5Spawn5 = GetSpawnByLocationID(zone, 133773909)
local Camp5Spawn6 = GetSpawnByLocationID(zone, 133773910)
 if IsAlive(Camp5Spawn1) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn2) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn3) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn4) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn5) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn6) == true then
   AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp5_Stage2")
  end
end
   
function Camp5_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp5_Stage2Spawn1=SpawnByLocationID(zone, 133773911)--a klicnik prince
    FaceTarget(Camp5_Stage2Spawn1, Spawn)
    Attack(Camp5_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp5SpawnCheck_Stage2")
end


function Camp5SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp5_Stage2Spawn1 = GetSpawnByLocationID(zone, 133773911)
 if IsAlive(Camp5_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp5_Stage3")
  end
end


function Camp5_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp5_Stage3Spawn1=SpawnByLocationID(zone, 133773912)--King Klicnik
    FaceTarget(Camp5_Stage3Spawn1, Spawn)
    Attack(Camp5_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp5Reset")
end
end


function Camp5SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp5_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773912)
 if IsAlive(Camp5_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp5Reset")
  end
end


function Camp5Reset(NPC)
local zone = GetZone(NPC)
local Camp5Object = GetSpawnByLocationID(zone, 592992)   
if Camp5Object~= nil then
Despawn(Camp5Object)
end
end


 
