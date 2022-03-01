--[[
    Script Name    : Spells/Commoner/GlacialBrute.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.15 07:04:42
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, HP, Pwr, Speed)   
-- Summons a mount
SetMount(Caster, 10176)

-- Increases Max Health of caster by 300.0
    AddSpellBonus(Caster, 606, HP)

--Increases Max Power of caster by 300.0
    AddSpellBonus(Caster, 619, Pwr)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
