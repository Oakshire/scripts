--[[
    Script Name    : ItemScripts/BootstruttersFieldGuidetotheCommonlands.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.31 03:05:55
    Script Purpose : 
                   : 
--]]

local  ATouroftheCommonlands = 5248

function examined(Item, Player)
if not HasQuest(Player, ATouroftheCommonlands) and not HasCompletedQuest(Player, ATouroftheCommonlands) then
OfferQuest(nil, Player, ATouroftheCommonlands)
end
   end

function obtained(Item, Player)
if HasCompletedQuest(Player, ATouroftheCommonlands) then
RemoveItem(Player, 4518)
end
   end