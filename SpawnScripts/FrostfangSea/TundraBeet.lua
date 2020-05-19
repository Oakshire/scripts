--[[
	Script Name	: SpawnScripts/FrostfangSea/TundraBeet.lua
	Script Purpose	: for the spawn signs named "tundra beet"
	Script Author	: theFoof
	Script Date	: 2013.5.18
	Script Notes	:
--]]
local BeetsAlternative = 13

function spawn(NPC)
    SetRequiredQuest(NPC, BeetsAlternative, 1)
	SetRequiredQuest(NPC, BeetsAlternative, 2)
end

function respawn(NPC)
    spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "gather tundra beet" then
	    if GetQuestStep(Caster, BeetsAlternative) == 1 then
		    AddStepProgress(Caster, BeetsAlternative, 1, 1)
			Despawn(Target)
		elseif GetQuestStep(Caster, BeetsAlternative) == 2 then
	        SetStepComplete(Caster, BeetsAlternative, 2)
			footprints = GetSpawn(Target, 4701753)
	        AddSpawnAccess(footprints, Caster)
			Despawn(Target)
		end
	end
end