--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/ChainsofTorment.lua
    Script Author  : Cynnar
    Script Date    : 2016.09.21 19:19:47
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target, Snare)
    -- Roots target
    SetSpeedMultiplier(Target, Snare)

    -- 15% chance to dispel when target takes damage
    AddProc(Target, 2, 15.0)

    -- Resistibility increases against targets higher than level 34.

end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end

function remove(Caster, Target)
    -- code to remove the spell
    SetSpeedMultiplier(Target, 1.0)

-- Applies Chains of Torment on termination.  Lasts for 5.0 seconds.
-- Makes target afraid
-- Slows target by 13.9%
-- Resistibility increases against targets higher than level 34.
-- 30% chance to dispel when target takes damage
end

