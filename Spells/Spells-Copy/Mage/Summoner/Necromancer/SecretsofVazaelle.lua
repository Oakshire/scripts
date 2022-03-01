--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/SecretsofVazaelle.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 08:08:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On a hostile spell cast this spell has a 12% chance to cast Poisonous Blast on target of spell.  Lasts for 12.0 seconds.  
-- Inflicts 786 - 1179 poison damage on target
-- Inflicts 194 - 292 poison damage on target every 3 seconds
-- Applies Poisonous Blast.  Lasts for 12.0 seconds.
-- Increases Crit Chance of pet by 20.0
-- Prevents AOE (except when direct) 
-- Cannot be modified except by direct means
-- Improves the damage of the Necromancer's pet.
-- Damage over time spells increase damage with each tick.  Damage ceases to increase after 5 ticks.
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

