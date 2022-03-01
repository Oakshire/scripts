--[[
    Script Name    : Spells/Commoner/CrimsonHandsDiscofVoyage.lua
    Script Author  : Skywalker646
    Script Date    : 2019.12.23 08:12:43
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, HP, MP, Speed, Reuse, Crit)
-- Summons a mount to ride
SetMount(Caster, 10983)
 -- Reduces maximum falling speed of caster.
AddControlEffect(Caster, 13)
-- Increases Max Health of caster by 200.
    AddSpellBonus(Caster, 606, HP)
-- Increases Max Power by 200.0
    AddSpellBonus(Caster, 619, MP)
-- increases your ground speed by 130% 
    AddSpellBonus(Caster, 611, Speed)
-- Increases Ability Reuse Speed by 1.0
    AddSpellBonus(Caster, 662, Reuse)
-- Increases Ability Casting Speed by 2.0%
    AddSpellBonus(Caster, 654, Crit)
end


function remove(Caster, Target)
SetMount(Caster, 0)
RemoveControlEffect(Caster, 13)
    RemoveSpellBonus(Caster)
end