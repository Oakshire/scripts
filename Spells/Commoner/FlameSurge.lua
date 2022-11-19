--[[
    Script Name    : Spells/Commoner/FlameSurge.lua
    Script Author  : neatz09
    Script Date    : 2022.11.19 03:11:41
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 38 - 46 heat damage on target instantly and every second

--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal)
    SpellDamage(Target, DoTType, MinVal)
end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
    SpellDamage(Target, DoTType, MinVal)
end