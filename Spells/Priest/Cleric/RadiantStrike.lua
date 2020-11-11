--[[
    Script Name    : Spells/Priest/Cleric/RadiantStrike.lua
    Script Author  : neatz09
    Script Date    : 2020.11.10 10:11:00
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 37 - 45 divine damage on target
-- Inflicts 37 - 45 divine damage on target
--     If target is undead

function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Missing undead feature")
end
