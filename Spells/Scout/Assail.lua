--[[
    Script Name    : Spells/Scout/Assail.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 07:11:13
    Script Purpose : 
                   : 
--]]

-- Inflicts 26 - 44 melee damage on target
-- You must be sneaking to use this ability.

function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if not IsStealthed(Caster) then
        SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
        return false
    end
end

function cast(Caster, Target)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end