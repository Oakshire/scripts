--[[
    Script Name    : Spells/Commoner/BlackNightmarePurpleSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.25 06:03:47
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, SkillAmt, HP, Mana, Speed)   
-- Summons a mount
SetMount(Caster, 7183)
SetMountColor(Caster, 0, 0, 0, 148, 0, 211) 

-- Increase Crushing, Piercing, Slashing, Ranged and Disruption of caster by 7.0
 AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)


-- Increases Max Health of caster by 150.0
    AddSpellBonus(Caster, 606, HP)

-- Increases Max Mana of caster by 150.0
    AddSpellBonus(Caster, 619, Mana)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
