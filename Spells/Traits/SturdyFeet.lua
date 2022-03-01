--[[
    Script Name    : Spells/Traits/SturdyFeet.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:40
    Script Purpose : 
                   : 
--]]

-- Decreases falling damage taken by caster by 15.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 668, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end