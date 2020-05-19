--[[
    Script Name    : Spells/Commoner/BrownSpottedWargwithRedSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.30 08:03:23
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

-- Summons a mount to ride that increases your ground speed by 130%

function cast(Caster, Target, Speed)   
-- Summons a mount
SetMount(Caster, 7218)
SetMountColor(Caster, 153, 76, 0, 255, 0, 0)

--Increases your ground speed by 130%
    AddSpellBonus(Caster, 611, Speed)

end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)

end
