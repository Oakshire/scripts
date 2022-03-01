--[[
    Script Name    : Spells/Commoner/ManaBoon.lua
    Script Author  : neatz09
    Script Date    : 2020.09.28 10:09:18
    Script Purpose : 
                   : 
--]]

--     Increases power of target by 3 instantly and every 4 seconds
--     Increases power of caster by 3 instantly and every 4 seconds

function cast(Caster, Target, Pwr)
SpellHeal("Power", Pwr, Pwr, Target)
SpellHeal("Power", Pwr, Pwr, Caster)
end


function tick(Caster, Target, Pwr)
SpellHeal("Power", Pwr, Pwr, Target)
SpellHeal("Power", Pwr, Pwr, Caster)
end
