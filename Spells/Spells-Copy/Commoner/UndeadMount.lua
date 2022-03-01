--[[
    Script Name    : Spells/Commoner/UndeadMount.lua
    Script Author  : neatz09
    Script Date    : 2019.11.18 08:11:09
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
SetMount(Caster, 6920)

--Increases your ground speed by 130%    
    AddSpellBonus(Caster, 611, Speed)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)
end