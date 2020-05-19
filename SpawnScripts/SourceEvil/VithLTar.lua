--[[
	Script Name		:	SpawnScripts/SourceEvil/VithLTar.lua
	Script Purpose	:	Make Vith attackable and spawns adds
	Script Author	:	Jabantiz
	Script Date		:	9/10/2016
	Script Notes	:	BeginAttack() is called from a timer function set in eviltotem.lua
--]]

local Priest1ID = 433225
local Priest2ID = 433226
local PetID = 2540008

function BeginAttack(NPC, Spawn)
	local zone = GetZone(NPC)
	local Priest1 = SpawnByLocationID(zone, Priest1ID)
	local Priest2 = SpawnByLocationID(zone, Priest2ID)
	
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	SpawnSet(NPC, "targetable", 1)
	SpawnSet(NPC, "visual_state", 0)
	SpawnSet(NPC, "faction", 1)
	
	PlayFlavor(NPC, "", "Now rot like your friends!", "", 1689589577, 4560189)
	Attack(NPC, Spawn)
	
	local Pet = GetSpawn(NPC, PetID)
	if Pet ~= nil then
		SpawnSet(Pet, "faction", 1)
		Attack(Pet, Spawn)
	end
	
	if Priest1 ~= nil then
		Attack(Priest1, Spawn)
	end
	
	if Priest2 ~= nil then
		Attack(Priest2, Spawn)
	end
	
end