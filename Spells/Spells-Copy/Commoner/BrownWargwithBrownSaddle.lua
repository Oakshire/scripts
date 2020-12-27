--[[
    Script Name    : Spells/Commoner/BrownWargwithBrownSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.30 08:03:50
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
SetMount(Caster, 7216)
SetMountColor(Caster, 153, 76, 0, 139, 69, 19)
--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)

end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)

end