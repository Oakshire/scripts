--[[
    Script Name    : Spells/Scout/Evade.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 04:12:50
    Script Purpose : 
                   : 
--]]

-- Decreases Threat to target

function cast(Caster, Target, HateLow, HateHigh)
    Hate = math.random(HateHigh, HateLow)
    AddHate(Caster, Target, Hate, 1)
    Say(Caster, "Missing Reposte Immunity")
end

function remove(Caster, Target)
end
