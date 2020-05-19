--[[
    Script Name    : Spells/Priest/Shaman/Mystic/Plague.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 05:12:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal)
    -- Inflicts 6 disease damage on target instantly and every 4 seconds
    SpellDamage(Target, DoTType, MinVal)

    -- Inflicts 6 disease damage on target instantly and every 4 seconds
    --     If target is shadowed folk
    -- Inflicts 6 disease damage on target instantly and every 4 seconds
    --     If target is nightblood
    Say(Caster, "Not Implemented: Bonus damage to nightbloods and shadowed folk")

end

function tick(Caster, Target, DoTType, MinVal)
    -- Inflicts 6 disease damage on target instantly and every 4 seconds
    SpellDamage(Target, DoTType, MinVal)

    -- Inflicts 6 disease damage on target instantly and every 4 seconds
    --     If target is shadowed folk
    -- Inflicts 6 disease damage on target instantly and every 4 seconds
    --     If target is nightblood

end
