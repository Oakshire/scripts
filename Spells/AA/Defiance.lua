--[[
    Script Name    : Spells/AA/Defiance.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 01:12:12
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs physical damage by 275

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 200, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end