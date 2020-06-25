--[[
    Script Name    : Spells/Commoner/MagicalStormWhistle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.01.07 08:01:38
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, SkillAmt, Speed)    
-- Summons a mount
SetMount(Caster, 13905)
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

-- Reduces maximum falling speed of caster.
AddControlEffect(Caster, 13)


    --Increases your Ground Speed by 135%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
RemoveControlEffect(Caster, 13)

SetMount(Caster, 0)
end
