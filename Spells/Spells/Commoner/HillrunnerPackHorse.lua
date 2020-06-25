--[[
    Script Name    : Spells/Commoner/HillrunnerPackHorse.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.20 08:04:26
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
SetMount(Caster, 9033)
SetMountColor(Caster, 107, 68, 35, 0, 0, 0) 
-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Fishing, Trapping, Mining, Foresting, Gathering and Transmuting of caster by 23.8
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

