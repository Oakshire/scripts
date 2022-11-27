--[[
    Script Name    : Spells/Mage/Enchanter/EgoShock.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.27 05:11:18
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 42 - 51 mental damage on target
*Roots target
*5% chance to dispel when target takes damage
*5% chance to dispel when target receives hostile action
*Epic targets gain an immunity to Root and Ability attacks will hit for their maximum damage. effects of 27.0 seconds and duration is reduced to 3.0 seconds.
*Resistibility increases against targets higher than level 29.

--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
        -- Roots target
    SetSpeedMultiplier(Target, 0)

    -- 5% chance to dispel when target takes damage
    AddProc(Target, 2, 5.0)

end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end
    
function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1.0)
end

