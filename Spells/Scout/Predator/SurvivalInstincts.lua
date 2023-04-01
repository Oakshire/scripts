--[[
    Script Name    : Spells/Scout/Predator/SurvivalInstincts.lua
    Script Author  : LordPazuzu
    Script Date    : 3/31/2023
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 13.1
-- Decreases Slashing, Piercing and Crushing of caster by 13.8
-- Increases Parry of caster by 7.3
-- Increases Defense of caster by 9.7

function cast(Caster, Target,Parry, Defense, Haste)

    AddSkillBonus(Caster, GetSkillIDByName("Parry"), Parry)
    AddSkillBonus(Caster, GetSkillIDByName("Defense"), Defense)
    AddSpellBonus(Caster, 617, Haste)
end

function remove(Caster, Target)
    RemoveSkillBonus(Caster)
    RemoveSpellBonus(Caster)
end