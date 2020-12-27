--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/FocusedMind.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 07:08:49
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On a damage spell hit this spell has a 12% chance to cast Fire of Intellect on target of spell.  Lasts for 15.0 seconds.  
-- Inflicts 588 - 881 heat damage on target
-- Adds normalized spell damage based on 30% of the wizard's intelligence
-- Cannot be modified except by direct means
-- Increases the damage of all hostile spells by 10%
-- Increases Doublecast Chance of caster by 10.0%
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

