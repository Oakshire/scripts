--[[
    Script Name    : Spells/Commoner/QuadrortheStou.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.10 07:05:09
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Bonus, Potency, Chance, HP, Pwr, Speed)   
-- Summons a mount
SetMount(Caster, 631)


-- Increases Crit Bonus of caster by 4.0%
    AddSpellBonus(Caster, 657, Bonus)

-- Increases Potency of caster by 4.0%
    AddSpellBonus(Caster, 659, Potency)

-- Increases Crit Chance of caster by 15.0%
    AddSpellBonus(Caster, 654, Chance)

-- Increases Max Health of caster by 600.0
    AddSpellBonus(Caster, 606, HP)

--Increases Max Power of caster by 600.0
    AddSpellBonus(Caster, 619, Pwr)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)

end
