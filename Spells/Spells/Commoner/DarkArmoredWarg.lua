--[[
    Script Name    : Spells/Commoner/DarkArmoredWarg.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.02 07:04:12
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
SetMount(Caster, 7313)
-- Increases Focus, Disruption, Ministration, Subjugation and Ordination of caster by 5
AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ordination"), SkillAmt)



    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
