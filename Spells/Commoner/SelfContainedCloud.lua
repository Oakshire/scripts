--[[
    Script Name    : Spells/Commoner/SelfContainedCloud.lua
    Script Author  : neatz09
    Script Date    : 2019.11.19 08:11:48
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end


-- Summons a mount to ride
-- Increases your ground speed by 130%
-- Reduces maximum falling speed of caster

function cast(Caster, Target, Speed)
SetMount(Caster, 14759)
--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)
    AddControlEffect(Caster, 13)

end

function remove(Caster, Target)
    SetMount(Caster, 0)
RemoveSpellBonus(Caster)
    RemoveControlEffect(Caster, 13)


end
