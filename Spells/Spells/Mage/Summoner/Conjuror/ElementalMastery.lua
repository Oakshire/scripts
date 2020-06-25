--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/ElementalMastery.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 08:08:25
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On a hostile spell cast this spell has a 12% chance to cast Inferno on target of spell.  Lasts for 12.0 seconds.  
-- Inflicts 592 - 888 heat damage on target
-- Inflicts 194 - 292 heat damage on target every 3 seconds
-- Applies Inferno.  Lasts for 12.0 seconds.
-- Increases Crit Chance of pet by 20.0
-- Prevents AOE (except when direct) 
-- Cannot be modified except by direct means
-- Improves the damage of the Conjuror's pet.
-- Increases the base damage of hostile spells by 10%
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

