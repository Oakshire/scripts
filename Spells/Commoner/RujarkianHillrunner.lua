--[[
    Script Name    : Spells/Commoner/RujarkianHillrunner.lua
    Script Author  : Skywalker646
    Script Date    : 2020.01.23 07:01:00
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
SetMount(Caster, 6848)
SetMountColor(Caster, 188, 143, 143, 255, 255, 255)


-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end
