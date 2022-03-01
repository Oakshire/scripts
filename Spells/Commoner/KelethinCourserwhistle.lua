--[[
    Script Name    : Spells/Commoner/KelethinCourserwhistle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.23 06:04:00
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
SetMount(Caster, 9033)
SetMountColor(Caster, 222, 184, 135, 0, 0, 0) 
--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)

end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)

end