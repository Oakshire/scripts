--[[
    Script Name    : Spells/ThoughtsofFelwithe.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 01:12:54
    Script Purpose : 
                   : 
--]]

-- Increases Combat Power Regen of caster by 5.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 605, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end