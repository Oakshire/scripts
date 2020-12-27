--[[
    Script Name    : Spells/Fighter/Brawler/Monk/ChargingTiger.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 06:01:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 35 - 59 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Applies Knockdown on termination.  Lasts for 2.5 seconds.
    --     Blurs vision of target
    --     Throws target back
    --     Stuns target
    --     Does not affect Epic targets
    if not IsEpic(Target) then
        Knockback(Caster, Target, 4000)
        AddControlEffect(Target, 4)
        BlurVision(Target, 1.0)
        AddSpellTimer(2500, "RemoveKnockback")
    end
end

function RemoveKnockback(Caster, Target)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0.0)
end
