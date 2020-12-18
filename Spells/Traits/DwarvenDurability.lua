--[[
    Script Name    : Spells/Traits/DwarvenDurability.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:06
    Script Purpose : 
                   : 
--]]

-- Increases the durability gain by 2 every round.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 801, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end