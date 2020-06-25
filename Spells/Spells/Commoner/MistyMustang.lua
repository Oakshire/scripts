--[[
    Script Name    : Spells/Commoner/MistyMustang.lua
    Script Author  : Skywalker646
    Script Date    : 2020.01.08 08:01:33
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
SetMount(Caster, 6851)
--Increases your ground speed by 135%    
    AddSpellBonus(Caster, 611, Speed)


end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)
end