--[[
    Script Name    : Spells/Mage/ArcaneAugur.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:56
    Script Purpose : 
                   : 
--]]


function precast(Caster, Target)
   -- Must be engaged in combat
   return IsInCombat(Caster)
end

function cast(Caster, Target)
    -- Begins a Heroic Opportunity
StartHeroicOpportunity(Caster, 21)
end