--[[
    Script Name    : Spells/Priest/Cleric/SmiteCorruption.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 03:10:52
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 1 divine damage on target instantly and every 4 seconds
-- Decreases WIS of target by 24.3

function cast(Caster, Target, DmgType, MinVal, MaxVal, Stat)
SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 3, Stat)

end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, MinVal, MaxVal)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
