--[[
    Script Name    : SpawnScripts/Stormhold/adefiledsentry.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.10 02:04:00
    Script Purpose : 
                   : 
--]]




function spawn(NPC)
local MobLevel = GetLevel(NPC)    
if MobLevel == 16 then
SpawnSet(NPC, "hp", 2176)
SpawnSet(NPC, "power", 789)
SpawnSet(NPC, "difficulty", 6)
elseif MobLevel == 15 then
SpawnSet(NPC, "hp", 3484)
SpawnSet(NPC, "power", 1439)
SpawnSet(NPC, "difficulty", 7)
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end



