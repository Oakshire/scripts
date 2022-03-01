--[[
    Script Name    : Spells/Commoner/ReklaarnOnyxstorm.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.21 05:03:58
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Potency, Bonus, Chance, HP, Pwr, Speed, Air)   
-- Summons a mount
SetMount(Caster, 18358)
AddControlEffect(Caster, 12)

-- Increases Potency of caster by 10.0%
    AddSpellBonus(Caster, 659, Potency)

-- Increases Crit Bonus of caster by 10.0%
    AddSpellBonus(Caster, 657, Bonus)

-- Increases Crit Chance of caster by 35.0%
    AddSpellBonus(Caster, 654, Chance)

-- Increases Max Health of caster by 1500.0
    AddSpellBonus(Caster, 606, HP)

--Increases Max Power of caster by 1500.0
    AddSpellBonus(Caster, 619, Pwr)

    --Increases your Ground Speed by 130%
    --Increases your Air Speed by 150% 
    AddSpellBonus(Caster, 611, Speed)
    AddSpellBonus(Target, 612, Air)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
