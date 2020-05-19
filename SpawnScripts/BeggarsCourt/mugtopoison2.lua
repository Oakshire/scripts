--[[
    Script Name    : SpawnScripts/BeggarsCourt/mugtopoison.lua
    Script Author  : Cynnar
    Script Date    : 2018.06.18 07:06:59
    Script Purpose : 
                   : 
--]]

local HALFELF_MENTOR_QUEST_2 = 308 -- Dirty Work

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_2) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_2) == 3 then
		if SpellName == 'Poison Mug' then
			SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_2, 3)
		end
	end
end

