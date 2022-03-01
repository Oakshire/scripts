--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/SmolderingFists.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 09:03:55
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Def, OffSkills, ProcDmgType, ProcDmgMin, ProcDmgMax)
        Say(Caster, "potency and Stoneskin/deathprevention/avoid not implemented.")

-- Decreases Defense of caster by 1.8
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)

    -- Increases Ranged, Crushing, Piercing and Slashing of caster by 2.4
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)

    -- On a melee hit this spell may cast Engulf on target of attack.  Triggers about 2.0 times per minute. 
    --     Inflicts 15 - 25 heat damage on target
    AddProc(Target, 3, 20)
end

function proc(Caster, Target, Type, Def, OffSkills, ProcDmgType, ProcDmgMin, ProcDmgMax)
    -- On a melee hit this spell may cast Engulf on target of attack.  Triggers about 2.0 times per minute. 
    --     Inflicts 15 - 25 heat damage on target
    if Type == 3 then
        ProcDamage(Caster, Target, "Engulf", ProcDmgType, ProcDmgMin, ProcDmgMax)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveProc(Target)
end
