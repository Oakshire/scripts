--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/DoubleCross.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.15 08:12:20
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, SkillAmt)
        Say(Caster, "Missing Elemental damage bonus")

-- Decreases WIS of target by 6.1
    AddSpellBonus(Target, 600, BonusAmt)

    -- Decreases Defense of target by 2.0
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
