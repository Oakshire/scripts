--[[
    Script Name    : Spells/Traits/AncestralIre.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:16
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