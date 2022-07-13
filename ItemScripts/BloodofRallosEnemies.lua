--[[
    Script Name    : ItemScripts/BloodofRallosEnemies.lua
    Script Author  : torsten
    Script Date    : 2022.07.12 11:07:45
    Script Purpose : 
                   : 
--]]

local TheFumeFireCeremony = 5635

function examined(Item, Player)
    if not QuestStepIsComplete(Player, TheFumeFireCeremony, 5) then
        SetStepComplete(Player, TheFumeFireCeremony, 5)
    end
end

