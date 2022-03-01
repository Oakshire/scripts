--[[
    Script Name    : Spells/Commoner/FrostfellSnowstag.lua
    Script Author  : Skywalker646
    Script Date    : 2019.11.23 07:11:14
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
SetMount(Caster, 23470)
SetMountColor(Caster, 255, 255, 255, 0, 0, 255)  
  Say(Caster, "Model not accurate")

AddControlEffect(Caster, 12)
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
--Increases your air speed by 150%
    AddSpellBonus(Caster, 611, Ground)
    AddSpellBonus(Target, 612, Air)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
