--[[
    Script Name    : Spells/Fighter/Crusader/StanceKnightsStance.lua
    Script Author  : LordPazuzu
    Script Date    : 3/17/2023
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Wis, OffSkill, DefSkill, ArmorBlock)
    Level = GetLevel(Caster)
    SpellLevel = 16
    Mastery = SpellLevel + 10
            
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    Bonus = LvlBonus * 0.2
    --WisBonus = Wis + Bonus
    OffBonus = OffSkill + Bonus
    DefBonus = DefSkill + Bonus
    
    --AddSpellBonus(Caster, 3, WisBonus)
    --AddSpellBonus(Caster, 678, ArmorBlock)
    AddSpellBonus(Caster, 651, ArmorBlock)
    AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffBonus)
    AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffBonus)
    AddSkillBonus(Caster, GetSkillIDByName("Crushing"), OffBonus)
    AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefBonus)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end

