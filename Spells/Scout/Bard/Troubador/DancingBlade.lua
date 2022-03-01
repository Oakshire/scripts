--[[
    Script Name    : Spells/Scout/Bard/Troubadour/DancingBlade.lua
    Script Author  : Zcoretri
    Script Date    : 17.March.2014
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

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, Mitigation)
    -- Inflicts melee damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    -- Decreases Mitigation of target vs elemental, noxious and arcane damage
    AddSpellBonus(Target, 201, Mitigation)
    AddSpellBonus(Target, 202, Mitigation)
    AddSpellBonus(Target, 203, Mitigation)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

