--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/PenitentKick.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.05 07:12:40
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 12 - 20 divine damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Applies Knockdown on termination.  Lasts for 1.5 seconds.
    --     Throws target back
    --     Stuns target
    --     Blurs vision of target
    --     Does not affect Epic targets
    if not IsEpic(Target) then
        Knockback(Caster, Target, 1500)
        Say(Caster, "Not Implemented: Stun and Vision")
    end
end
