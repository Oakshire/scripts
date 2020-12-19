--[[
    Script Name    : Spells/Traits/MarshalsSkill.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:10
    Script Purpose : 
                   : 
--]]

-- Increases Multi Attack of caster by 2.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 641, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end