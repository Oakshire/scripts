--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/LuckyGambit.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.15 08:12:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 16 - 27 melee damage on targets in Area of Effect
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
