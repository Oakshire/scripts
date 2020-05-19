--[[
    Script Name    : Spells/Scout/Predator/Ranger/PrimalReflexes.lua
    Script Author  : neatz09
    Script Date    : 2019.10.06 10:10:11
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Decreases Hate Gain of caster by 7.8%

function cast(Caster, Target)
    AddSpellBonus(Target, 624, Hate)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
