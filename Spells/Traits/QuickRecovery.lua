--[[
    Script Name    : Spells/Traits/QuickRecovery.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:21
    Script Purpose : 
                   : 
--]]

-- Increases Health Regen of caster by 9.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 600, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end