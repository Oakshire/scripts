--[[
    Script Name    : Spells/Commoner/HateSpores.lua
    Script Author  : neatz09
    Script Date    : 2021.06.20 10:06:40
    Script Purpose : 
                   : 
--]]

--*Decreases power of target by 6.3% instantly and every second.

function cast(Caster, Target, Pwr)
    SpellHealPct("Power", Pwr, false, true, Target)
end

function tick(Caster, Target, Pwr)
    SpellHealPct("Power", Pwr, false, true, Target)
end