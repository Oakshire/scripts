--[[
    Script Name    : ItemScripts/plaguereport.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 09:07:22
    Script Purpose : 
                   : 
--]]

local EliminationOfTheInfected

function examined(Item, Player)
if not HasQuest(Player,  EliminationOfTheInfected) and not HasCompletedQuest(Player,  EliminationOfTheInfected) then
OfferQuest(nil, Player,  EliminationOfTheInfected)
end
end

function obtained(Item, Player)
local count = GetItemCount(Item)
if count > 1 then
RemoveItem(Player, 10401)
end
  end

