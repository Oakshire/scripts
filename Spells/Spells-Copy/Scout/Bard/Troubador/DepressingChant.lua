--[[
    Script Name    : Spells/Scout/Bard/Troubadour/DepressingChant.lua
    Script Author  : Zcoretri
    Script Date    : 17.March.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SlowAmt, HostileChance, DmgChance, Mitigation)
    -- Applies Snare.  Lasts for 24.0 seconds.
    -- Slows target
    -- chance to dispel when target receives hostile action
    -- chance to dispel when target takes damage
    Say(Caster, "Slow portion is not scripted yet!")

    -- Decreases Mitigation of target vs arcane damage
    AddSpellBonus(Target, 203, Mitigation)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

