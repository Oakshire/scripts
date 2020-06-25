--[[
    Script Name    : Spells/Commoner/RilissianWarRhino.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.11 08:05:01
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Range, Speed)   
-- Summons a mount
SetMount(Caster, 7206)
SetMountColor(Caster, 139, 0, 0, 0, 0, 0)

-- Increase melee weapon range of caster by 1
    AddSpellBonus(Caster, 666, Range)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)

end