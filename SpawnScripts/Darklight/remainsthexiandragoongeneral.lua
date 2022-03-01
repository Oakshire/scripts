--[[
	Script Name	: SpawnScripts/Darklight/remainsthexiandragoongeneral.lua
	Script Purpose	: For the quest, "No Undead Goes Unturned"
	Script Author	: Cynnar
	Script Date	: 2015.08.18
	Script Notes	:
--]]

local NoUndeadGoesUnturned = 134

function spawn(NPC)
    SetRequiredQuest(NPC, NoUndeadGoesUnturned, 1)
end

function respawn(NPC)
    spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
    if SpellName == "Plunder the Tomb" then
	    if HasQuest(Spawn, NoUndeadGoesUnturned) and not HasItem(Spawn, 14386) then
			SummonItem(Spawn, 14386)
			if GetQuestStep(Spawn, NoUndeadGoesUnturned) == 1 then
		    SetStepComplete(Caster, NoUndeadGoesUnturned, 1)
			end
		end
		
	end
end