--[[
    Script Name    : Spells/Priest/Shaman/Mystic/Haze.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 05:12:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, SkillAmt)
    -- Decreases Attack Speed of target by 9.2
    AddSpellBonus(Target, 617, BonusAmt)

    -- Decreases Slashing, Piercing and Crushing of target by 0.6
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end

