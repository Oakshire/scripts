--[[
    Script Name    : Spells/Commoner/MidnightMistrunnerRedSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.26 08:04:18
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, SkillAmt, HP, Mana)
--Summons a mount to ride    
SetMount(Caster, 6829)
SetMountColor(Caster, 100, 100, 100, 255, 0, 0)
-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increase Crushing, Piercing, Slashing, Ranged and Disruption of caster by 7
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)

-- Increases Max Health of caster by 150.0
    AddSpellBonus(Caster, 606, HP)

--Increases Max Mana of caster by 150.0
    AddSpellBonus(Caster, 619, Mana)

end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end