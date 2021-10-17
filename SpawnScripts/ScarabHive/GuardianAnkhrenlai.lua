--[[
    Script Name    : SpawnScripts/ScarabHive/GuardianAnkhrenlai.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.16 10:10:36
    Script Purpose : 
                   : 
--]]


local Guardian_AnkhentarisID = 619216
local Guardian_AnkhemaufutID = 619217
local Guardian_AnkhumyalID = 619232
local Queen = 619238
function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function death(NPC, Spawn)
local zone = GetZone(Spawn)
local Guardian_Ankhentaris = GetSpawnByLocationID(zone, Guardian_AnkhentarisID)
local Guardian_Ankhemaufut = GetSpawnByLocationID(zone, Guardian_AnkhemaufutID)
local Guardian_Ankhumyal = GetSpawnByLocationID(zone, Guardian_AnkhumyalID)
if not IsAlive(Guardian_Ankhemaufut) and not IsAlive(Guardian_Ankhumyal) and not IsAlive(Guardian_Ankhentaris) then
SpawnByLocationID(zone, Queen)
end
    end


function respawn(NPC)
	spawn(NPC)
end