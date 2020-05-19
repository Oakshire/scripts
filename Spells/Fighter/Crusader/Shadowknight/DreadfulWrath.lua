--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/DreadfulWrath.lua
    Script Author  : neatz09
    Script Date    : 2019.10.17 01:10:03
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


function cast(Caster, Target, DmgType, MinVal, MaxVal, Snare)
SpellDamage(Target, DmgType, MinVal, MaxVal)    
-- Applies Snare on termination.  Lasts for 24.0 seconds.
--     Slows target by 37.7%
--     5% chance to dispel when target receives hostile action
--     5% chance to dispel when target takes damage
    SetSpeedMultiplier(Target, Snare)
    AddProc(Target, 2, 5.0)

end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end

function remove(Caster, Target)
    -- code to remove the spell
    SetSpeedMultiplier(Target, 1.0)

end