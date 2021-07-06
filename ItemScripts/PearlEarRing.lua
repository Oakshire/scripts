--[[
    Script Name    : ItemScripts/PearlEarRing.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 08:07:22
    Script Purpose : 
                   : 
--]]

local WhatOnceWasFoundNowIsForeverLost = 5296

function examined(Item, Player)
if not HasQuest(Player, WhatOnceWasFoundNowIsForeverLost) then
OfferQuest(nil, Player, WhatOnceWasFoundNowIsForeverLost)
end
   end

