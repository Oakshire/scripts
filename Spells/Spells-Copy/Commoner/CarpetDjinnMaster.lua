--[[
    Script Name    : Spells/Commoner/CarpetDjinnMaster.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.06 09:04:30
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Ward, Speed)   
-- Summons a mount
SetMount(Caster, 21641)
AddWard(157)
    Say(Caster, "Cannot be modified except by direct means ")


    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
RemoveWard()
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 12)
end
