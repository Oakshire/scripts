--[[
    Script Name    : Spells/Fighter/FightingChance.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 09:11:34
    Script Purpose : Begins a Heroic Opportunity
                   : 
--]]


function precast(Caster, Target)
   -- Must be engaged in combat
   return IsInCombat(Caster)
end

function cast(Caster, Target)
    -- Begins a Heroic Opportunity
StartHeroicOpportunity(Caster, 1)
end
