--[[
    Script Name    : Spells/Priest/Druid/Fury/Tempest.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 02:01:11 
                   : (Updated by Emagi for elemental damage 2022.07.16)
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    processDamage(Caster, Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
    processDamage(Caster, Target, DmgType, MinVal, MaxVal)
end

function processDamage(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 7 - 8 cold damage on target instantly and every 2 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Inflicts 7 - 8 cold damage on target instantly and every 2 seconds
    --     If target is elemental
    --  WOODELEMENTAL       154
    --  AIRELEMENTAL        242
    --  EARTHELEMENTAL      248
    --  ELEMENTAL           250
    --  FIREELEMENTAL       254
    --  WATERELEMENTAL      266
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal), 0, 0, 154, 242, 248, 250, 254, 266)
    else
        SpellDamage(Target, DmgType, MinVal, 0, 0, 0, 154, 242, 248, 250, 254, 266)
    end
end