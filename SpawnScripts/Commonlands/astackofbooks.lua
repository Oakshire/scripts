--[[
    Script Name    : SpawnScripts/Commonlands/astackofbooks.lua
    Script Author  : torsten
    Script Date    : 2022.07.16 07:07:46
    Script Purpose : 
                   : 
--]]

DeliverHelptoJanusFieri = 5660

function casted_on(NPC, Spawn, SpellName)
    if SpellName == 'Pick up journal' then
	    if  GetQuestStep(Spawn, DeliverHelptoJanusFieri) == 2 then
            SetStepComplete(Spawn, DeliverHelptoJanusFieri, 2)
        end
    end
end

function spawn(NPC)
    SetRequiredQuest(NPC, DeliverHelptoJanusFieri, 2)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end