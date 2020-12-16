--[[
    Script Name    : Spells/AA/Fortissimo.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 04:12:11
    Script Purpose : 
                   : 
--]]

-- Increases DPS of group members (AE) by 1.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 629, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end