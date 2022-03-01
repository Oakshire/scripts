--[[
    Script Name    : Spells/Commoner/MysticOrderRimeIcemare.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.29 08:04:35
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Mana, HP, Time, Speed)   
-- Summons a mount
SetMount(Caster, 10467)

--Increase maxmana of caster by 150.0
    AddSpellBonus(Caster, 619, Mana)

-- Increase health of caster by 150.0
    AddSpellBonus(Caster, 606, HP)

-- Increase Ability Casting Time of caster by 3
    AddSpellBonus(Caster, 664, Time)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)

end
