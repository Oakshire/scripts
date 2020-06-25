--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Blackguard.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 09:10:50
    Script Purpose : 
                   : 
--]]

-- Decreases Slashing, Piercing and Crushing of caster by 29.2
-- Increases Aggression of caster by 11.9
-- Increases Defense and Parry of caster by 23.8
--Increases the caster's effectiveness of worn armor vs physical damage by 18%
function cast(Caster, Target, Offskill, Agro, DefAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), Agro)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefAmt)
    AddSpellBonus(Target, 678, 18)
end



function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end



