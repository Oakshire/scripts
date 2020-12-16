--[[
    Script Name    : Spells/AA/RainingAttacks.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 01:12:01
    Script Purpose : 
                   : 
--]]

-- Caster has a 5.0% chance of having one of their weapons' auto-attack affect multiple targets they are facing, who are within range of that weapon.

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 639, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
