--[[
    Script Name    : ItemScripts/aBagofBasicProvisions.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.09 07:09:55
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
RemoveItem(Player,1001011,1)
--SummonItem(Player, 1414,1)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36684,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SummonItem(Player, 36211,0)
SendMessage(Player, "You found 20 flasks of water in the bag.")
SendMessage(Player, "You found 20 rations in the bag.")
		alignment = GetDeity(Player)
		if alignment == 0 then
			OfferQuest(Player, 1413,1) -- evil rewards
		else
			SummonItem(Player, 1414,1) -- good rewards
		end
end

