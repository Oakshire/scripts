--[[
    Script Name    : Spells/Commoner/BerylliumArmoredRhinoPinkSaddle.lua
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

function cast(Caster, Target, HP, Speed, Def, SkillAmt)
-- Summons a mount to ride
SetMount(Caster, 7206)
SetMountColor(Caster, 255, 20, 147, 219, 112, 147) 
--    Increases Max Health of caster by 150.0
AddSpellBonus(Caster, 606, HP)
--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)
--    Increases Defense of caster by 5.0
AddSkillBonus(Caster, GetSkillIDByName("Defense"), Def)
--    Increases Slashing, Piercing, Ranged, Crushing and Focus of caster by 7.0
AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
AddSkillBonus(Caster, GetSkillIDByName("Focus"), SkillAmt)
end

function remove(Caster, Target)
SetMount(Caster, 0)
RemoveSkillBonus(Caster)
RemoveSpellBonus(Caster)
end
