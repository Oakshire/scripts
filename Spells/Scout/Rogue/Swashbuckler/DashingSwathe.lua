--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/DashingSwathe.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 02:12:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 159 - 266 melee damage on targets in Area of Effect
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
        Knockback(Caster, Target, 1500)
        AddControlEffect(Target, 4)
        BlurVision(Target, 1.0)
        AddSpellTimer(1500, "RemoveEffects")
    end
end
function RemoveEffects(Caster, Target)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0)
end
