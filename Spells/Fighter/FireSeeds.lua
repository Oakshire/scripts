--[[
    Script Name    : Spells/Fighter/FireSeeds.lua
    Script Author  : neatz09
    Script Date    : 2021.02.14 04:02:24
    Script Purpose : 
                   : 
--]]

-- Inflicts 2050 heat damage on target
-- Inflicts 820 heat damage on target every 3 seconds

function cast(Caster, Target, DmgType, MinVal, TickType, TickVal)
SpellDamage(Target, DmgType, MinVal)
end

function tick(Caster, Target, DmgType, MinVal, TickType, TickVal)
SpellDamage(Target, TickType, TickVal)
end
