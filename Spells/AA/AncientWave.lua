--[[
    Script Name    : Spells/AA/AncientWave.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:44
    Script Purpose : 
                   : 
--]]

-- Caster has a 2% chance of having one of their weapons' autoattack affect multiple targets they are facing, who are within range of that weapon.
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 639, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end