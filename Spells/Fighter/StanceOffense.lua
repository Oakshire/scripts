--[[
    Script Name    : Spells/Fighter/StanceOffense.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 03:11:06
    Script Purpose : 
                   : 
--]]

-- Increases STR of caster by 10.0
-- Decreases Defense of caster by 2.2
-- Increases Slashing, Piercing and Crushing of caster by 4.0

function cast(Caster, Target, Str, Def, SkillAmt)
    AddSpellBonus(Target, 0, Str)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end