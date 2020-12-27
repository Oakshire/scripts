--[[
    Script Name    : Spells/Fighter/Brawler/Monk/FiveRings.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 07:01:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 34 - 57 melee damage on target
    -- Inflicts 34 - 57 melee damage on target
    -- Inflicts 34 - 57 melee damage on target
    -- Inflicts 34 - 57 melee damage on target
    -- Inflicts 34 - 57 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
        SpellDamage(Target, DmgType, MinVal)
        SpellDamage(Target, DmgType, MinVal)
        SpellDamage(Target, DmgType, MinVal)
        SpellDamage(Target, DmgType, MinVal)
    end


end

