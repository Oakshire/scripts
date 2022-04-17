--[[
    Script Name    : SpawnScripts/Stormhold/alifeleech.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.16 08:04:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
local MobLevel = GetLevel(NPC)    
if MobLevel == 17 then
SpawnSet(NPC, "hp", 3580)
SpawnSet(NPC, "power", 1855)
elseif MobLevel == 16 then
SpawnSet(NPC, "hp", 3145)
SpawnSet(NPC, "power", 1660)
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end