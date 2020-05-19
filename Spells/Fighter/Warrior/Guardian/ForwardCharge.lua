--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/ForwardCharge.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 06:11:46
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stats, DefSkills, SkillAmt)
    AddSpellBonus(Target, 0, Stats)

    -- Increases Slashing, Piercing and Crushing of caster.
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)

    -- Decreases Defense of caster by 1.8
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end
