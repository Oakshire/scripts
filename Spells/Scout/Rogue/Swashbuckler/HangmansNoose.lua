--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/HangmansNoose.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.15 09:12:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Snare, Mit)
    -- Applies Snare.  Lasts for 24.0 seconds.
    --     Slows target by 28.3%
    --     5% chance to dispel when target receives hostile action
    --     5% chance to dispel when target takes damage
    SetSpeedMultiplier(Target, ((100 - Snare) / 100))

    -- Decreases Mitigation of target vs arcane damage by 197
    AddSpellBonus(Target, 203, Mit)
end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1)
    RemoveSpellBonus(Target)
end
