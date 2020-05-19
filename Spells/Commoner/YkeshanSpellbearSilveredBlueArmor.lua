--[[
    Script Name    : Spells/Commoner/YkeshanSpellbearSilveredBlueArmor.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.03 08:05:16
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Pwr, Reuse, Speed)   
-- Summons a mount
SetMount(Caster, 9746)
SetMountColor(Caster, 0, 0, 0, 65, 105, 225)


--Increase maxmana of caster by 250
    AddSpellBonus(Caster, 619, Pwr)


-- Increase Ability Reuse Time of caster by 3
    AddSpellBonus(Caster, 662, Reuse)


    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
