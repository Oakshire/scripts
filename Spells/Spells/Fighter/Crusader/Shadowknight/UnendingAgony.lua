--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/UnendingAgony.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.11 06:01:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, TickType, TickDmg)
    -- Inflicts 51 disease damage on targets in Area of Effect
    if MinVal ~= nil then
        SpellDamage(Target, DoTType, MinVal)
    end
end

function tick(Caster, Target, DoTType, MinVal, TickType, TickDmg)
    -- Inflicts 34 disease damage on targets in Area of Effect every 4 seconds
    if TickDmg ~= nil then
        SpellDamage(Target, TickType, TickDmg)
    end
end
