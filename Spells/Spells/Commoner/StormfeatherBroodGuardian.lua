--[[
    Script Name    : Spells/Commoner/StormfeatherBroodGuardian.lua
    Script Author  : neatz09
    Script Date    : 2019.11.16 06:11:06
    Script Purpose : 
                   : 
--]]


function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Ground, Air)
SetMount(Caster, 382)
--Increases your ground speed by 75%
--Increases your air speed by 150%
    AddSpellBonus(Caster, 611, Ground)
    AddSpellBonus(Caster, 612, Air)
    AddControlEffect(Caster, 12)
end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)
    RemoveControlEffect(Caster, 12)
end
