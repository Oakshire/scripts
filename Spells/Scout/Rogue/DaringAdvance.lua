--[[
    Script Name    : Spells/Scout/Rogue/DaringAdvance.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 03:12:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DefAmt, SkillAmt, DmgType, DmgAmt)
        Say(Caster, "Fervor not Implemented")

-- Decreases Defense of caster by 3.9
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefAmt)

    -- Increases Slashing of caster by 5.3
    -- Increases Piercing, Crushing and Ranged of caster by 5.3
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)

    AddProc(Target, 3, 30)
end

function proc(Caster, Target, Type, DefAmt, SkillAmt, DmgType, DmgAmt)
    -- On a melee hit this spell may cast Interrupt on target of attack.  Triggers about 6.0 times per minute. 
    --     Inflicts 19 melee damage on target
    --     Interrupts target
    if Type == 3 then
        ProcDamage(Caster, Target, "Interrupt", DmgType, DmgAmt)
        Interrupt(Caster, Target)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveProc(Target)
end
