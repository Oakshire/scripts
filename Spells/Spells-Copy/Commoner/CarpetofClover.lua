--[[
    Script Name    : Spells/Commoner/CarpetofClover.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.01 08:04:40
    Script Purpose : 
                   : 
-]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed)   
-- Summons a mount
SetMount(Caster, 10440)
--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)

end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)

end