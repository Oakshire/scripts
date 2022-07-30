--[[
    Script Name    : ItemScripts/aTarnishedsilverkey.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.30 09:07:45
    Script Purpose : 
                   : 
--]]

local aTarnishedSilverKey = 5709

function examined(Item, Player)
if not HasQuest(Player, aTarnishedSilverKey) then
OfferQuest(nil, Player, aTarnishedSilverKey)
  end
end

