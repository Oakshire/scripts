--[[
    Script Name    : Spells/Commoner/RubiciteArmoredRhinowithBlackSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.01.22 07:01:39
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, HP, SkillAmt, Def)
--Summons a mount to ride    
SetMount(Caster, 7206)
SetMountColor(Caster, 255, 0, 0, 0, 0, 0) 

--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)
--    Increases Max Health of caster by 150.0
AddSpellBonus(Caster, 606, HP)

-- Increases Crushing, Focus, Piercing, Ranged and Slashing of caster by 7.0
 AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
--    Increases Defense of caster by 5.0
AddSkillBonus(Caster, GetSkillIDByName("Defense"), Def)

end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)

end