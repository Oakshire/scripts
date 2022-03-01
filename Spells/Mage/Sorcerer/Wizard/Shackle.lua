--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/Shackle.lua
    Script Author  : Zcoretri redone by Cynnar
    Script Date    : 2013.13.12 19:08:55 redone on 2016.26.09 21:05:55
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

function cast(Caster, Target)
    -- Roots target
    SetSpeedMultiplier(Target, 0)

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

    -- Applies Root in termination. Lasts for 10.0 seconds.
    -- Slows target by X%
    -- 5% chance to dispel when target receives hostile action
    -- 5% chance to dispel when target takes damage
end
