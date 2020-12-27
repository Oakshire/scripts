--[[
    Script Name    : Spells/Commoner/OrderRimeIcemare.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.06 08:05:46
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Mana, HP, DPS, Speed)   
-- Summons a mount
SetMount(Caster, 10467)

--Increase maxmana of caster by 150.0
    AddSpellBonus(Caster, 619, Mana)

-- Increase health of caster by 150.0
    AddSpellBonus(Caster, 606, HP)

-- Increases Damage Per Second of caster by 5.0 
    AddSpellBonus(Caster, 629, DPS)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)

end
