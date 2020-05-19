--[[
    Script Name    : SpawnScripts/CircleElders/TayilNVelex.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.24 01:10:46
    Script Purpose : 
                   : 
--]]

local TheFinalAssault = 367

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    
    if HasQuest(Spawn, TheFinalAssault) and GetQuestStep(Spawn, TheFinalAssault) == 6 then
        SetStepComplete(Spawn, TheFinalAssault, 6)
    end
end

function respawn(NPC)

end

