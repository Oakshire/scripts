--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Cuss.lua
    Script Author  : neatz09
    Script Date    : 2019.10.07 03:10:21
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, CureAmt, Hate)
-- Interrupts target
    Interrupt(Target)

-- Dispels 115 levels of arcane beneficial effects on target
    CureByType(CureAmt, 2, "Cure")

-- Increases Threat to target by 4,720
    AddHate(Caster, Target, Hate, 1)
end