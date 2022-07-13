--[[
    Script Name    : SpawnScripts/thunderdome/AGnollTent.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.12 12:07:24
    Script Purpose : 
                   : 
--]]
--133773735 fairy
--133773731,133773732,133773733,133773734 golems

function spawn(NPC)
CampSpawn (NPC)
end

function CampSpawn(NPC)
if GetSpawnLocationID(NPC)==133773730 then
Camp1(NPC)
end
end

function Camp1(NPC, Spawn)
local zone = GetZone(NPC)
local Object1 = SpawnByLocationID(zone, 133773736)
local Object2 = SpawnByLocationID(zone, 133773737)
local choice = math.random(0,2)
    if choice <= 1 then
 local Merchant = SpawnByLocationID(zone, 133773749)
    else
   end

AddTimer(NPC,3500,"Camp1Pop")
end


function Camp1Pop(NPC, Spawn)
local zone = GetZone(NPC)
if GetSpawnByLocationID(zone, 133773738) ==nil then
local Spawn1 = SpawnByLocationID(zone, 133773738)
end
if GetSpawnByLocationID(zone, 133773739) ==nil then
local Spawn2 = SpawnByLocationID(zone, 133773739)
end
if GetSpawnByLocationID(zone, 133773740) ==nil then
local Spawn3 = SpawnByLocationID(zone, 133773740)
end
if GetSpawnByLocationID(zone, 133773741) ==nil then
local Spawn4 = SpawnByLocationID(zone, 133773741)
end
end

function respawn(NPC)
	spawn(NPC)
end