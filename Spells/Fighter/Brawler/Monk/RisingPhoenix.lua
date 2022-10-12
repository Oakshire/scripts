--[[
    Script Name    : Spells/Fighter/Brawler/Monk/RisingPhoenix.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 05:01:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 54 - 90 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    if not IsEpic(Target) then
        Knockback(Caster, Target, 4000)
        BlurVision(Target, 1.0)
        AddControlEffect(Target, 4)
        AddSpellTimer(1500, "RemoveKnockback")
    end
end

function RemoveKnockback(Caster, Target)
    BlurVision(Target, 0.0)
    RemoveControlEffect(Target, 4)
end

