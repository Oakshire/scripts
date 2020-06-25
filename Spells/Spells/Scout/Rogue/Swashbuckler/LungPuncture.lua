--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/LungPuncture.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 03:10:02
    Script Purpose : 
                   : 
--]]
function precast(Caster, Target)
-- Must be flanking or behind
    if not IsFlanking(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end
end
-- Inflicts 365 - 609 melee damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, Strike, Skill)
        SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Decreases strikethrough chance of target by 5.8%.    
AddSpellBonus(Target, 680, Strike)
-- Decreases Slashing, Crushing, Piercing, Ranged, Focus, Disruption, Subjugation and Ordination of target by 56.5
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), Skill)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Skill)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), Skill)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), Skill)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), Skill)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), Skill)
	AddSkillBonus(Target, GetSkillIDByName("Subjugation"), Skill)
	AddSkillBonus(Target, GetSkillIDByName("Ordination"), Skill)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
