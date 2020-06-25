--[[
    Script Name    : Spells/Scout/Predator/HonedReflexes.lua
    Script Author  : neatz09
    Script Date    : 2019.11.07 08:11:28
    Script Purpose : 
                   : 
--]]

-- Increases Haste of caster by 23.7

function cast(Caster, Target)
    AddSpellBonus(Target, 617, Haste)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
