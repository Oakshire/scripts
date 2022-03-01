--[[
    Script Name    : Spells/Commoner/DarkRedNightmareRedSaddle.lua
    Script Author  : neatz09
    Script Date    : 2019.11.16 01:11:57
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, HP, MP, SkillAmt, Speed)
--Summons a mount to ride    
SetMount(Caster, 6831)
SetMountColor(Caster, 128, 0, 0, 255, 0, 0)     
--Increases Max Health of caster by 100    
AddSpellBonus(Caster, 606, HP)
--Increases Max Power of caster by 100    
AddSpellBonus(Caster, 619, MP)
--Increases, Piercing, Slashing, Crushing, Ranged and Disruption by 7.0   
 AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
--Increases your ground speed by 130%    
    AddSpellBonus(Caster, 611, Speed)

--Requires Evil Alignment.
    Say(Caster, "Alignment not implemented.")


end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
