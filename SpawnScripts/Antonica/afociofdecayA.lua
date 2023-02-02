--[[
    Script Name    : SpawnScripts/Antonica/afociofdecayA.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.01 08:02:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

Camp1Spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


---Plaguebringer Camp

function Camp1Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Spawn1 = SpawnByLocationID(zone, 133782082) --restless Caltorsite
local Spawn2 = SpawnByLocationID(zone, 133782083)--restless Caltorsite
local Spawn3 = SpawnByLocationID(zone, 133782084)--restless Caltorsite
local Spawn4 = SpawnByLocationID(zone, 133782085)--restless Caltorsite
local Spawn5 = SpawnByLocationID(zone, 133782086)--restless Caltorsite
local Spawn6 = SpawnByLocationID(zone, 133782087)--restless Caltorsite
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp1MerchantSpawn = SpawnByLocationID(zone, 133782080)--Distressed Merchant
    else
    end
    

        
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1")
end

function Camp1SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Spawn1 = GetSpawnByLocationID(zone, 133782082)
local Spawn2 = GetSpawnByLocationID(zone, 133782083)
local Spawn3 = GetSpawnByLocationID(zone, 133782084)
local Spawn4 = GetSpawnByLocationID(zone, 133782085)
local Spawn5 = GetSpawnByLocationID(zone, 133782086)
local Spawn6 = GetSpawnByLocationID(zone, 133782087)

if IsAlive(Spawn1) == true  then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Spawn2) == true  then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Spawn3) == true  then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Spawn4) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Spawn5) == true  then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Spawn6) == true  then
   AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp1_Stage2")
  end
end
   
function Camp1_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp1_Stage2Spawn1=SpawnByLocationID(zone, 133782090)--acolyte 1
    local Camp1_Stage2Spawn2=SpawnByLocationID(zone, 133782091)--acolyte 2
    local Camp1_Stage2Spawn3=SpawnByLocationID(zone, 133782092)--acolyte 3
    local Camp1_Stage2Spawn4=SpawnByLocationID(zone, 133782093)--acolyte 4
    FaceTarget(Camp1_Stage2Spawn1, Spawn)
    Attack(Camp1_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2")
end


function Camp1SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
    local Camp1_Stage2Spawn1=GetSpawnByLocationID(zone, 133782090)--acolyte 1
    local Camp1_Stage2Spawn2=GetSpawnByLocationID(zone, 133782091)--acolyte 2
    local Camp1_Stage2Spawn3=GetSpawnByLocationID(zone, 133782092)--acolyte 3
    local Camp1_Stage2Spawn4=GetSpawnByLocationID(zone, 133782093)--acolyte 4
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2",1, Spawn)
   elseif IsAlive(Camp1_Stage2Spawn2) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2",1, Spawn)
   elseif IsAlive(Camp1_Stage2Spawn3) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2",1, Spawn)
   elseif IsAlive(Camp1_Stage2Spawn4) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp1_Stage3")
  end
end


function Camp1_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp1_Stage3Spawn1=SpawnByLocationID(zone, 133782094)--Priest of the Plaguebringer
    FaceTarget(Camp1_Stage3Spawn1, Spawn)
    Attack(Camp1_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp1ArkofPower = SpawnByLocationID(zone, 133782088)--Ark of Power
    local Camp1MerchantSpawn = GetSpawnByLocationID(zone, 133782080)--Distressed Merchant
    if Camp1MerchantSpawn ~=nil then
    Despawn(Camp1MerchantSpawn)
    local Camp1GratifiedMerchant = SpawnByLocationID(zone, 133782081)--Gratified Merchant
    AddTimer(NPC,90000,"Camp1Reset")
    else   
    AddTimer(NPC,60000,"Camp1Reset")
end
end
end


function Camp1SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage3Spawn1 = GetSpawnByLocationID(zone, 133782094) --Priest of the Plaguebringer
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3",1,Spawn)
   else
local Camp1MerchantSpawn = GetSpawnByLocationID(zone, 133782080)--Distressed Merchant
    if Camp1MerchantSpawn ~=nil then
    Despawn(Camp1MerchantSpawn)
    local Camp1GratifiedMerchant = SpawnByLocationID(zone, 133782081)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp1Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp1Reset",1,Spawn)
  end
end
end

function Camp1Reset(NPC)
local zone = GetZone(NPC)
local Camp1Object = GetSpawnByLocationID(zone, 133770794)   
if Camp1Object~= nil then
Despawn(Camp1Object)
    local Camp1ArkofPower = GetSpawnByLocationID(zone, 133782088)--Ark of Power
    if Camp1ArkofPower ~=nil then
    Despawn(Camp1ArkofPower)
    end  
    local Camp1GratifiedMerchant = GetSpawnByLocationID(zone, 133782081)--Gratified Merchant
    if Camp1GratifiedMerchant ~=nil then
    Despawn(Camp1GratifiedMerchant)
    end  
end
end
