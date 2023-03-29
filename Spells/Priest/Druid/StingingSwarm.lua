--[[
    Script Name    : Spells/Priest/Druid/StingingSwarm.lua
    Script Author  : LordPazuzu
    Script Date    : 3/18/2023
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 8 - 10 divine damage on target instantly and every 3 seconds
-- Decreases Defense of target by 2.7

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
    Level = GetLevel(Caster)
    SpellLevel = 14
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    DebuffBonus = LvlBonus * 0.1
    TotalDebuff = SkillAmt - DebuffBonus
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    AddSkillBonus(Target, GetSkillIDByName("Defense"), TotalDebuff)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
    Level = GetLevel(Caster)
    SpellLevel = 14
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
