--[[
    Script Name    : Spells/Commoner/AbyssalCarpet.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.23 07:03:37
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Potency, HP, Pwr, Speed)   
-- Summons a mount
SetMount(Caster, 10173)


-- Increases Potency of caster by 1.0%
    AddSpellBonus(Caster, 659, Potency)

-- Increases Max Health of caster by 200.0
    AddSpellBonus(Caster, 606, HP)

--Increases Max Power of caster by 200.0
    AddSpellBonus(Caster, 619, Pwr)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
