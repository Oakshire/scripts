--[[
    Script Name    : Spells/Scout/Rogue/DaringAdvance.lua
    Script Author  : LordPazuzu
    Script Date    : 1/3/2023
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DefAmt, SkillAmt, DmgType, DmgAmt)


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
    Level = GetLevel(Caster)
    SpellLevel = 13
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus *2 + StatBonus
    TotalDmg = DmgAmt + math.floor(DmgBonus)

    if Type == 3 then
        ProcDamage(Caster, Target, "Interrupt", DmgType, TotalDmg)
        Interrupt(Caster, Target)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveProc(Target)
end
