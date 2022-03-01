--[[
    Script Name    : Spells/Traditions/ArcofFlame.lua
    Script Author  : neatz09
    Script Date    : 2021.07.31 12:07:41
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 1 heat damage on targets in Area of Effect instantly and every 3 seconds

--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end