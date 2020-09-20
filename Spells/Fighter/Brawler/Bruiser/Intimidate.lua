--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Intimidate.lua
    Script Author  : neatz09
    Script Date    : 2019.10.17 01:10:14
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Mesmerizes target
-- Prevents AOE (except when direct) 
-- Dispelled when target takes damage
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
AddControlEffect(Target, 1)
    Say(Caster, "Resistibility not implemented")

end


function remove(Caster, Target)
RemoveControlEffect(Target, 1)
end