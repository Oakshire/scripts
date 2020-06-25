--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/DeathCloud.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.08 04:01:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMinVal, DoTMaxVal)
    -- Inflicts 30 - 50 disease damage on targets in Area of Effect
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMinVal, DoTMaxVal)
    -- Inflicts 14 - 17 disease damage on targets in Area of Effect every 6 seconds
    if DoTMaxVal ~= nil and DoTMinVal < DoTMaxVal then
        SpellDamage(Target, DoTType, math.random(DoTMinVal, DoTMaxVal))
    else
        SpellDamage(Target, DoTType, DoTMinVal)
    end
end
