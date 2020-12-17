--[[
    Script Name    : Spells/AA/RabidHostility.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:14
    Script Purpose : 
                   : 
--]]

-- Improves the casting speed of hostile spells by 2%.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 664, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end