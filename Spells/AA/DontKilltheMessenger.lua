--[[
    Script Name    : Spells/AA/DontKilltheMessenger.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 04:12:37
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of group members (AE) by 7.5

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 654, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end