--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/SnapoftheWrist.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 01:12:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 43 - 72 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Inflicts 43 - 72 melee damage on target
    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end
end
