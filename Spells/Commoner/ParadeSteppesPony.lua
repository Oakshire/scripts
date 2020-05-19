--[[
    Script Name    : Spells/Commoner/ParadeSteppesPony.lua
    Script Author  : Skywalker646
    Script Date    : 2020.01.21 08:01:14
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
SetMount(Caster, 6853)

-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)

end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
end