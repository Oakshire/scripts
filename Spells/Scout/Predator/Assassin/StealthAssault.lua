--[[
    Script Name    : Spells/Scout/Predator/Assassin/StealthAssault.lua
    Script Author  : neatz09
    Script Date    : 2019.09.29 11:09:09
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 140 - 234 melee damage on targets in Area of Effect
-- Inflicts 43 piercing damage on targets in Area of Effect instantly and every 2 seconds
-- You must be in stealth or have Bloody Assault.
function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if IsStealthed(Caster) then
        return true
    end

    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false
end


function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTVal)
SpellDamage(Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DoTType, DoTVal)
end


function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTVal)
SpellDamage(Target, DoTType, DotVal)
end

