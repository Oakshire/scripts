--[[
    Script Name    : Spells/Commoner/GlacialWarg.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.15 08:04:03
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
SetMount(Caster, 10169)
    Say(Caster, "Might not be accurate model")

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end