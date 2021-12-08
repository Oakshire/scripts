--[[
    Script Name    : ItemScripts/devpotion.lua
    Script Author  : bubbajoe
    Script Date    : 2021.12.07 11:12:06
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
SetMaxHP(Player, GetMaxHP * 3)
end

