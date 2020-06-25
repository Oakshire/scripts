--[[
    Script Name    : Spells/Priest/Shaman/Contagion.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:07
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 12 disease damage on target instantly and every 4 seconds

function cast(Caster, Target, DoTType, MinVal)
    Say(Caster, "Race check bonuses not implemented.")
SpellDamage(Target, DoTType, MinVal)
end

function tick(Caster, Target, DoTType, MinVal)
SpellDamage(Target, DoTType, MinVal)
end


-- Inflicts 12 disease damage on target instantly and every 4 seconds
--     If target is nightblood
-- Inflicts 12 disease damage on target instantly and every 4 seconds
--     If target is shadowed folk
