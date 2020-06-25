--[[
    Script Name    : Spells/Scout/Bard/Dirge/MisfortunesKiss.lua
    Script Author  : theFoof
    Script Date    : 2013.12.8
    Script Purpose : 
                   : 
--]]


function precast(Caster, Target)
    if IsStealthed(Caster) then
        return true
    end
    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false, 0
end

function cast(Caster, Target, DmgType, DmgLow, DmgHigh, WisAmt)
-- Info from spell_display_effects (remove from script when done)
-- Inflicts 18 - 30 melee damage on target
-- Decreases WIS of target by 5.0
-- You must be sneaking to use this ability.

    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
    AddSpellBonus(Target, 3, WisAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
