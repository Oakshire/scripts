--[[
    Script Name    : Spells/Commoner/GlacialRhino.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.15 08:04:35
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
SetMount(Caster, 10176)
    Say(Caster, "Model might not be accurate")


    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
