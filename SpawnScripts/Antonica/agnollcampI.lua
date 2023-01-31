--[[
    Script Name    : SpawnScripts/Antonica/agnollcampI.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.31 04:01:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

Camp1Spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end


---Gnoll Camp

function Camp1Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
    local Camp1Spawn1 = SpawnByLocationID(zone, 133781948) --Gnoll1 (shaman)
    else
    local Camp1Spawn1a = SpawnByLocationID(zone, 133781954) -- Gnoll1(battler)
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local Camp1Spawn2 = SpawnByLocationID(zone, 133781949)--Gnoll2 (shaman)
    else
    local Camp1Spawn2a = SpawnByLocationID(zone, 133781955)-- Gnoll2(battler)
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local Camp1Spawn3 = SpawnByLocationID(zone, 133781950)--Gnoll3 (shaman)
    else
    local Camp1Spawn3a = SpawnByLocationID(zone, 133781956)-- Gnoll3(battler)
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local Camp1Spawn4 = SpawnByLocationID(zone, 133781951)--Gnoll4 (shaman)
    else
    local Camp1Spawn4a = SpawnByLocationID(zone, 133781957)-- Gnoll4(battler)
    end
local spawn5 = math.random(0,1)
    if spawn5 == 1 then
    local Camp1Spawn5 = SpawnByLocationID(zone, 133781952)--Gnoll5 (shaman)
    else
    local Camp1Spawn5a = SpawnByLocationID(zone, 133781958)-- Gnoll5(battler)
    end
local spawn6 = math.random(0,1)
    if spawn6 == 1 then
    local Camp1Spawn6 = SpawnByLocationID(zone, 133781953)--Gnoll6 (shaman)
    else
    local Camp1Spawn6a = SpawnByLocationID(zone, 133781959)-- Gnoll6(battler)
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp1MerchantSpawn = SpawnByLocationID(zone, 133781946)--Distressed Merchant
    else
    end
    

        
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1")
end

function Camp1SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp1Spawn1 = GetSpawnByLocationID(zone, 133781948)
local Camp1Spawn1a = GetSpawnByLocationID(zone, 133781954)
local Camp1Spawn2 = GetSpawnByLocationID(zone, 133781949)
local Camp1Spawn2a = GetSpawnByLocationID(zone, 133781955)
local Camp1Spawn3 = GetSpawnByLocationID(zone, 133781950)
local Camp1Spawn3a = GetSpawnByLocationID(zone, 133781956)
local Camp1Spawn4 = GetSpawnByLocationID(zone, 133781951)
local Camp1Spawn4a = GetSpawnByLocationID(zone, 133781957)
local Camp1Spawn5 = GetSpawnByLocationID(zone, 133781952)
local Camp1Spawn5a = GetSpawnByLocationID(zone, 133781958)
local Camp1Spawn6 = GetSpawnByLocationID(zone, 133781953)
local Camp1Spawn6a = GetSpawnByLocationID(zone, 133781959)
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
    local Camp1_Stage2Spawn1=SpawnByLocationID(zone, 133781763)--elder 1
    local Camp1_Stage2Spawn2=SpawnByLocationID(zone, 133781760)--tormentor 1
    local Camp1_Stage2Spawn3=SpawnByLocationID(zone, 133781764)--elder 2
    local Camp1_Stage2Spawn4=SpawnByLocationID(zone, 133781761)--tormentor 2
    FaceTarget(Camp1_Stage2Spawn1, Spawn)
    Attack(Camp1_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2")
end


function Camp1SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
    local Camp1_Stage2Spawn1=GetSpawnByLocationID(zone, 133781763)--elder 1
    local Camp1_Stage2Spawn2=GetSpawnByLocationID(zone, 133781760)--tormentor 1
    local Camp1_Stage2Spawn3=GetSpawnByLocationID(zone, 133781764)--elder 2
    local Camp1_Stage2Spawn4=GetSpawnByLocationID(zone, 133781761)--tormentor 2
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
    local Camp1_Stage3Spawn1=SpawnByLocationID(zone, 133781762)--Pack Lord
    FaceTarget(Camp1_Stage3Spawn1, Spawn)
    Attack(Camp1_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp1ArkofPower = SpawnByLocationID(zone, 133781945)--Ark of Power
    local Camp1MerchantSpawn = GetSpawnByLocationID(zone, 133781946)--Distressed Merchant
    if Camp1MerchantSpawn ~=nil then
    Despawn(Camp1MerchantSpawn)
    local Camp1GratifiedMerchant = SpawnByLocationID(zone, 133781947)--Gratified Merchant
    AddTimer(NPC,90000,"Camp1Reset")
    else   
    AddTimer(NPC,60000,"Camp1Reset")
end
end
end


function Camp1SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage3Spawn1 = GetSpawnByLocationID(zone, 133781762) --Pack Lord
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3",1,Spawn)
   else
local Camp1MerchantSpawn = GetSpawnByLocationID(zone, 133781946)--Distressed Merchant
    if Camp1MerchantSpawn ~=nil then
    Despawn(Camp1MerchantSpawn)
    local Camp1GratifiedMerchant = SpawnByLocationID(zone, 133781947)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp1Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp1Reset",1,Spawn)
  end
end
end

function Camp1Reset(NPC)
local zone = GetZone(NPC)
local Camp1Object = GetSpawnByLocationID(zone, 195463)   
if Camp1Object~= nil then
Despawn(Camp1Object)
    local Camp1ArkofPower = GetSpawnByLocationID(zone, 133781945)--Ark of Power
    if Camp1ArkofPower ~=nil then
    Despawn(Camp1ArkofPower)
    end  
    local Camp1GratifiedMerchant = GetSpawnByLocationID(zone, 133781947)--Gratified Merchant
    if Camp1GratifiedMerchant ~=nil then
    Despawn(Camp1GratifiedMerchant)
    end  
end
end
