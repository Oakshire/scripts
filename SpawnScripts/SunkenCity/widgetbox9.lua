--[[
    Script Name    : SpawnScripts/SunkenCity/widgetbox9.lua
    Script Author  : torsten
    Script Date    : 2022.07.16 04:07:10
    Script Purpose : 
                   : 
--]]

local LukursAntiques = 374

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Search' then
		if  GetQuestStep(Spawn, LukursAntiques) == 3 then --DawnMask
            SetStepComplete(Spawn, LukursAntiques, 3)
        end
    end
end

function spawn(NPC)
    SetRequiredQuest(NPC, LukursAntiques, 3)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end