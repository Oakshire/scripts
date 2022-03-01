--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/HeroicDash.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.06 07:12:55
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)

function cast(Caster, Target, DmgType, MinVal, MaxVal, Hate)
    -- Inflicts 19 - 33 divine damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Increases Threat to target by 302 
    AddHate(Caster, Target, Hate, 1)

    -- Applies Knockdown.  Lasts for 2.5 seconds.
    --     Blurs vision of target
    --     Throws target back
    --     Stuns target
    --     Does not affect Epic targets
    if not IsEpic(Target) then
        Knockback(Caster, Target, 2500)
        Say(Caster, "Not Implemented: stun and vision")
    end
end
