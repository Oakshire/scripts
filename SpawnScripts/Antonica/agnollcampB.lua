--[[
    Script Name    : SpawnScripts/Antonica/agnollcampB.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.21 09:07:12
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
--if GetSpawnLocationID(NPC)==170218 then --GnollCamp1
Camp1Spawn(NPC)
--elseif GetSpawnLocationID(NPC)==591701 then--GnollCamp2
--Camp2Spawn(NPC)

--end
end

--- CAMP 1

function Camp1Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local Camp1Spawn1 = SpawnByLocationID(zone, 133781821) --Gnoll1 (priest)
    else
    local Camp1Spawn1a = SpawnByLocationID(zone, 133781827) -- Gnoll1(fighter)
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local Camp1Spawn2 = SpawnByLocationID(zone, 133781817)--Gnoll2 (priest)
    else
    local Camp1Spawn2a = SpawnByLocationID(zone, 133781826)-- Gnoll2(fighter)
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local Camp1Spawn3 = SpawnByLocationID(zone, 133781816)--Gnoll3 (priest)
    else
    local Camp1Spawn3a = SpawnByLocationID(zone, 133781825)-- Gnoll3(fighter)
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local Camp1Spawn4 = SpawnByLocationID(zone, 133781819)--Gnoll4 (priest)
    else
    local Camp1Spawn4a = SpawnByLocationID(zone, 133781824)-- Gnoll4(fighter)
    end
local spawn5 = math.random(0,1)
    if spawn5 == 1 then
    local Camp1Spawn5 = SpawnByLocationID(zone, 133781818)--Gnoll5 (priest)
    else
    local Camp1Spawn5a = SpawnByLocationID(zone, 133781822)-- Gnoll5(fighter)
    end
local spawn6 = math.random(0,1)
    if spawn6 == 1 then
    local Camp1Spawn6 = SpawnByLocationID(zone, 133781820)--Gnoll6 (priest)
    else
    local Camp1Spawn6a = SpawnByLocationID(zone, 133781823)-- Gnoll6(fighter)
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp1MerchantSpawn = SpawnByLocationID(zone, 133781840)--Distressed Merchant
    else
    end
        
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1")
end

function Camp1SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp1Spawn1 = GetSpawnByLocationID(zone, 133781821)
local Camp1Spawn1a = GetSpawnByLocationID(zone, 133781827)
local Camp1Spawn2 = GetSpawnByLocationID(zone, 133781817)
local Camp1Spawn2a = GetSpawnByLocationID(zone, 133781826)
local Camp1Spawn3 = GetSpawnByLocationID(zone, 133781816)
local Camp1Spawn3a = GetSpawnByLocationID(zone, 133781825)
local Camp1Spawn4 = GetSpawnByLocationID(zone, 133781819)
local Camp1Spawn4a = GetSpawnByLocationID(zone, 133781824)
local Camp1Spawn5 = GetSpawnByLocationID(zone, 133781818)
local Camp1Spawn5a = GetSpawnByLocationID(zone, 133781822)
local Camp1Spawn6 = GetSpawnByLocationID(zone, 133781820)
local Camp1Spawn6a = GetSpawnByLocationID(zone, 133781823)
if IsAlive(Camp1Spawn1) == true or IsAlive(Camp1Spawn1a) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn2) == true or IsAlive(Camp1Spawn2a) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn3) == true or IsAlive(Camp1Spawn3a) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn4) == true or IsAlive(Camp1Spawn4a) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn5) == true or IsAlive(Camp1Spawn5a) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp1Spawn6) == true or IsAlive(Camp1Spawn6a) == true then
   AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp1_Stage2")
  end
end
   
function Camp1_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp1_Stage2Spawn1=SpawnByLocationID(zone, 133774041)--darkpack tribal elder
    FaceTarget(Camp1_Stage2Spawn1, Spawn)
    Attack(Camp1_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2")
end


function Camp1SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage2Spawn1 = GetSpawnByLocationID(zone, 133774041)
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
    local Camp1_Stage3Spawn1=SpawnByLocationID(zone, 133773980)--Sarkin
    FaceTarget(Camp1_Stage3Spawn1, Spawn)
    Attack(Camp1_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp1ArkofPower = SpawnByLocationID(zone, 133774136)--Ark of Power
    local Camp1MerchantSpawn = GetSpawnByLocationID(zone, 133781840)--Distressed Merchant
    if Camp1MerchantSpawn ~=nil then
    Despawn(Camp1MerchantSpawn)
    local Camp1GratifiedMerchant = SpawnByLocationID(zone, 133774040)--Gratified Merchant
    AddTimer(NPC,90000,"Camp1Reset")
    else   
    AddTimer(NPC,60000,"Camp1Reset")
end
end
end


function Camp1SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773980) --Sarkin
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3",1,Spawn)
   else
local Camp1MerchantSpawn = GetSpawnByLocationID(zone, 133781840)--Distressed Merchant
    if Camp1MerchantSpawn ~=nil then
    Despawn(Camp1MerchantSpawn)
    local Camp1GratifiedMerchant = SpawnByLocationID(zone, 133774040)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp1Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp1Reset",1,Spawn)
  end
end
end

function Camp1Reset(NPC)
local zone = GetZone(NPC)
local Camp1Object = GetSpawnByLocationID(zone, 170218)   
if Camp1Object~= nil then
Despawn(Camp1Object)
    local Camp1ArkofPower = GetSpawnByLocationID(zone, 133774136)--Ark of Power
    if Camp1ArkofPower ~=nil then
    Despawn(Camp1ArkofPower)
    end  
    local Camp1GratifiedMerchant = GetSpawnByLocationID(zone, 133774040)--Gratified Merchant
    if Camp1GratifiedMerchant ~=nil then
    Despawn(Camp1GratifiedMerchant)
    end  
end
end



--- CAMP 2

function Camp2Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp2Object2 = SpawnByLocationID(zone, 170244)   
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local Camp2Spawn1 = SpawnByLocationID(zone, 133773943) --Gnoll1 (mystic)
    else
    local Camp2Spawn1a = SpawnByLocationID(zone, 133773809) -- Gnoll1(youth)
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local Camp2Spawn2 = SpawnByLocationID(zone, 133773946)--Gnoll2 (mystic)
    else
    local Camp2Spawn2a = SpawnByLocationID(zone, 133773806)-- Gnoll2(youth)
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local Camp1Spawn3 = SpawnByLocationID(zone, 133773810)--Gnoll3 (mystic)
    else
    local Camp1Spawn3a = SpawnByLocationID(zone, 133773944)-- Gnoll3(youth)
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local Camp2Spawn4 = SpawnByLocationID(zone, 133773945)--Gnoll4 (mystic)
    else
    local Camp2Spawn4a = SpawnByLocationID(zone, 133773807)-- Gnoll4(youth)
    end
local spawn5 = math.random(0,1)
    if spawn5 == 1 then
    local Camp2Spawn5 = SpawnByLocationID(zone, 133773808)--Gnoll5 (mystic)
    else
    local Camp2Spawn5a = SpawnByLocationID(zone, 133773942)-- Gnoll5(youth)
    end
local spawn6 = math.random(0,1)
    if spawn6 == 1 then
    local Camp2Spawn6 = SpawnByLocationID(zone, 133773947)--Gnoll6 (mystic)
    else
    local Camp2Spawn6a = SpawnByLocationID(zone, 133773805)-- Gnoll6(youth)
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp2MerchantSpawn = SpawnByLocationID(zone, 133773948)--Distressed Merchant
    else
    end
        
AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1")
end

function Camp2SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp2Spawn1 = GetSpawnByLocationID(zone, 133773943)
local Camp2Spawn1a = GetSpawnByLocationID(zone, 133773809)
local Camp2Spawn2 = GetSpawnByLocationID(zone, 133773946)
local Camp2Spawn2a = GetSpawnByLocationID(zone, 133773806)
local Camp2Spawn3 = GetSpawnByLocationID(zone, 133773810)
local Camp2Spawn3a = GetSpawnByLocationID(zone, 133773944)
local Camp2Spawn4 = GetSpawnByLocationID(zone, 133773945)
local Camp2Spawn4a = GetSpawnByLocationID(zone, 133773807)
local Camp2Spawn5 = GetSpawnByLocationID(zone, 133773808)
local Camp2Spawn5a = GetSpawnByLocationID(zone, 133773942)
local Camp2Spawn6 = GetSpawnByLocationID(zone, 133773947)
local Camp2Spawn6a = GetSpawnByLocationID(zone, 133773805)
if IsAlive(Camp2Spawn1) == true or IsAlive(Camp2Spawn1a) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn2) == true or IsAlive(Camp2Spawn2a) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn3) == true or IsAlive(Camp2Spawn3a) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn4) == true or IsAlive(Camp2Spawn4a) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn5) == true or IsAlive(Camp2Spawn5a) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp2Spawn6) == true or IsAlive(Camp2Spawn6a) == true then
   AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp2_Stage2")
  end
end
   
function Camp2_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp2_Stage2Spawn1=SpawnByLocationID(zone, 190461)--darkpack pack leader
    FaceTarget(Camp2_Stage2Spawn1, Spawn)
    Attack(Camp2_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp2SpawnCheck_Stage2")
end


function Camp2SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp2_Stage2Spawn1 = GetSpawnByLocationID(zone, 190461)
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
    local Camp2_Stage3Spawn1=SpawnByLocationID(zone, 133773811)--Tark
    FaceTarget(Camp2_Stage3Spawn1, Spawn)
    Attack(Camp2_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp2ArkofPower = SpawnByLocationID(zone, 133773940)--Ark of Power
    local Camp2MerchantSpawn = GetSpawnByLocationID(zone, 133773948)--Distressed Merchant
    if Camp2MerchantSpawn ~=nil then
    Despawn(Camp2MerchantSpawn)
    local Camp2GratifiedMerchant = SpawnByLocationID(zone, 133773938)--Gratified Merchant
    AddTimer(NPC,90000,"Camp2Reset")
    else   
    AddTimer(NPC,60000,"Camp2Reset")
end
end
end


function Camp2SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp2_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773811)
 if IsAlive(Camp2_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage3",1,Spawn)
   else
local Camp2MerchantSpawn = GetSpawnByLocationID(zone, 133773948)--Distressed Merchant
    if Camp2MerchantSpawn ~=nil then
    Despawn(Camp2MerchantSpawn)
    local Camp2GratifiedMerchant = SpawnByLocationID(zone, 133773941)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp2Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp2Reset",1,Spawn)
  end
end
end

function Camp2Reset(NPC)
local zone = GetZone(NPC)
local Camp2Object = GetSpawnByLocationID(zone, 591701)   
local Camp2Object2 = GetSpawnByLocationID(zone, 170244)   
if Camp2Object~= nil then
Despawn(Camp2Object)
end
if Camp2Object2~= nil then
Despawn(Camp2Object2)
end
    local Camp2ArkofPower = GetSpawnByLocationID(zone, 133773940)--Ark of Power
    if Camp2ArkofPower ~=nil then
    Despawn(Camp2ArkofPower)
    end  
    local Camp2GratifiedMerchant = GetSpawnByLocationID(zone, 133773941)--Gratified Merchant
    if Camp2GratifiedMerchant ~=nil then
    Despawn(Camp2GratifiedMerchant)
    end  
end

