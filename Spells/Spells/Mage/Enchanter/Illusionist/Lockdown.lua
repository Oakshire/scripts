--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Lockdown.lua
    Script Author  : Cynnar
    Script Date    : 2016.28.09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Roots target
    SetSpeedMultiplier(Target, 0)

    -- Applies Stifle.  Lasts for 4.0 seconds.
    -- Stifles target
    AddControlEffect(Target, 2)
    AddSpellTimer(4000, "RemoveStifle")

    -- 100% chance to dispel when target takes damage
    AddProc(Target, 2, 100.0)

-- Blurs vision of target
-- Dispelled when target takes damage
-- Epic targets gain an immunity to Stifle effects of 12.0 seconds and duration is reduced to 1.3 seconds.
-- Resistibility increases against targets higher than level 34.
-- Epic targets gain an immunity to Root effects of 54.0 seconds and duration is reduced to 6.0 seconds.
-- Resistibility increases against targets higher than level 29.

end

function RemoveStifle(Caster, Target)
    RemoveControlEffect(Target, 2)
end

function proc(Caster, Target, Type)
    if Type == 2 then
        -- Dispell stifle when target takes damage
        RemoveControlEffect(Target, 2)
            -- 5% chance to dispel root when target takes damage
            if math.random(1, 100) <= 5 then
                CancelSpell()
            end
    end
end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
    SetSpeedMultiplier(Target, 1.0)
end

