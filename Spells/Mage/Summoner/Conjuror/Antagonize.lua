--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/Antagonize.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 05:03:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Pot, Atk, DefSkills, OffSkills)
    --     Increases Potency of target by 1.8%
    AddSpellBonus(Target, 659, Pot)

    --     Increases Attack Speed of target by 16.5
    AddSpellBonus(Target, 617, Atk)

    --     Decreases Defense and Parry of target by 4.9
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkills)

    --     Increases Piercing, Slashing and Crushing of target by 3.0
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
