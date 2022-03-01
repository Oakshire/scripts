--[[
    Script Name    : SpawnScripts/SunkenCity/aduskshark.lua
    Script Author  : fearfx
    Script Date    : 2017.01.25 07:01:42
    Script Purpose : A hacky fix for "The Big One" quest (ID = 190) to spawn Smolderfin
                   : 
--]]

local TheBigOne = 190

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function death(NPC, Spawn)
    if GetName(NPC) == "Smolderfin" then
        SetTempVariable(Spawn, "TheBigOne", nil)
        if HasQuest(Spawn, TheBigOne) then
            SetStepComplete(Spawn, TheBigOne, 1)
            AddLootItem(NPC, 11524)
        end
      
    end
end
