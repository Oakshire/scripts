--[[
    Script Name    : Spells/Commoner/GnomishHoveringDevice.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.15 08:04:11
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
SetMount(Caster, 19680)
    Say(Caster, "Model not accurate")


    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end