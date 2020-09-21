--[[
    Script Name    : Spells/Priest/Druid/Snare.lua
    Script Author  : neatz09
    Script Date    : 2020.09.21 12:09:26
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Slows target by 40.0%
-- Does not affect Epic targets
function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end


function cast(Caster, Target, SlowAmt)
local Slow = 100 - SlowAmt
	SetSpeedMultiplier(Target, Slow)
end


function remove(Caster, Target)
SetSpeedMultiplier(Target, 1)
end
