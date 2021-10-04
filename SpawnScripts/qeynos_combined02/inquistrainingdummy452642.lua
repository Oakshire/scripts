--[[
    Script Name    : SpawnScripts/qeynos_combined02/inquistrainingdummy452642.lua
    Script Author  : Rylec
    Script Date    : 2021.10.03 10:10:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetLuaBrain(NPC)
    SetBrainTick(NPC, 200)
    Think(NPC, Spawn)
end

function hailed(NPC, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end

function Think(NPC, Spawn)
    local mostHated = GetMostHated(NPC)
        if mostHated ~= nil then
        ClearHate(NPC)
        SetInCombat(NPC, false)
        ClearEncounter(NPC)
    end    
end