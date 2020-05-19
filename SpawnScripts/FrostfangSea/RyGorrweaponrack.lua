--[[
	Script Name		:	SpawnScripts/FrostfangSea/RyGorrweaponrack.lua
	Script Purpose	:	for the ry'gorr weapon racks (unnamed spawn)
	Script Author	:	theFoof
	Script Date		:	2013.6.10
	Script Notes	:	
--]]

local RoughingReinforcements = 57

function spawn(NPC)
	SetRequiredQuest(NPC, RoughingReinforcements, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "Destroy Ry'Gorr Weapons" then
		if HasQuest(Spawn, RoughingReinforcements) then
	    	if not QuestStepIsComplete(Spawn, RoughingReinforcements, 3) then
		    	AddStepProgress(Spawn, RoughingReinforcements, 3, 1)
		    	Despawn(NPC)
			end
		end
	end
end
