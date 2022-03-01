--[[
    Script Name    : SpawnScripts/Commonlands/bloodstainedfingerbones.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.11 06:05:04
    Script Purpose : 
                   : 
--]]

local TheSkeletonKey = 411

function spawn(NPC)

end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Gathering' then
		            Despawn(NPC)
		            SendMessage(Spawn, "You collect the bloody finger",   20) 
                    if GetQuestStep(Spawn, TheSkeletonKey) == 1 then
                     SetStepComplete(Spawn, TheSkeletonKey, 1)
                    elseif GetQuestStep(Spawn, TheSkeletonKey) == 2 then
                      SetStepComplete(Spawn, TheSkeletonKey, 2)
                    elseif GetQuestStep(Spawn, TheSkeletonKey) == 3 then
                      SetStepComplete(Spawn, TheSkeletonKey, 3) 
                    elseif GetQuestStep(Spawn, TheSkeletonKey) == 4 then
                      SetStepComplete(Spawn, TheSkeletonKey, 4)
                    elseif GetQuestStep(Spawn, TheSkeletonKey) == 5 then
                      SetStepComplete(Spawn, TheSkeletonKey, 5)
                    end
                    
end
    end