--[[
    Script Name    : Spells/Scout/Predator/Assassin/SlipAway.lua
    Script Author  : neatz09
    Script Date    : 2019.11.07 07:11:34
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Grants See Invisibility to caster
-- Grants stealth to caster
-- Suspends caster's movement speed enhancements
-- This effect cancels during combat
function precast(Caster)
    return not IsInCombat(Caster)
end

function cast(Caster, Target)
Stealth(1, Caster)
      Say(Caster, "See Invis Not Implemented yet.")

end

function remove(Caster, Target)
Stealth(0, Caster)
end
