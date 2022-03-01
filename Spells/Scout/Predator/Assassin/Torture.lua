--[[
    Script Name    : Spells/Scout/Predator/Assassin/Torture.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 04:04:55
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt, BonusAmt)
    -- Decreases Defense of target by 2.3
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)

    -- Decreases Mitigation of target vs physical damage by 52
    AddSpellBonus(Target, 200, BonusAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end
