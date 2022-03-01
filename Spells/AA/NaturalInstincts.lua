--[[
    Script Name    : Spells/AA/NaturalInstincts.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:46
    Script Purpose : 
                   : 
--]]

-- Caster will have their chance to hit with a weapon increased by 1.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 682, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end