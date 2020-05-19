--[[
    Script Name    : Spells/Fighter/Brawler/ShoulderCharge.lua
    Script Author  : Dello
    Script Date    : 2014.07.10 06:07:13
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

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
