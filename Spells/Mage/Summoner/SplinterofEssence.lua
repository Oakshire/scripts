--[[
    Script Name    : Spells/Mage/Summoner/SplinterofEssence.lua
    Script Author  : neatz09
    Script Date    : 2020.11.07 01:11:14
    Script Purpose : 
                   : 
--]]

-- Summon 1 Splinter of Essence (Apprentice I)
function cast(Caster, Target, ItemID)
    if IsPlayer(Target) and HasItem(Target, ItemID) then 
		RemoveItem(Target, ItemID)
			end
	SummonItem(Target, ItemID, 1)
end