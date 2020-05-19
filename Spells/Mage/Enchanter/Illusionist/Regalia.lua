--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Regalia.lua
    Script Author  : neatz09
    Script Date    : 2020.01.31 06:01:58
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Mesmerizes target
-- Prevents AOE (except when direct) 
-- Dispelled when target takes damage
-- Epic targets gain an immunity to Mesmerize effects of 22.5 seconds and duration is reduced to 2.5 seconds.
-- Resistibility increases against targets higher than level 29.
function cast(Caster, Target)
    AddControlEffect(Target, 1)
    Say(Caster, "Resistability + immunity not implemented")
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1) 
end