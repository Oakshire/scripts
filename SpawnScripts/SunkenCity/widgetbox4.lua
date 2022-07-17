--[[
    Script Name    : SpawnScripts/SunkenCity/widgetbox4.lua
    Script Author  : torsten
    Script Date    : 2022.07.16 04:07:26
    Script Purpose : 
                   : 
--]]

local LukursAntiques = 374

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Search' then
		if  GetQuestStep(Spawn, LukursAntiques) == 2 then --ShadowedMask
            SetStepComplete(Spawn, LukursAntiques, 2)
        end
    end
end

function spawn(NPC)
    SetRequiredQuest(NPC, LukursAntiques, 2)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end