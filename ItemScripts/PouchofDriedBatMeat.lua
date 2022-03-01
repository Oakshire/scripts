--[[
    Script Name    : ItemScripts/PouchofDriedBatMeat.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 09:10:46
    Script Purpose : 
                   : 
--]]

local CryptJerky = 5385 -- Crypt Jerky  Quest

function examined(Item, Player)
if not HasQuest(Player, CryptJerky) then
OfferQuest(nil, Player, CryptJerky)
end
   end
