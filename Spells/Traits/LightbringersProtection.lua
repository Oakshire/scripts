--[[
    Script Name    : Spells/Traits/LightbringersProtection.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 05:12:36
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs arcane damage by 0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 203, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end