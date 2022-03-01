--[[
	Script Name	: SpawnScripts/FrostfangSea/caverubbish.lua
	Script Purpose	: for the spawn "cave rubbish"
	Script Author	: theFoof
	Script Date	: 2013.05.19
	Script Notes	: 
--]]
local SiftingGarbage = 14

function spawn(NPC)
    SetRequiredQuest(NPC, SiftingGarbage, 1)
end

function respawn(NPC)
end

function casted_on(NPC, Caster, SpellName)
    if SpellName == "search through the pile" and GetQuestStep(Caster, SiftingGarbage) == 1 then
	    AddStepProgress(Caster, SiftingGarbage, 1, 1)
		Despawn(NPC)
	end
end