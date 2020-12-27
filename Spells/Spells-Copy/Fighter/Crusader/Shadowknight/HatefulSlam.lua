--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/HatefulSlam.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.11 05:01:41
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, HateAmt, TickHateAmt)
    -- Inflicts 23 - 39 disease damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Increases Threat to target by 181  instantly ...
        AddHate(Caster, Target, MinVal, 1)

    -- Applies Knockdown.  Lasts for 2.5 seconds.
    --     Blurs vision of target
    --     Throws target back
    --     Stuns target
    --     Does not affect Epic targets
    if not IsEpic(Target) then
        Knockback(Caster, Target, 2500)
        AddControlEffect(Target, 4)
        BlurVision(Target, 1.0)
        AddSpellTimer(2500, "RemoveKnockback")
    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, HateAmt, TickHateAmt)
    -- ... and by 79  every 3 seconds thereafter
        AddHate(Caster, Target, TickHateAmt, 1)
end

function RemoveKnockback(Caster, Target)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0.0)
end
