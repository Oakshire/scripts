--[[
    Script Name    : Spells/Commoner/GreyWargwithBrownSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.19 09:04:28
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
SetMount(Caster, 7216)
SetMountColor(Caster, 255, 255, 255, 30, 144, 255)
--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)

end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)

end