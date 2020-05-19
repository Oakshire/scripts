--[[
    Script Name    : Spells/Commoner/AzureSkystrider.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.03 06:03:59
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, SkillAmt, Ground, Air)    
-- Summons a mount
SetMount(Caster, 15857)
-- Mez the target.
  AddControlEffect(Target, 13)
-- Increase Focus, Disruption, Ministration, Subjugation, Ordination, Slashing, Piercing, Crushing,
--Aggression and Ranged of caster by 5
AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ordination"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Aggression"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)

--Increases your ground speed by 130%
--Increases your air speed by 200%
    AddSpellBonus(Caster, 611, Ground)
    AddSpellBonus(Target, 612, Air)

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 13)
end