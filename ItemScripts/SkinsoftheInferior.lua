--[[
    Script Name    : ItemScripts/SkinsoftheInferior.lua
    Script Author  : torsten
    Script Date    : 2022.07.12 11:07:56
    Script Purpose : 
                   : 
--]]

local TheFumeFireCeremony = 5635

function examined(Item, Player)
    if not QuestStepIsComplete(Player, TheFumeFireCeremony, 4) then
        SetStepComplete(Player, TheFumeFireCeremony, 4)
    end
end
