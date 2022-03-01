--[[
    Script Name    : Spells/Fighter/Warrior/Bash.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:28
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Applies Knockdown on termination.  Lasts for 2.5 seconds.
--     Throws target back
--     Blurs vision of target
--     Stuns target
--     Does not affect Epic targets
-- Inflicts 14 - 23 crushing damage on target



function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
    Say(Caster, "Knockdown not implemented")

end
