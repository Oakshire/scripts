--[[
    Script Name    : Spells/Commoner/NewHalasianCourserwhistle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.29 08:04:01
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
SetMount(Caster, 6852)
--Increases your ground speed by 130%   
    AddSpellBonus(Caster, 611, Speed) 


end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)
end