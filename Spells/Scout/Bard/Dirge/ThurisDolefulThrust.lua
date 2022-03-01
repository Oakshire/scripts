--[[
    Script Name    : Spells/Scout/Bard/Dirge/ThurisDolefulThrust.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 07:11:42
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, HealAmt)
    -- Inflicts 6 - 10 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Heals caster for 3
    if LastSpellAttackHit() then
        SpellHeal("Heal", HealAmt, 0, Caster)
    end
end
