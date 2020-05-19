--[[
    Script Name    : Spells/Commoner/Graol.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.16 07:04:25
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, HP, Chance, Bonus, Speed)   
-- Summons a mount
SetMount(Caster, 9744)
SetMountColor(Caster, 250, 250, 250, 255, 0, 0) 

-- Increases Max Health of caster by 200.0
    AddSpellBonus(Caster, 606, HP)

-- Increases Crit Bonus of caster by 3
    AddSpellBonus(Caster, 657, Bonus)

-- Increases Crit Chance of caster by 1
    AddSpellBonus(Caster, 654, Chance)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
