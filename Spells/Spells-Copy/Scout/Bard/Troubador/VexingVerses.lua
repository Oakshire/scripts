--[[
    Script Name    : Spells/Scout/Bard/Troubadour/VexingVerses.lua
    Script Author  : Zcoretri
    Script Date    : 17.March.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PwrLoss, HealthLoss, Speed, Defense, DmgType, MinDmg, MaxDmg)
    -- Decreases Ability Casting Speed of target
    AddSpellBonus(Target, 664, Speed)
    -- Decreases Defense of target
    AddSkillBonus(Target, 609880714, Defense)
    -- Target will lose 8% more power when power is consumed
    -- 8% of target's power consumed will also be drained from target's health

    -- Inflicts magic damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function remove(Caster, Target, PwrLoss, HealthLoss, Speed, Defense, DmgType, MinDmg, MaxDmg)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end

