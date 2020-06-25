--[[
    Script Name    : Spells/Commoner/CarpetofEl'Khazi.lua
    Script Author  : neatz09
    Script Date    : 2019.11.15 10:11:32
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

-- Info from spell_display_effects (remove from script when done)
-- Summons mount
-- Reduces maximum falling speed of caster.
--     Increases your ground speed by 130%.

function cast(Caster, Target, Amt)
SetMount(Caster, 1369)
SetMountColor(Caster, 0, 0, 0, 30, 144, 255) 
    AddSpellBonus(Caster, 611, Amt)
AddControlEffect(Caster, 13)
end


function remove(Caster, Target)
RemoveSpellBonus(Caster)
RemoveControlEffect(Caster, 13)
SetMount(Caster, 0)  
end