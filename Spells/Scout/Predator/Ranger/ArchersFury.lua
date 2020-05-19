--[[
    Script Name    : Spells/Scout/Predator/Ranger/ArchersFury.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 07:03:13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Dmg, DefAmt, SkillAmt)
    -- On a ranged hit this spell has a 30% chance to cast Quick Shot on target of attack.  
    AddProc(Target, 18, 30)

    -- Decreases Defense of caster by 5.1
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefAmt)

    -- Increases Crushing, Piercing, Ranged and Slashing of caster by 6.9
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)

end

function proc(Caster, Target, Type, Dmg, DefAmt, SkillAmt)
    if Type == 18 then
        --     Inflicts 83 ranged damage on target
        ProcDamage(Caster, Target, "Quick Shot", 0, Dmg)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveProc(Target)
end
