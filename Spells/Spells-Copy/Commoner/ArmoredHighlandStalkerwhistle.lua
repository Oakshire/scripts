--[[
    Script Name    : Spells/Commoner/ArmoredHighlandStalkerwhistle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.24 08:03:35
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed)
--Summons a mount to ride    
SetMount(Caster, 12343)

--Increases your ground speed by 130%    
    AddSpellBonus(Caster, 611, Speed)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)
end