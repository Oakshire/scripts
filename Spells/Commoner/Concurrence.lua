--[[
    Script Name    : Spells/Commoner/Concurrence.lua
    Script Author  : neatz09
    Script Date    : 2020.09.29 12:09:45
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Pwr)
SpellHeal("Power", Pwr, Pwr, Target)
SpellHeal("Power", Pwr, Pwr, Caster)
end

