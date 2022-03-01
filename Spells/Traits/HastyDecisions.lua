--[[
    Script Name    : Spells/Traits/HastyDecisions.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:21
    Script Purpose : 
                   : 
--]]

-- Increases the casting speed of hostile spells by 2%.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 664, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end