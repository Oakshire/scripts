--[[
    Script Name    : Spells/Scout/HiltStrike.lua
    Script Author  : neatz09
    Script Date    : 2020.09.03 11:09:49
    Script Purpose : 
                   : 
--]]


-- Interrupts target
-- Inflicts 17 - 21 crushing damage on target
-- Stuns target
--     If Target is not Epic

function cast(Caster, Target, DmgType, MinVal, MaxVal)
        Say(Caster, "This need spell needs a formula")
    Interrupt(Caster, Target)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddControlEffect(Target, 4)

end


function remove(Caster, Target)
    RemoveControlEffect(Target, 4)

end
