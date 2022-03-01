--[[
    Script Name    : SpawnScripts/Everfrost/apioneerwithoutawagonquestcrate.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2016.02.09 10:02:50
    Script Purpose : These crates are used for the quest A Pioneer without a Wagon
                   : 
--]]

local APWOAW = 168

function spawn(NPC, Player)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "QuestCheck", "QuestCheck")
end

function respawn(NPC)
    spawn(NPC)
end

function QuestCheck(NPC, Player)
    if GetQuestStep(Player, APWOAW) == 1 then
        AddSpawnAccess(NPC, Player)
    end
end

