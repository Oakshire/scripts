--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/PhantasmalAwe.lua
    Script Author  : neatz09
    Script Date    : 2020.05.09 06:05:22
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Mesmerizes target encounter
-- Prevents AOE (except when direct) 
-- Dispelled when target takes damage
-- Epic targets gain an immunity to Mesmerize effects of 27.0 seconds and duration is reduced to 3.0 seconds.
-- Resistibility increases against targets higher than level 29.
function cast(Caster, Target)
    AddControlEffect(Target, 1) 
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1) 
end
