--[[
    Script Name    : SpawnScripts/Antonica/aratnest.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.13 12:07:08
    Script Purpose : Facilitates nest spawning loops.
                   : 
--]]

function spawn(NPC)
CampSpawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function CampSpawn(NPC)
if GetSpawnLocationID(NPC)==589354 then --RatNest1
Camp1Spawn(NPC)
elseif GetSpawnLocationID(NPC)==589353 then
Camp2Spawn(NPC)
end
end

--- CAMP 1

function Camp1Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp1Spawn1 = SpawnByLocationID(zone, 133773758)
local Camp1Spawn2 = SpawnByLocationID(zone, 133773759)
local Camp1Spawn3 = SpawnByLocationID(zone, 133773760)
local Camp1Spawn4 = SpawnByLocationID(zone, 133773761)
local Camp1Spawn5 = SpawnByLocationID(zone, 133773762)
local Camp1Spawn6 = SpawnByLocationID(zone, 133773763)
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage1")
end

function Camp1SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp1Spawn1 = GetSpawnByLocationID(zone, 133773758)
local Camp1Spawn2 = GetSpawnByLocationID(zone, 133773759)
local Camp1Spawn3 = GetSpawnByLocationID(zone, 133773760)
local Camp1Spawn4 = GetSpawnByLocationID(zone, 133773761)
local Camp1Spawn5 = GetSpawnByLocationID(zone, 133773762)
local Camp1Spawn6 = GetSpawnByLocationID(zone, 133773763)
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
    local Camp1_Stage2Spawn1=SpawnByLocationID(zone, 133773764)--large moat rat
    FaceTarget(Camp1_Stage2Spawn1, Spawn)
    Attack(Camp1_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2")
end


function Camp1SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage2Spawn1 = GetSpawnByLocationID(zone, 133773764)
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp1_Stage3")
  end
end


function Camp1_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=100 then   -- % Chance for Boss to Spawn
    local Camp1_Stage3Spawn1=SpawnByLocationID(zone, 133773789)--Toe-toed rat
    FaceTarget(Camp1_Stage3Spawn1, Spawn)
    Attack(Camp1_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp1Reset")
end
end


function Camp1SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp1_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773789)
 if IsAlive(Camp1_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp1SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp1Reset")
  end
end


function Camp1Reset(NPC)
local zone = GetZone(NPC)
local Camp1Object = GetSpawnByLocationID(zone, 589354)   
if Camp1Object~= nil then
Despawn(Camp1Object)
end
end


--- CAMP 2

function Camp2Spawn(NPC, Spawn) -- Stage 1
local zone = GetZone(NPC)
local Camp2Spawn1 = SpawnByLocationID(zone, 133773778)
local Camp2Spawn2 = SpawnByLocationID(zone, 133773779)
local Camp2Spawn3 = SpawnByLocationID(zone, 133773780)
local Camp2Spawn4 = SpawnByLocationID(zone, 133773781)
local Camp2Spawn5 = SpawnByLocationID(zone, 133773782)
local Camp2Spawn6 = SpawnByLocationID(zone, 133773783)
AddTimer(NPC,6000,"Camp2SpawnCheck_Stage1")
end

function Camp2SpawnCheck_Stage1(NPC, Spawn)  --Stage 1 Living Check
  local zone = GetZone(NPC)
local Camp2Spawn1 = GetSpawnByLocationID(zone, 133773778)
local Camp2Spawn2 = GetSpawnByLocationID(zone, 133773779)
local Camp2Spawn3 = GetSpawnByLocationID(zone, 133773780)
local Camp2Spawn4 = GetSpawnByLocationID(zone, 133773781)
local Camp2Spawn5 = GetSpawnByLocationID(zone, 133773782)
local Camp2Spawn6 = GetSpawnByLocationID(zone, 133773783)
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
    local Camp2_Stage2Spawn1=SpawnByLocationID(zone, 183781)--large moat rat
    FaceTarget(Camp2_Stage2Spawn1, Spawn)
    Attack(Camp2_Stage2Spawn1, Spawn)
    
AddTimer(NPC,6000,"Camp2SpawnCheck_Stage2")
end


function Camp2SpawnCheck_Stage2(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp2_Stage2Spawn1 = GetSpawnByLocationID(zone, 183781)
 if IsAlive(Camp2_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage2",1, Spawn)
   else
      AddTimer(NPC, 6000, "Camp2_Stage3")
  end
end


function Camp2_Stage3(NPC, Spawn) --Stage 3 (Possible Boss) 
  local zone = GetZone(NPC)
  local choice = math.random(0,100)
    if choice <=100 then   -- % Chance for Boss to Spawn
    local Camp2_Stage3Spawn1=SpawnByLocationID(zone, 133773784)--Toe-toed rat
    FaceTarget(Camp2_Stage3Spawn1, Spawn)
    Attack(Camp2_Stage3Spawn1, Spawn)
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage3")
else    -- Failed Boss Spawn
AddTimer(NPC,10000,"Camp2Reset")
end
end


function Camp2SpawnCheck_Stage3(NPC, Spawn)  --Stage 2 Living Check
  local zone = GetZone(NPC)
  local Camp2_Stage3Spawn1 = GetSpawnByLocationID(zone, 133773785)
 if IsAlive(Camp2_Stage2Spawn1) == true then
    AddTimer(NPC,6000,"Camp2SpawnCheck_Stage3",1,Spawn)
   else
      AddTimer(NPC, 10000, "Camp2Reset")
  end
end


function Camp2Reset(NPC)
local zone = GetZone(NPC)
local Camp2Object = GetSpawnByLocationID(zone, 589353)   
if Camp2Object~= nil then
Despawn(Camp2Object)
end
end

   
   
