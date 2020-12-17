--[[
    Script Name    : Spells/AA/Precision.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:43
    Script Purpose : 
                   : 
--]]

-- Improves base auto-attack multiplier of caster by 0.01. Does not apply to spell weapons.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 649, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end