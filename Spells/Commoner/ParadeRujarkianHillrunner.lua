--[[
    Script Name    : Spells/Commoner/ParadeRujarkianHillrunner.lua
    Script Author  : Skywalker646
    Script Date    : 2020.01.21 08:01:23
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, SkillAmt)
--Summons a mount to ride    
SetMount(Caster, 6854)
SetMountColor(Caster, 222, 184, 135, 0, 0, 0)

-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end