--[[
    Script Name    : Spells/Traits/AgileCreations.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:25
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