--[[
    Script Name    : Spells/Traits/TheoricalImprovements.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:11
    Script Purpose : 
                   : 
--]]

-- Increases Combat Power Regen of caster by 5.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 604, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end