--[[
    Script Name    : SpawnScripts/Antonica/agnollcamp.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.15 03:07:38
    Script Purpose : Facilitates camps w/ distressed merchants & buffing ark rewards
                   : 
--]]

function spawn(NPC)
CampSpawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function CampSpawn(NPC)
if GetSpawnLocationID(NPC)==591698 then --GnollCamp1
Camp1Spawn(NPC)
elseif GetSpawnLocationID(NPC)==591701 then--GnollCamp2
Camp2Spawn(NPC)
elseif GetSpawnLocationID(NPC)==133773951 then--GnollCamp3
Camp3Spawn(NPC)
elseif GetSpawnLocationID(NPC)==170236 then--GnollCamp4
Camp4Spawn(NPC)
elseif GetSpawnLocationID(NPC)==170234 then--GnollCamp5
Camp5Spawn(NPC)
elseif GetSpawnLocationID(NPC)==170229 then--GnollCamp6
Camp6Spawn(NPC)
end
end

--- CAMP 1

function Camp1Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local Camp1Spawn1 = SpawnByLocationID(zone, 133773815) --Gnoll1 (mystic)
    else
    local Camp1Spawn1a = SpawnByLocationID(zone, 133773937) -- Gnoll1(youth)
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local Camp1Spawn2 = SpawnByLocationID(zone, 133773817)--Gnoll2 (mystic)
    else
    local Camp1Spawn2a = SpawnByLocationID(zone, 133773935)-- Gnoll2(youth)
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local Camp1Spawn3 = SpawnByLocationID(zone, 133773812)--Gnoll3 (mystic)
    else
    local Camp1Spawn3a = SpawnByLocationID(zone, 133773933)-- Gnoll3(youth)
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local Camp1Spawn4 = SpawnByLocationID(zone, 133773816)--Gnoll4 (mystic)
    else
    local Camp1Spawn4a = SpawnByLocationID(zone, 133773936)-- Gnoll4(youth)
    end
local spawn5 = math.random(0,1)
    if spawn5 == 1 then
    local Camp1Spawn5 = SpawnByLocationID(zone, 133773932)--Gnoll5 (mystic)
    else
    local Camp1Spawn5a = SpawnByLocationID(zone, 133773813)-- Gnoll5(youth)
    end
local spawn6 = math.random(0,1)
    if spawn6 == 1 then
    local Camp1Spawn6 = SpawnByLocationID(zone, 133773934)--Gnoll6 (mystic)
    else
    local Camp1Spawn6a = SpawnByLocationID(zone, 133773814)-- Gnoll6(youth)
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp1MerchantSpawn = SpawnByLocationID(zone, 134655)--Distressed Merchant
    else
    end
        
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1")
end

function Camp1SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp1Spawn1 = GetSpawnByLocationID(zone, 133773815)
local Camp1Spawn1a = GetSpawnByLocationID(zone, 133773937)
local Camp1Spawn2 = GetSpawnByLocationID(zone, 133773817)
local Camp1Spawn2a = GetSpawnByLocationID(zone, 133773935)
local Camp1Spawn3 = GetSpawnByLocationID(zone, 133773812)
local Camp1Spawn3a = GetSpawnByLocationID(zone, 133773933)
local Camp1Spawn4 = GetSpawnByLocationID(zone, 133773816)
local Camp1Spawn4a = GetSpawnByLocationID(zone, 133773936)
local Camp1Spawn5 = GetSpawnByLocationID(zone, 133773932)
local Camp1Spawn5a = GetSpawnByLocationID(zone, 133773813)
local Camp1Spawn6 = GetSpawnByLocationID(zone, 133773934)
local Camp1Spawn6a = GetSpawnByLocationID(zone, 133773814)
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
    local Camp1_Stage2Spawn1=SpawnByLocationID(zone, 190452)--darkpack pack leader
    FaceTarget(Camp1_Stage2Spawn1, Spawn)
    Attack(Camp1_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2")
end


function Camp1SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage2Spawn1 = GetSpawnByLocationID(zone, 190452)
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
    local Camp1_Stage3Spawn1=SpawnByLocationID(zone, 133773818)--Tark
    FaceTarget(Camp1_Stage3Spawn1, Spawn)
    Attack(Camp1_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp1ArkofPower = SpawnByLocationID(zone, 133773939)--Ark of Power
    local Camp1MerchantSpawn = GetSpawnByLocationID(zone, 134655)--Distressed Merchant
    if Camp1MerchantSpawn ~=nil then
    Despawn(Camp1MerchantSpawn)
    local Camp1GratifiedMerchant = SpawnByLocationID(zone, 133773938)--Gratified Merchant
    AddTimer(NPC,90000,"Camp1Reset")
    else   
    AddTimer(NPC,60000,"Camp1Reset")
end
end
end


function Camp1SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773818)
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3",1,Spawn)
   else
local Camp1MerchantSpawn = GetSpawnByLocationID(zone, 134655)--Distressed Merchant
    if Camp1MerchantSpawn ~=nil then
    Despawn(Camp1MerchantSpawn)
    local Camp1GratifiedMerchant = SpawnByLocationID(zone, 133773938)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp1Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp1Reset",1,Spawn)
  end
end
end

function Camp1Reset(NPC)
local zone = GetZone(NPC)
local Camp1Object = GetSpawnByLocationID(zone, 591698)   
if Camp1Object~= nil then
Despawn(Camp1Object)
    local Camp1ArkofPower = GetSpawnByLocationID(zone, 133773939)--Ark of Power
    if Camp1ArkofPower ~=nil then
    Despawn(Camp1ArkofPower)
    end  
    local Camp1GratifiedMerchant = GetSpawnByLocationID(zone, 133773938)--Gratified Merchant
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



--- CAMP 3

function Camp3Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp3Object2 = SpawnByLocationID(zone, 170247)   
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local Camp3Spawn1 = SpawnByLocationID(zone, 133773953) --Gnoll1 (mystic)
    else
    local Camp3Spawn1a = SpawnByLocationID(zone, 133773797) -- Gnoll1(youth)
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local Camp3Spawn2 = SpawnByLocationID(zone, 133773800)--Gnoll2 (mystic)
    else
    local Camp3Spawn2a = SpawnByLocationID(zone, 133773957)-- Gnoll2(youth)
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local Camp3Spawn3 = SpawnByLocationID(zone, 133773952)--Gnoll3 (mystic)
    else
    local Camp3Spawn3a = SpawnByLocationID(zone, 133773796)-- Gnoll3(youth)
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local Camp3Spawn4 = SpawnByLocationID(zone, 133773801)--Gnoll4 (mystic)
    else
    local Camp3Spawn4a = SpawnByLocationID(zone, 133773955)-- Gnoll4(youth)
    end
local spawn5 = math.random(0,1)
    if spawn5 == 1 then
    local Camp3Spawn5 = SpawnByLocationID(zone, 133773803)--Gnoll5 (mystic)
    else
    local Camp3Spawn5a = SpawnByLocationID(zone, 133773956)-- Gnoll5(youth)
    end
local spawn6 = math.random(0,1)
    if spawn6 == 1 then
    local Camp3Spawn6 = SpawnByLocationID(zone, 133773954)--Gnoll6 (mystic)
    else
    local Camp3Spawn6a = SpawnByLocationID(zone, 133773804)-- Gnoll6(youth)
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp3MerchantSpawn = SpawnByLocationID(zone, 134657)--Distressed Merchant
    else
    end
        
AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1")
end

function Camp3SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp3Spawn1 = GetSpawnByLocationID(zone, 133773953)
local Camp3Spawn1a = GetSpawnByLocationID(zone, 133773797)
local Camp3Spawn2 = GetSpawnByLocationID(zone, 133773800)
local Camp3Spawn2a = GetSpawnByLocationID(zone, 133773957)
local Camp3Spawn3 = GetSpawnByLocationID(zone, 133773952)
local Camp3Spawn3a = GetSpawnByLocationID(zone, 133773796)
local Camp3Spawn4 = GetSpawnByLocationID(zone, 133773801)
local Camp3Spawn4a = GetSpawnByLocationID(zone, 133773955)
local Camp3Spawn5 = GetSpawnByLocationID(zone, 133773803)
local Camp3Spawn5a = GetSpawnByLocationID(zone, 133773956)
local Camp3Spawn6 = GetSpawnByLocationID(zone, 133773954)
local Camp3Spawn6a = GetSpawnByLocationID(zone, 133773804)
if IsAlive(Camp3Spawn1) == true or IsAlive(Camp3Spawn1a) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn2) == true or IsAlive(Camp3Spawn2a) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn3) == true or IsAlive(Camp3Spawn3a) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn4) == true or IsAlive(Camp3Spawn4a) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn5) == true or IsAlive(Camp3Spawn5a) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp3Spawn6) == true or IsAlive(Camp3Spawn6a) == true then
   AddTimer(NPC,6000,"Camp3SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp3_Stage2")
  end
end
   
function Camp3_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp3_Stage2Spawn1=SpawnByLocationID(zone, 133773958)--darkpack pack leader
    FaceTarget(Camp3_Stage2Spawn1, Spawn)
    Attack(Camp3_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp3SpawnCheck_Stage2")
end


function Camp3SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp3_Stage2Spawn1 = GetSpawnByLocationID(zone, 133773958)
 if IsAlive(Camp2_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp3_Stage3")
  end
end


function Camp3_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp3_Stage3Spawn1=SpawnByLocationID(zone, 133773802)--Tark
    FaceTarget(Camp3_Stage3Spawn1, Spawn)
    Attack(Camp3_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp3ArkofPower = SpawnByLocationID(zone, 133773959)--Ark of Power
    local Camp3MerchantSpawn = GetSpawnByLocationID(zone, 134657)--Distressed Merchant
    if Camp3MerchantSpawn ~=nil then
    Despawn(Camp3MerchantSpawn)
    local Camp3GratifiedMerchant = SpawnByLocationID(zone, 133773938)--Gratified Merchant
    AddTimer(NPC,90000,"Camp3Reset")
    else   
    AddTimer(NPC,60000,"Camp3Reset")
end
end
end


function Camp3SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp3_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773802)--Tark
 if IsAlive(Camp3_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp3SpawnCheck_Stage3",1,Spawn)
   else
local Camp3MerchantSpawn = GetSpawnByLocationID(zone, 134657)--Distressed Merchant
    if Camp3MerchantSpawn ~=nil then
    Despawn(Camp3MerchantSpawn)
    local Camp3GratifiedMerchant = SpawnByLocationID(zone, 133773960)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp3Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp3Reset",1,Spawn)
  end
end
end

function Camp3Reset(NPC)
local zone = GetZone(NPC)
local Camp3Object = GetSpawnByLocationID(zone, 133773951)   
local Camp3Object2 = GetSpawnByLocationID(zone, 170247)   
if Camp3Object~= nil then
Despawn(Camp3Object)
end
if Camp3Object2~= nil then
Despawn(Camp3Object2)
end
    local Camp3ArkofPower = GetSpawnByLocationID(zone, 133773959)--Ark of Power
    if Camp3ArkofPower ~=nil then
    Despawn(Camp3ArkofPower)
    end  
    local Camp3GratifiedMerchant = GetSpawnByLocationID(zone, 133773960)--Gratified Merchant
    if Camp3GratifiedMerchant ~=nil then
    Despawn(Camp3GratifiedMerchant)
    end  
end



--- CAMP 4

function Camp4Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
--local Camp4Object2 = SpawnByLocationID(zone, 170247)   
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local Camp4Spawn1 = SpawnByLocationID(zone, 133770865) --Gnoll1 (mystic)
    else
    local Camp4Spawn1a = SpawnByLocationID(zone, 133774023) -- Gnoll1(youth)
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local Camp4Spawn2 = SpawnByLocationID(zone, 133770866)--Gnoll2 (mystic)
    else
    local Camp4Spawn2a = SpawnByLocationID(zone, 133774022)-- Gnoll2(youth)
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local Camp4Spawn3 = SpawnByLocationID(zone, 133770867)--Gnoll3 (mystic)
    else
    local Camp4Spawn3a = SpawnByLocationID(zone, 133774021)-- Gnoll3(youth)
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local Camp4Spawn4 = SpawnByLocationID(zone, 133774019)--Gnoll4 (mystic)
    else
    local Camp4Spawn4a = SpawnByLocationID(zone, 133774020)-- Gnoll4(youth)
    end
local spawn5 = math.random(0,1)
    if spawn5 == 1 then
    local Camp4Spawn5 = SpawnByLocationID(zone, 133774017)--Gnoll5 (mystic)
    else
    local Camp4Spawn5a = SpawnByLocationID(zone, 133774025)-- Gnoll5(youth)
    end
local spawn6 = math.random(0,1)
    if spawn6 == 1 then
    local Camp4Spawn6 = SpawnByLocationID(zone, 133774018)--Gnoll6 (mystic)
    else
    local Camp4Spawn6a = SpawnByLocationID(zone, 133774024)-- Gnoll6(youth)
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp4MerchantSpawn = SpawnByLocationID(zone, 134653)--Distressed Merchant
    else
    end
        
AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1")
end

function Camp4SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp4Spawn1 = GetSpawnByLocationID(zone, 133770865)
local Camp4Spawn1a = GetSpawnByLocationID(zone, 133774023)
local Camp4Spawn2 = GetSpawnByLocationID(zone, 133770866)
local Camp4Spawn2a = GetSpawnByLocationID(zone, 133774022)
local Camp4Spawn3 = GetSpawnByLocationID(zone, 133770867)
local Camp4Spawn3a = GetSpawnByLocationID(zone, 133774021)
local Camp4Spawn4 = GetSpawnByLocationID(zone, 133774019)
local Camp4Spawn4a = GetSpawnByLocationID(zone, 133774020)
local Camp4Spawn5 = GetSpawnByLocationID(zone, 133774017)
local Camp4Spawn5a = GetSpawnByLocationID(zone, 133774025)
local Camp4Spawn6 = GetSpawnByLocationID(zone, 133774018)
local Camp4Spawn6a = GetSpawnByLocationID(zone, 133774024)
if IsAlive(Camp4Spawn1) == true or IsAlive(Camp4Spawn1a) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn2) == true or IsAlive(Camp4Spawn2a) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn3) == true or IsAlive(Camp4Spawn3a) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn4) == true or IsAlive(Camp4Spawn4a) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn5) == true or IsAlive(Camp4Spawn5a) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp4Spawn6) == true or IsAlive(Camp4Spawn6a) == true then
   AddTimer(NPC,6000,"Camp4SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp4_Stage2")
  end
end
   
function Camp4_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp4_Stage2Spawn1=SpawnByLocationID(zone, 190448)--darkpack pack leader
    FaceTarget(Camp4_Stage2Spawn1, Spawn)
    Attack(Camp4_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp4SpawnCheck_Stage2")
end


function Camp4SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp4_Stage2Spawn1 = GetSpawnByLocationID(zone, 190448)
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
    local Camp4_Stage3Spawn1=SpawnByLocationID(zone, 193391)--Tark
    FaceTarget(Camp4_Stage3Spawn1, Spawn)
    Attack(Camp4_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp4ArkofPower = SpawnByLocationID(zone, 133774075)--Ark of Power
    local Camp4MerchantSpawn = GetSpawnByLocationID(zone, 134653)--Distressed Merchant
    if Camp4MerchantSpawn ~=nil then
    Despawn(Camp4MerchantSpawn)
    local Camp4GratifiedMerchant = SpawnByLocationID(zone, 134690)--Gratified Merchant
    AddTimer(NPC,90000,"Camp4Reset")
    else   
    AddTimer(NPC,60000,"Camp4Reset")
end
end
end


function Camp4SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp4_Stage3Spawn1 = GetSpawnByLocationID(zone, 193391)--Tark
 if IsAlive(Camp4_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp4SpawnCheck_Stage3",1,Spawn)
   else
local Camp4MerchantSpawn = GetSpawnByLocationID(zone, 134653)--Distressed Merchant
    if Camp4MerchantSpawn ~=nil then
    Despawn(Camp4MerchantSpawn)
    local Camp4GratifiedMerchant = SpawnByLocationID(zone, 134690)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp4Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp4Reset",1,Spawn)
  end
end
end

function Camp4Reset(NPC)
local zone = GetZone(NPC)
local Camp4Object = GetSpawnByLocationID(zone, 170236)   
--local Camp4Object2 = GetSpawnByLocationID(zone, 170247)   
if Camp4Object~= nil then
Despawn(Camp4Object)
end
--if Camp4Object2~= nil then
--Despawn(Camp4Object2)
--end
    local Camp4ArkofPower = GetSpawnByLocationID(zone, 133774075)--Ark of Power
    if Camp4ArkofPower ~=nil then
    Despawn(Camp4ArkofPower)
    end  
    local Camp4GratifiedMerchant = GetSpawnByLocationID(zone, 134690)--Gratified Merchant
    if Camp4GratifiedMerchant ~=nil then
    Despawn(Camp4GratifiedMerchant)
    end  
end



--- CAMP 5

function Camp5Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
--local Camp5Object2 = SpawnByLocationID(zone, 170247)   
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local Camp5Spawn1 = SpawnByLocationID(zone, 133774071) --Gnoll1 (mystic)
    else
    local Camp5Spawn1a = SpawnByLocationID(zone, 133774066) -- Gnoll1(youth)
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local Camp5Spawn2 = SpawnByLocationID(zone, 133774072)--Gnoll2 (mystic)
    else
    local Camp5Spawn2a = SpawnByLocationID(zone, 133774067)-- Gnoll2(youth)
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local Camp5Spawn3 = SpawnByLocationID(zone, 130814)--Gnoll3 (mystic)
    else
    local Camp5Spawn3a = SpawnByLocationID(zone, 133774065)-- Gnoll3(youth)
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local Camp5Spawn4 = SpawnByLocationID(zone, 133774070)--Gnoll4 (mystic)
    else
    local Camp5Spawn4a = SpawnByLocationID(zone, 128918)-- Gnoll4(youth)
    end
local spawn5 = math.random(0,1)
    if spawn5 == 1 then
    local Camp5Spawn5 = SpawnByLocationID(zone, 133774069)--Gnoll5 (mystic)
    else
    local Camp5Spawn5a = SpawnByLocationID(zone, 133774068)-- Gnoll5(youth)
    end
local spawn6 = math.random(0,1)
    if spawn6 == 1 then
    local Camp5Spawn6 = SpawnByLocationID(zone, 130815)--Gnoll6 (mystic)
    else
    local Camp5Spawn6a = SpawnByLocationID(zone, 128919)-- Gnoll6(youth)
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp5MerchantSpawn = SpawnByLocationID(zone, 134649)--Distressed Merchant
    else
    end
        
AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1")
end

function Camp5SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp5Spawn1 = GetSpawnByLocationID(zone, 1337704071)
local Camp5Spawn1a = GetSpawnByLocationID(zone, 133774066)
local Camp5Spawn2 = GetSpawnByLocationID(zone, 133774072)
local Camp5Spawn2a = GetSpawnByLocationID(zone, 133774067)
local Camp5Spawn3 = GetSpawnByLocationID(zone, 130814)
local Camp5Spawn3a = GetSpawnByLocationID(zone, 133774065)
local Camp5Spawn4 = GetSpawnByLocationID(zone, 133774070)
local Camp5Spawn4a = GetSpawnByLocationID(zone, 128918)
local Camp5Spawn5 = GetSpawnByLocationID(zone, 133774069)
local Camp5Spawn5a = GetSpawnByLocationID(zone, 133774068)
local Camp5Spawn6 = GetSpawnByLocationID(zone, 130815)
local Camp5Spawn6a = GetSpawnByLocationID(zone, 128919)
if IsAlive(Camp5Spawn1) == true or IsAlive(Camp5Spawn1a) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn2) == true or IsAlive(Camp5Spawn2a) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn3) == true or IsAlive(Camp5Spawn3a) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn4) == true or IsAlive(Camp5Spawn4a) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn5) == true or IsAlive(Camp5Spawn5a) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp5Spawn6) == true or IsAlive(Camp5Spawn6a) == true then
   AddTimer(NPC,6000,"Camp5SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp5_Stage2")
  end
end
   
function Camp5_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp5_Stage2Spawn1=SpawnByLocationID(zone, 190444)--darkpack pack leader
    FaceTarget(Camp5_Stage2Spawn1, Spawn)
    Attack(Camp5_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp5SpawnCheck_Stage2")
end


function Camp5SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp5_Stage2Spawn1 = GetSpawnByLocationID(zone, 190444)
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
    local Camp5_Stage3Spawn1=SpawnByLocationID(zone, 133774073)--Tark
    FaceTarget(Camp5_Stage3Spawn1, Spawn)
    Attack(Camp5_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp5ArkofPower = SpawnByLocationID(zone, 133774076)--Ark of Power
    local Camp5MerchantSpawn = GetSpawnByLocationID(zone, 134649)--Distressed Merchant
    if Camp5MerchantSpawn ~=nil then
    Despawn(Camp5MerchantSpawn)
    local Camp5GratifiedMerchant = SpawnByLocationID(zone, 134690)--Gratified Merchant
    AddTimer(NPC,90000,"Camp5Reset")
    else   
    AddTimer(NPC,60000,"Camp5Reset")
end
end
end


function Camp5SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp5_Stage3Spawn1 = GetSpawnByLocationID(zone, 133774073)--Tark
 if IsAlive(Camp5_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp5SpawnCheck_Stage3",1,Spawn)
   else
local Camp5MerchantSpawn = GetSpawnByLocationID(zone, 134649)--Distressed Merchant
    if Camp5MerchantSpawn ~=nil then
    Despawn(Camp5MerchantSpawn)
    local Camp5GratifiedMerchant = SpawnByLocationID(zone, 133774064)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp5Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp5Reset",1,Spawn)
  end
end
end

function Camp5Reset(NPC)
local zone = GetZone(NPC)
local Camp5Object = GetSpawnByLocationID(zone, 170236)   
--local Camp5Object2 = GetSpawnByLocationID(zone, 170247)   
if Camp5Object~= nil then
Despawn(Camp5Object)
end
--if Camp5Object2~= nil then
--Despawn(Camp5Object2)
--end
    local Camp5ArkofPower = GetSpawnByLocationID(zone, 133774076)--Ark of Power
    if Camp5ArkofPower ~=nil then
    Despawn(Camp5ArkofPower)
    end  
    local Camp5GratifiedMerchant = GetSpawnByLocationID(zone, 133774064)--Gratified Merchant
    if Camp5GratifiedMerchant ~=nil then
    Despawn(Camp5GratifiedMerchant)
    end  
end


--- CAMP 6

function Camp6Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
--local Camp6Object2 = SpawnByLocationID(zone, 170247)   
local spawn1 = math.random(0,1)
    if spawn1 == 1 then
local Camp6Spawn1 = SpawnByLocationID(zone, 133774055) --Gnoll1 (mystic)
    else
    local Camp6Spawn1a = SpawnByLocationID(zone, 128913) -- Gnoll1(youth)
    end   
local spawn2 = math.random(0,1)
    if spawn2 == 1 then
    local Camp6Spawn2 = SpawnByLocationID(zone, 133774057)--Gnoll2 (mystic)
    else
    local Camp6Spawn2a = SpawnByLocationID(zone, 133774058)-- Gnoll2(youth)
    end
local spawn3 = math.random(0,1)
    if spawn3 == 1 then
    local Camp6Spawn3 = SpawnByLocationID(zone, 133774056)--Gnoll3 (mystic)
    else
    local Camp6Spawn3a = SpawnByLocationID(zone, 133774062)-- Gnoll3(youth)
    end   
local spawn4 = math.random(0,1)
    if spawn4 == 1 then
    local Camp6Spawn4 = SpawnByLocationID(zone, 130799)--Gnoll4 (mystic)
    else
    local Camp6Spawn4a = SpawnByLocationID(zone, 133774061)-- Gnoll4(youth)
    end
local spawn5 = math.random(0,1)
    if spawn5 == 1 then
    local Camp6Spawn5 = SpawnByLocationID(zone, 130806)--Gnoll5 (mystic)
    else
    local Camp6Spawn5a = SpawnByLocationID(zone, 133774060)-- Gnoll5(youth)
    end
local spawn6 = math.random(0,1)
    if spawn6 == 1 then
    local Camp6Spawn6 = SpawnByLocationID(zone, 133774054)--Gnoll6 (mystic)
    else
    local Camp6Spawn6a = SpawnByLocationID(zone, 133774059)-- Gnoll6(youth)
    end
local MerchantSpawn =  math.random(0,1)
    if MerchantSpawn == 1 then
    local Camp6MerchantSpawn = SpawnByLocationID(zone, 134646)--Distressed Merchant
    else
    end
        
AddTimer(NPC,6000,"Camp6SpawnCheck_Stage1")
end

function Camp6SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp6Spawn1 = GetSpawnByLocationID(zone, 1337704055)
local Camp6Spawn1a = GetSpawnByLocationID(zone, 128913)
local Camp6Spawn2 = GetSpawnByLocationID(zone, 133774057)
local Camp6Spawn2a = GetSpawnByLocationID(zone, 133774058)
local Camp6Spawn3 = GetSpawnByLocationID(zone, 133774056)
local Camp6Spawn3a = GetSpawnByLocationID(zone, 133774062)
local Camp6Spawn4 = GetSpawnByLocationID(zone, 130799)
local Camp6Spawn4a = GetSpawnByLocationID(zone, 133774061)
local Camp6Spawn5 = GetSpawnByLocationID(zone, 130806)
local Camp6Spawn5a = GetSpawnByLocationID(zone, 133774060)
local Camp6Spawn6 = GetSpawnByLocationID(zone, 133774054)
local Camp6Spawn6a = GetSpawnByLocationID(zone, 133774059)
if IsAlive(Camp6Spawn1) == true or IsAlive(Camp6Spawn1a) == true then
    AddTimer(NPC,6000,"Camp6SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp6Spawn2) == true or IsAlive(Camp6Spawn2a) == true then
    AddTimer(NPC,6000,"Camp6SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp6Spawn3) == true or IsAlive(Camp6Spawn3a) == true then
    AddTimer(NPC,6000,"Camp6SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp6Spawn4) == true or IsAlive(Camp6Spawn4a) == true then
    AddTimer(NPC,6000,"Camp6SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp6Spawn5) == true or IsAlive(Camp6Spawn5a) == true then
    AddTimer(NPC,6000,"Camp6SpawnCheck_Stage1",1, Spawn)
    elseif IsAlive(Camp6Spawn6) == true or IsAlive(Camp6Spawn6a) == true then
   AddTimer(NPC,6000,"Camp6SpawnCheck_Stage1",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp6_Stage2")
  end
end
   
function Camp6_Stage2(NPC, Spawn) --Stage 2 
  local zone = GetZone(NPC)
    local Camp6_Stage2Spawn1=SpawnByLocationID(zone, 190438)--darkpack pack leader
    FaceTarget(Camp6_Stage2Spawn1, Spawn)
    Attack(Camp6_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp6SpawnCheck_Stage2")
end


function Camp6SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp6_Stage2Spawn1 = GetSpawnByLocationID(zone, 190438)
 if IsAlive(Camp6_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp6SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp6_Stage3")
  end
end


function Camp6_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=33 then   -- % Chance for Boss to Spawn
    local Camp6_Stage3Spawn1=SpawnByLocationID(zone, 193390)--Tark
    FaceTarget(Camp6_Stage3Spawn1, Spawn)
    Attack(Camp6_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp6SpawnCheck_Stage3")
else    -- Failed Boss Spawn
    local Camp6ArkofPower = SpawnByLocationID(zone, 133774138)--Ark of Power
    local Camp6MerchantSpawn = GetSpawnByLocationID(zone, 134646)--Distressed Merchant
    if Camp6MerchantSpawn ~=nil then
    Despawn(Camp6MerchantSpawn)
    local Camp6GratifiedMerchant = SpawnByLocationID(zone, 134690)--Gratified Merchant
    AddTimer(NPC,90000,"Camp5Reset")
    else   
    AddTimer(NPC,60000,"Camp5Reset")
end
end
end


function Camp6SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp5_Stage6Spawn1 = GetSpawnByLocationID(zone, 193390)--Tark
 if IsAlive(Camp6_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp6SpawnCheck_Stage3",1,Spawn)
   else
local Camp6MerchantSpawn = GetSpawnByLocationID(zone, 134649)--Distressed Merchant
    if Camp6MerchantSpawn ~=nil then
    Despawn(Camp6MerchantSpawn)
    local Camp6GratifiedMerchant = SpawnByLocationID(zone, 133774063)--Gratified Merchant
    AddTimer(NPC, 90000, "Camp6Reset",1,Spawn)
    else
    AddTimer(NPC, 10000, "Camp6Reset",1,Spawn)
  end
end
end

function Camp6Reset(NPC)
local zone = GetZone(NPC)
local Camp6Object = GetSpawnByLocationID(zone, 170229)   
--local Camp6Object2 = GetSpawnByLocationID(zone, 170247)   
if Camp6Object~= nil then
Despawn(Camp6Object)
end
--if Camp6Object2~= nil then
--Despawn(Camp6Object2)
--end
    local Camp6ArkofPower = GetSpawnByLocationID(zone, 133774138)--Ark of Power
    if Camp6ArkofPower ~=nil then
    Despawn(Camp6ArkofPower)
    end  
    local Camp6GratifiedMerchant = GetSpawnByLocationID(zone, 133774063)--Gratified Merchant
    if Camp6GratifiedMerchant ~=nil then
    Despawn(Camp6GratifiedMerchant)
    end  
end

