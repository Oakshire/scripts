--[[
    Script Name    : Spells/Scout/Predator/Assassin/QuickStrike.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 08:11:13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMinVal, DoTMaxVal)

    -- Inflicts 6 - 10 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMinVal, DoTMaxVal)

    -- Inflicts 1 slashing damage on target every 4 seconds
    if DoTMaxVal ~= nil and DoTMinVal < DoTMaxVal then
        SpellDamage(Target, DoTType, math.random(DoTMinVal, DoTMaxVal))
    else
        SpellDamage(Target, DoTType, DoTMinVal)
    end
end
