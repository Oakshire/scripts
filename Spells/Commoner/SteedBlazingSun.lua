--[[
    Script Name    : Spells/Commoner/SteedBlazingSun.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.14 08:05:02
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Potency, Speed)   
-- Summons a mount
SetMount(Caster, 8226)

--Increases Potency of caster by 2.0% 
    AddSpellBonus(Caster, 659, Health)

    --Increases your Ground Speed by 130%
    AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
end
