--[[
    Script Name    : Spells/Commoner/CraftKeepersDiscofFlight.lua
    Script Author  : Skywalker646
    Script Date    : 2019.12.22 09:12:42
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, HP, MP, Speed, Multi, Cast)
-- Summons a mount to ride
SetMount(Caster, 11059)
 AddControlEffect(Caster, 13)
-- Increases Max Health of caster by 200.
    AddSpellBonus(Caster, 606, HP)
-- Increases Max Power by 200.0
    AddSpellBonus(Caster, 619, MP)
-- increases your ground speed by 130% 
    AddSpellBonus(Caster, 611, Speed)
-- Increases Multi Attack Chance by 2.0
    AddSpellBonus(Caster, 641, Multi)
-- Increases Ability Casting Speed by 2.0%
    AddSpellBonus(Caster, 664, Cast)
end


function remove(Caster, Target)
SetMount(Caster, 0)
RemoveControlEffect(Caster, 13)
    RemoveSpellBonus(Caster)
end