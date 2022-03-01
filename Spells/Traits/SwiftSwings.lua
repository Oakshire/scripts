--[[
    Script Name    : Spells/Traits/SwiftSwings.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:54
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