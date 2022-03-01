--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/MercilessStomp.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 05:03:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 49 - 82 crushing damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Applies Knockdown.  Lasts for 1.5 seconds.
    --     Throws target back
    --     Stuns target
    --     Blurs vision of target
    --     Does not affect Epic targets
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
        BlurVision(Target, 1.0)
        Knockback(Caster, Target, 1500)
        AddSpellTimer(1500, "RemoveKnockdown")
    end
end

function RemoveKnockdown(Caster, Target)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0.0)
end