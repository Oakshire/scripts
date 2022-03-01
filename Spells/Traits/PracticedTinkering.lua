--[[
    Script Name    : Spells/Traits/PracticedTinkering.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:24
    Script Purpose : 
                   : 
--]]

-- Increases success chance by 2.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 804, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end