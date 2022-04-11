--[[
    Script Name    : SpawnScripts/Stormhold/adefiledsentry.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.10 02:04:00
    Script Purpose : 
                   : 
--]]


function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end




function prespawn(NPC)
local Level = GetLevel(NPC)
if Level == 16 then
SpawnSet(NPC, "difficulty", 6)
SpawnSet(NPC, "hp", 2176)
SpawnSet(NPC, "power", 789)
elseif Level == 15 then
SpawnSet(NPC, "difficulty", 7)
SpawnSet(NPC, "hp", 3484)
SpawnSet(NPC, "power", 1439)
end
   end