--[[
    Script Name    : Spells/Traits/EnhancedIntellect.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:36
    Script Purpose : 
                   : 
--]]

-- Increases INT of caster by 2.5

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 4, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end