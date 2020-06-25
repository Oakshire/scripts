--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/ShoulderCharge.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 05:03:52
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
     -- Inflicts 26 - 79 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Applies Knockdown.  Lasts for 2.5 seconds.
    --     Blurs vision of target
    --     Throws target back
    --     Stuns target
    --     Does not affect Epic targets
    if not IsEpic(Target) and LastSpellAttackHit() then
        BlurVision(Target, 1.0)
        AddControlEffect(Target, 4)
        Knockback(Caster, Target, 2500)
        AddSpellTimer(2500, "RemoveKnockback")
    end
end

function RemoveKnockback(Caster, Target)
    BlurVision(Target, 0.0)
    RemoveControlEffect(Target, 4)
end
