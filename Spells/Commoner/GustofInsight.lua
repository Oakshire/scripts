--[[
    Script Name    : Spells/Commoner/GustofInsight.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 10:04:35
    Script Purpose : 
                   : 
--]]

-- Increases power of caster by 2 instantly and every 5 seconds.

function cast(Caster, Target, PwrAmt)
SpellHeal("Power", PwrAmt)
end

function tick(Caster, Target, PwrAmt)
SpellHeal("Power", PwrAmt)
end
