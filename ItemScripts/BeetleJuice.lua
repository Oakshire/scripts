--[[
    Script Name    : ItemScripts/BeetleJuice.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 08:10:25
    Script Purpose : 
                   : 
--]]

local HomemadeBeetleJuice = 5380 -- Homemade Beetle Juice Quest

function examined(Item, Player)
if not HasQuest(Player, HomemadeBeetleJuice) then
OfferQuest(nil, Player, HomemadeBeetleJuice)
end
   end


