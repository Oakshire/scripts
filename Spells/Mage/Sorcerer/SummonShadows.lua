--[[
    Script Name    : Spells/Mage/Sorcerer/SummonShadows.lua
    Script Author  : theFoof
    Script Date    : 2014.01.17 05:01:09
    Script Purpose : 
                   : 
--]]

-- Grants invisibility to target
-- Suspends target's movement speed enhancements
-- Dispelled when target takes damage
-- This effect cancels during combat

function precast(Caster, Target)
    return not IsInCombat(Caster)
end

function cast(Caster, Target)
    Stealth(2)
    Say(Caster, "Movement reduction not yet implemented.")

end

function remove(Caster, Target)
    RemoveInvis()
end