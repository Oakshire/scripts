--[[
    Script Name    : Spells/AA/Plaguebringer.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:06
    Script Purpose : 
                   : 
--]]

-- Inflicts 2660 - 6208 disease damage on target
-- Inflicts 665 - 1552 disease damage on target every second

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMin, DoTMax)
        SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMin, DoTMax)
        SpellDamage(Target, DoTType, DoTMin, DoTMax)
end