--[[
    Script Name    : SpawnScripts/BigBend/qstgraktakstew.lua
    Script Author  : torsten
    Script Date    : 2022.07.14 05:07:45
    Script Purpose : 
                   : 
--]]

local SwampWaterStew = 5646

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Take stew' then
		if  GetQuestStep(Spawn, SwampWaterStew) == 1 then
            SetStepComplete(Spawn, SwampWaterStew, 1)
        end
    end
end

function spawn(NPC)
    SetRequiredQuest(NPC, 5646, 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end