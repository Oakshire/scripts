--[[
    Script Name    : Spells/Traits/SpontaneousMetamorphosis.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:05
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 3.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end