--[[
    Script Name    : Spells/AA/WideSwings.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:15
    Script Purpose : 
                   : 
--]]

-- Caster has a 3.0% chance of having one of their weapons' auto-attack affect multiple targets they are facing, who are within range of that weapon.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 639, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end