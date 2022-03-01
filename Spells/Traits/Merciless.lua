--[[
    Script Name    : Spells/Traits/Merciless.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:09
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