--[[
    Script Name    : Spells/Traditions/WingedVenom.lua
    Script Author  : neatz09
    Script Date    : 2021.07.31 12:07:00
    Script Purpose : 
                   : 
--]]


--*Inflicts 1 - 2 piercing damage on target
--*Inflicts 1 poison damage on target every 8 seconds

function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    SpellDamage(Target, TickType, TickMin, TickMax)
end