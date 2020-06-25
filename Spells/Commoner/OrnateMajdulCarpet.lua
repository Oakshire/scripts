--[[
    Script Name    : Spells/Commoner/OrnateMajdulCarpet.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.07 06:05:01
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
SetMount(Caster, 7320)

-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Ranged, Aggression, Piercing, Crushing and Slashing of caster by 5.0 
 AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Aggression"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)

-- Reduces maximum falling speed of caster.
AddControlEffect(Caster, 13)


end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
RemoveControlEffect(Caster, 13)

end
