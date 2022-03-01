--[[
    Script Name    : Spells/Mage/Summoner/Petrify.lua
    Script Author  : neatz09
    Script Date    : 2019.11.07 08:11:56
    Script Purpose : 
                   : 
--]]

-- Stuns target
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.
function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target)
    AddControlEffect(Target, 4)
	Say(Caster, "Resistability not implemented")
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end