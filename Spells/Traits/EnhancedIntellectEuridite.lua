--[[
    Script Name    : Spells/Traits/EnhancedIntellectEuridite.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:41
    Script Purpose : 
                   : 
--]]

-- Increases Max Power of caster by 3.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 620, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end