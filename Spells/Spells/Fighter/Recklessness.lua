--[[
    Script Name    : Spells/Fighter/Recklessness.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 02:08:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Doubles the caster's potency
-- Increases all damage done to caster by 50%
-- Exiting this stance in combat sets the fighter to extremely low health. Does not occur in PVP combat.
-- Grants Reckless to caster, halving all taunt values and caster cannot block incoming attacks
-- Decreases Hate Gain of caster by 30.0%
-- Increases Potency of caster by 50.0%
-- Removes all threat positions from abilities that inflict damage.
-- Must not be engaged in combat
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

