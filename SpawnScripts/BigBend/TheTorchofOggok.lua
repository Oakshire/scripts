--[[
    Script Name    : SpawnScripts/BigBend/TheTorchofOggok.lua
    Script Author  : torsten
    Script Date    : 2022.07.12 07:07:04
    Script Purpose : 
                   : 
--]]

local TrollishDelights = 5639

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Cook the rats' then
		if  GetQuestStep(Spawn, TrollishDelights) == 2 then
            SetStepComplete(Spawn, TrollishDelights, 2)
        end
    end
end

function spawn(NPC)
    SetRequiredQuest(NPC, TrollishDelights, 2) -- only usable in Step 2
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end