--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/WallofHatred.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 02:08:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On a melee hit this spell may cast Enrage on target of attack.  Lasts for 12.0 seconds.  Triggers about 2.4 times per minute. 
--     Increases Crit Chance of caster by 15.0
--     Inflicts 562 - 842 heat damage on target encounter
--     Increases Multi Attack Chance of caster by 10.0
--     Cannot be modified except by direct means
-- Adds a hate position increase to the initial taunt portion of Insolence.
-- 25% of the damage done to the berserker will be added back to the attacker as additional hate.
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

