--[[
    Script Name    : Spells/Commoner/FarisDiskMeditation.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.12 08:04:49
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Potency, HP, MP, Speed)
-- Summons a mount to ride
SetMount(Caster, 12449)
-- Increases Potency of caster by 1.5%
    AddSpellBonus(Caster, 659, Potency)
-- Increases Max Health of caster by 250.
    AddSpellBonus(Caster, 606, HP)
-- Increases Max Power by 250.
    AddSpellBonus(Caster, 619, MP)
-- increases your ground speed by 130% 
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
end