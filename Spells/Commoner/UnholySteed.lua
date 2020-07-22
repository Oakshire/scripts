--[[
    Script Name    : Spells/Commoner/UnholySteed.lua
    Script Author  : neatz09
    Script Date    : 2020.07.22 12:07:50
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Summons a mount to ride
--     Increases your ground speed by 130%
function cast(Caster, Target, Speed)
    SetMount(Caster, 6852)
SetMountColor(Caster, 0, 0, 0, 80, 0, 0) 
       AddSpellBonus(Target, 609, Speed)

end

function remove(Caster, Target)
    SetMount(Caster, 0)
    RemoveSpellBonus(Target)
end
