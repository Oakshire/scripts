--[[
    Script Name    : Spells/Scout/Predator/Ranger/Ensnare.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 06:03:27
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Mit, Snare)
    -- Decreases Mitigation of target vs arcane damage by 197
    AddSpellBonus(Target, 203, Mit)

    -- Applies Snare.  Lasts for 24.0 seconds.
    --     Slows target by 28.3%
    --     5% chance to dispel when target receives hostile action
    --     5% chance to dispel when target takes damage
    local Slow = 100.0 - Snare
    SetSpeedMultiplier(Target, Slow)
end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1)
end