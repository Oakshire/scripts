--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Gouge.lua
    Script Author  : Zcoretri
    Script Date    : 14.March.2014
    Script Purpose : Added ifLastHit 5/13/20
                   : 
--]]

function precast(Caster, Target)
    -- Must be in front of or flanking
    if IsFlanking(Caster, Target) then
        return true
    else
        SendMessage(Caster, "You must be flanking your target to use this ability!", "yellow")
        return false
    end
end

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, Parry)
    -- Decreases Parry of target by 8.1
    -- Inflicts 98 - 163 melee damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    if LastSpellAttackHit() then
    AddSkillBonus(Target, 540022425, Parry)
end
end

function remove(Caster, Target)
    RemoveSkillBonue(Target)
end

