--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/IllusoryMask.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 04:10:46
    Script Purpose : 
                   : 
--]]

-- Grants invisibility to group members (AE)
-- Suspends group members (AE)'s movement speed enhancements
-- Dispelled when target takes damage
-- This effect cancels during combat

function cast(Caster, Target)
Stealth(2, Target)
    Say(Caster, "Suspends group members (AE)'s movement speed enhancements Not Implemented. Unsure if can be cast in combat or not.")
end

function remove(Caster, Target)
RemoveInvis(2)
end
