--[[
    Script Name    : Spells/Scout/Bard/Dirge/DarosDullBlade.lua
    Script Author  : theFoof
    Script Date    : 2014.2.20
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    if IsFlanking(Caster, Target) then
        return true
    else
        SendMessage(Caster, "You must be flanking or behind your target to use this ability!", "yellow")
        return false
    end
end

function cast(Caster, Target, DmgType, DmgLow, DmgHigh, DPS)
-- Inflicts 24 - 41 melee damage on target
-- Decreases Damage Per Second of target by 10.9
-- Must be flanking or behind

    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
    AddSpellBonus(Target, 629, DPS)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end

