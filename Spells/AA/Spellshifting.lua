--[[
    Script Name    : Spells/AA/Spellshifting.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:56
    Script Purpose : 
                   : 
--]]

-- Increases Ability Reuse Speed of caster by 12.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 662, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end