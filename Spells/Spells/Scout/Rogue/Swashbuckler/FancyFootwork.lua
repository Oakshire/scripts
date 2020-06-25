--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/FancyFootwork.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 02:12:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt, AggAmt, DefAmt)
    -- Decreases Slashing, Piercing and Crushing of caster by 13.8
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)

    -- Increases Aggression of caster by 2.4
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), AggAmt)

    -- Increases Parry and Defense of caster by 4.9
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefAmt)

    -- Increases the caster's effectiveness of worn armor vs physical damage by 18%
    AddSpellBonus(Target, 678, 18)

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end
