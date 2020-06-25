--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/UnflinchingWill.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 05:10:36
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, OffSkillAmt, Agro, DefSkillAmt, MitAmt)
    -- Reduces physical damage done to caster by 5%
    AddSpellBonus(Target, 313, 5) -- Not sure on this value (313)

   -- Decreases Crushing, Piercing and Slashing of caster by 1.6
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillAmt)
    
-- Increases Agression of caster by 0.8
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), Agro)

-- Increases Defense and Parry of caster by 1.6
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkillAmt)

    -- Increases Mitigation of caster vs Elemental damage by 138
    AddSpellBonus(Target, 201, ResistAmt)

    -- Increases the caster's effectiveness of worn armor vs physical damage by 15%
    AddSpellBonus(Target, 678, 15)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
