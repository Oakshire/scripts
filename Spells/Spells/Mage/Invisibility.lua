--[[
    Script Name    : Spells/Mage/Invisibility.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 02:10:58
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Grants invisibility to target
-- Suspends target's movement speed enhancements
-- Dispelled when target takes damage
-- This effect cancels during combat
function precast(Caster)
    return not IsInCombat(Caster)
end

function cast(Caster, Target)
Stealth(2, Target)
end


function remove(Caster, Target)
RemoveInvis(2,Target)
end

