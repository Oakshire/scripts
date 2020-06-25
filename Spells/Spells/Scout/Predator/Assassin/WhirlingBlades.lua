--[[
    Script Name    : Spells/Scout/Predator/Assassin/WhirlingBlades.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 04:04:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, Def, OffSkills)
        Say(Caster, "Fervor Not Implemented.")

-- On a melee hit this spell may cast Swipe on target of attack.  Triggers about 2.0 times per minute. 
    AddProc(Target, 3, 10)

    -- Decreases Defense of caster by 5.1
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)

    -- Increases Slashing, Piercing, Ranged and Crushing of caster by 6.9
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)

end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Def, OffSkills)
    -- On a melee hit this spell may cast Swipe on target of attack.  Triggers about 2.0 times per minute. 
    if Type == 3 then
        --     Inflicts 62 - 104 melee damage on target
        ProcDamage(Caster, Target, "Swipe", DmgType, MinVal, MaxVal)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveProc(Target)
end
