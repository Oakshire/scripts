--[[
    Script Name    : SpawnScripts/BeggarsCourt/widgetqstaluciusvalusx1stash.lua
    Script Author  : torsten
    Script Date    : 2022.07.17 04:07:45
    Script Purpose : 
                   : 
--]]

local FindingtheStash = 5667

function casted_on(NPC, Spawn, SpellName)
    if SpellName == 'Take Stash' then
	    if  GetQuestStep(Spawn, FindingtheStash) == 1 then
            SetStepComplete(Spawn, FindingtheStash, 1)
        end
    end
end

function spawn(NPC)
    SetRequiredQuest(NPC, FindingtheStash, 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end