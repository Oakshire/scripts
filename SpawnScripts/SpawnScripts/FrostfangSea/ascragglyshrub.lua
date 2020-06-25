--[[
	Script Name	: SpawnScripts/FrostfangSea/ascragglyshrub.lua
	Script Purpose	: scraggly shrub
	Script Author	: theFoof
	Script Date	: 2013.05.15
	Script Notes	:
--]]

local ScragglyFoodstuffs = 9

function spawn(NPC)
    SetRequiredQuest(NPC, ScragglyFoodstuffs, 1)
end

function respawn(NPC)
    spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "harvest " then
	    if GetQuestStep(Caster, ScragglyFoodstuffs) == 1 then
		    AddStepProgress(Caster, ScragglyFoodstuffs, 1, 1)
			Despawn(Target)
		end
	end
end