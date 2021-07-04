--[[
    Script Name    : ItemScripts/tealeaves.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.03 10:07:28
    Script Purpose : 
                   : 
--]]

local ChannelMenderTea = 5278

function examined(Item, Player)
if not HasQuest(Player, ChannelMenderTea) then
OfferQuest(nil, Player, ChannelMenderTea)
end
end

function obtained(Item, Player)
if GetItemCount(13874) > 1 then
RemoveItem(Player, 13874)
end
  end

