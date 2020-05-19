--[[
    Script Name    : Spells/Commoner/SaryrnDeathcharger.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.13 04:05:13
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, XP, Speed)   
-- Summons a mount
SetMount(Caster, 9978)

-- Increase Combat XP Gain of target by 10%
    AddSpellBonus(Caster, 625, XP)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)

end