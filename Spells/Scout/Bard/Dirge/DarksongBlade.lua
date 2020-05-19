--[[
    Script Name    : Spells/Scout/Bard/Dirge/DarksongBlade.lua
    Script Author  : theFoof
    Script Date    : 2013.12.08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DDType1, DmgLow1, DmgHigh1, DDType2, DmgLow2, DmgHigh2, DoTType, DotAmt)
-- Info from spell_display_effects (remove from script when done)
-- Inflicts disease damage on target
-- Inflicts disease damage on target
-- Inflicts disease damage on target instantly and every 6 seconds
-- NOTE: If one of these attacks misses, the rest after miss automaticly

    SpellDamage(Target, DDType1, DmgLow1, DmgHigh1)
    
    if LastSpellAttackHit() then
        SpellDamage(Target, DDType2, DmgLow2, DmgHigh2)
    end
    if LastSpellAttackHit() then
        SpellDamage(Target, DoTType, DotAmt)
    end
end

function tick(Caster, Target, DDType1, DmgLow1, DmgHigh1, DDType2, DmgLow2, DmgHigh2, DoTType, DotAmt)
    if LastSpellAttackHit() then
        SpellDamage(Target, DoTType, DotAmt)
    end
end

function remove(Caster, Target)
end

