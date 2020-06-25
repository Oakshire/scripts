--[[
    Script Name    : Spells/Commoner/HotwiredGnomishHoverpad.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.20 08:04:35
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
SetMount(Caster, 11347)
--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)

-- Reduces maximum falling speed of caster.
AddControlEffect(Caster, 13)


end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
RemoveControlEffect(Caster, 13)


end