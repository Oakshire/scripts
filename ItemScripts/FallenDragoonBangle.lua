--[[
    Script Name    : ItemScripts/FallenDragoonBangle.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.12 08:07:26
    Script Purpose : 
                   : 
--]]

local SearchTheDepthsOfFallenGate = 5307

function examined(Item, Player)
if GetQuestStep(Player, SearchTheDepthsOfFallenGate) == 5 then
SetStepComplete(Player, SearchTheDepthsOfFallenGate, 5)
end
   end

