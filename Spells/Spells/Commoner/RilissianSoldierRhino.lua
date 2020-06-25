--[[
    Script Name    : Spells/Commoner/RilissianSoldierRhino.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.11 08:05:31
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Power, Health, Ability, Speed)   
-- Summons a mount
SetMount(Caster, 10177)


-- Increases Power Regen of caster by 15.0
    AddSpellBonus(Caster, 601, Power)

-- Increases Health Regen of caster by 15.0
    AddSpellBonus(Caster, 600, Health)

-- Increases Ability Mod of caster by 15.0 
    AddSpellBonus(Caster, 707, Ability)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)

end