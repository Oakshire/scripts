--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/Tease.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 09:10:49
    Script Purpose : 
                   : 
--]]

-- Dispels 35 levels of arcane beneficial effects on target
function cast(Caster, Target, CureAmt, MinTaunt, MaxTaunt)
    CureByType(CureAmt, 2, "Cure")

-- Interrupts target
    Interrupt(Target)

-- Increases Threat to target by 2,110 
   if MaxTaunt ~= nil and MinTaunt < MaxTaunt then
        AddHate(Caster, Target, math.random(MinTaunt, MaxTaunt))
    else
        AddHate(Caster, Target, MinTaunt)
    end
end