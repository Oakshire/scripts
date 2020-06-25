--[[
    Script Name    : SpawnScripts/Generic/GilrixSpawnGroup.lua
    Script Author  : Ememjr
    Script Date    : 2020.05.05 09:05:41
    Script Purpose : 
                   : 
--]]
local quest = 210

function spawn(NPC)
    SetRequiredQuest(NPC, quest, 1)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end
function group_dead(NPC, Spawn)
    if HasQuest(Spawn, quest) and GetQuestStep(Spawn, quest) == 1 then
	SetStepComplete(Spawn, quest, 1)
    end
end
function respawn(NPC)

end

