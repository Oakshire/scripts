--[[
    Script Name      :    ItemScripts/JinglesLastingThawPotion.lua
    Script Purpose   :    Handles the item "Jingle's Lasting Thaw Potion"
    Script Author    :    vo1d
    Script Date      :    2019.10.30
    Script Notes     :    
--]]

-- Original Item Values:
-- Name: a vial of breezes
-- Description: A small vial that contains a captured breeze. A merchant might pay a few coin for this item.
-- Item Type: Normal
-- StackCount: 20
-- MaxCharges: 0
-- Toggles: false (all)

function used(Item, Player)
    local target = GetTarget(Player)
	if GetName(target) == 'Candice Cheriweth' or 'Gardy Ex-Giftgiver' or 'Mr. McScroogle' or 'Queen Bunny' or 'Snarf Frostfoot' then
        CastThawPotion(Player, target)
    end
end

function CastThawPotion(Player, target)
    Say(Player, "Casting Thaw Potion!")
    CastEntityCommand(Player, target, 930, "pour acid on")
end