--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/OneHundredHandPunch.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 06:03:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end

    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end

    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end

    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end

    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end

    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end

    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end
end
