--[[
    Script Name    : Spells/Traits/PaladinsShieldTraining.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:35
    Script Purpose : 
                   : 
--]]

-- Increases caster's chance to block by 2.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 651, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end