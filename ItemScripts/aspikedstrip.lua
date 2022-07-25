--[[
    Script Name    : ItemScripts/aspikedstrip.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.24 03:07:36
    Script Purpose : 
                   : 
--]]

local SpikedBracelet = 5699

function examined(Item, Player)
if not HasQuest(Player, SpikedBracelet) then
OfferQuest(nil, Player, SpikedBracelet)
  end
end

