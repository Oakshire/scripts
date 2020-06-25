--[[
    Script Name    : Spells/Priest/Druid/Vigor.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 05:01:25
    Script Purpose : 
                   : 
--]]

-- Increases WIS of target by 17.8
-- Increases Max Power of target by 68.8

function cast(Caster, Target, Wis, Pwr)
    AddSpellBonus(Target, 3, Wis)
    AddSpellBonus(Target, 619, Pwr)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

