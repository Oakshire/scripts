--[[
    Script Name    : Spells/Scout/Ambush.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 03:11:37
    Script Purpose : 
                   : 
--]]

-- Inflicts 12 - 20 melee damage on target
-- You must be sneaking to use this ability.
function precast(Caster,Target)
    -- You must be sneaking to use this ability.
    if not IsStealthed(Caster) then
        SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
        return false
    end
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end