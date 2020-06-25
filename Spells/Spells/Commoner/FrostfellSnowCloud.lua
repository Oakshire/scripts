--[[
    Script Name    : Spells/Commoner/FrostfellSnowCloud.lua
    Script Author  : neatz09
    Script Date    : 2019.11.16 10:11:46
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, SkillAmt, Ground)    
-- Summons a mount
SetMount(Caster, 15487)
-- Increase Focus, Disruption, Ministration, Subjugation and Ordination of caster by 5
AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Ordination"), SkillAmt)
--Increases your ground speed by 130%
    AddSpellBonus(Caster, 611, Ground)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
