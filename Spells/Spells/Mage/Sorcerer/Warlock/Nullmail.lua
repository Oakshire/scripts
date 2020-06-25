--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/Nullmail.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 08:08:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- When target falls below 30% health this spell will cast Nullmail Armor on target.  Lasts for 12.0 seconds.  
-- Increases Mitigation of caster vs elemental and noxious damage by 1600
-- Prevents AOE (except when direct) 
-- Caster will Dodge 50.0% of incoming attacks
-- Increases Mitigation of caster vs physical and arcane damage by 1600
-- Grants a total of 1 trigger of the spell.

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

