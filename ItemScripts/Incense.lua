--[[
    Script Name    : ItemScripts/Incense.lua
    Script Author  : torsten
    Script Date    : 2022.07.12 11:07:58
    Script Purpose : 
                   : 
--]]

local TheFumeFireCeremony = 5635

function examined(Item, Player)
    if not QuestStepIsComplete(Player, TheFumeFireCeremony, 3) then
        SetStepComplete(Player, TheFumeFireCeremony, 3)
    end
end


