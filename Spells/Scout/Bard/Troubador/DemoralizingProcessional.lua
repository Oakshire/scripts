--[[
    Script Name    : Spells/Scout/Bard/Troubador/DemoralizingProcessional.lua
    Script Author  : neatz09
    Script Date    : 2020.09.27 06:09:57
    Script Purpose : 
                   : 
--]]

-- Applies Unsettled March.  Lasts for 1 minute.
--     Increases Fervor of group members (AE) by 2.1
--     Cannot be modified except by direct means
-- Decreases AGI, STR, INT and WIS of target encounter by 58.0
-- Decreases Slashing, Crushing, Piercing, Ranged, Focus, Disruption, Subjugation, Ordination and Aggression of target encounter by 14.8

function cast(Caster, Target, BonusAmt, OffSkillAmt, SkillAmt)
    AddSpellBonus(Target, 0, BonusAmt) --str
    AddSpellBonus(Target, 2, BonusAmt) --agi
    AddSpellBonus(Target, 3, BonusAmt) --wis
    AddSpellBonus(Target, 4, BonusAmt) --int
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), OffSkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), SkillAmt)
    Say(Caster, "Still needs a subspell for fervor component") --Data unparsed

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end
