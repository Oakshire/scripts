--[[
    Script Name    : Spells/Commoner/GorowynDestrierwhistle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.16 07:04:55
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
-- Summons a mount
SetMount(Caster, 6852)
SetMountColor(Caster, 139, 69, 19, 255, 0, 0) 


    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end