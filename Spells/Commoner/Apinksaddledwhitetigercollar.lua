--[[
    Script Name    : Spells/Commoner/Apinksaddledwhitetigercollar.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.10 07:05:23
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
SetMount(Caster, 16130)
Say(Caster, "Incorrect Model")



-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
end
