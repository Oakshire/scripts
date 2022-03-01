--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/SavageAssault.lua
    Script Author  : Dello
    Script Date    : 10/07/2014
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
end