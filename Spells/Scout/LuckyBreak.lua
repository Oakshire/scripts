--[[
    Script Name    : Spells/Scout/LuckyBreak.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:36
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
   -- Must be engaged in combat
   return IsInCombat(Caster)
end

function cast(Caster, Target)
    -- Begins a Heroic Opportunity
StartHeroicOpportunity(Caster, 31)
end