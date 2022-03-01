--[[
    Script Name    : SpawnScripts/ThunderingSteppes/zonetotishsoloquest.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.09 04:07:08
    Script Purpose : 
                   : 
--]]

local TheGnollCave = 106

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "CheckQuest")
end

function respawn(NPC)
    Spawn(NPC)
end

function CheckQuest(NPC, Player)
    if HasCompletedQuest(Player, TheGnollCave) then
        AddSpawnAccess(NPC, Player)
    end
end