--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/WrathofVelArek.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 02:08:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On a melee hit this spell may cast Shielding of Vel`Arek on caster.  Lasts for 10.0 seconds.  Triggers about 1.8 times per minute. 
--     Makes caster immune to Fear effects
--     Makes caster immune to Root effects
--     Makes caster immune to Stun effects
--     Makes caster immune to Daze effects
--     Makes caster immune to Stifle effects
--     Cannot be modified except by direct means
-- On a melee hit this spell may cast Wrath of the Warrior on target of attack.  Lasts for 12.0 seconds.  Triggers about 2.4 times per minute. 
--     Inflicts 635 - 953 slashing damage on target
--     Reduces physical damage done to caster by 5%
--     Cannot be modified except by direct means
-- Caster is immune to riposte damage.
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

