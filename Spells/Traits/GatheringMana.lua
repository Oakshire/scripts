--[[
    Script Name    : Spells/Traits/GatheringMana.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:52
    Script Purpose : 
                   : 
--]]

-- Increases Power Regen of caster by 9.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 601, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end