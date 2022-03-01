--[[
    Script Name    : Spells/Traits/DubiousFocus.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:45
    Script Purpose : 
                   : 
--]]

-- Increases Max Power of caster by 1.0%
-- Increases Max Health of caster by 2.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 620, BonusAmt)
	AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
