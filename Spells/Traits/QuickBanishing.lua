--[[
    Script Name    : Spells/Traits/QuickBanishing.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:35
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