--[[
    Script Name    : Spells/Commoner/AppaloosaPackHorse.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.24 08:03:59
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, SkillAmt)
--Summons a mount to ride    
SetMount(Caster, 9031)
-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Fishing, Trapping, Mining, Foresting, Gathering and Transmuting of caster by 14.3
    AddSkillBonus(Caster, GetSkillIDByName("Fishing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Trapping"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Mining"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Foresting"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Gathering"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Transmuting"), SkillAmt)

end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end
