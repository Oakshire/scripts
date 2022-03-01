--[[
    Script Name    : Spells/Traits/GatherMana.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:25
    Script Purpose : 
                   : 
--]]

-- Increases Power Regen of caster by 6.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 601, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end