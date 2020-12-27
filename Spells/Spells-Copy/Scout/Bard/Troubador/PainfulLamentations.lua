--[[
    Script Name    : Spells/Scout/Bard/Troubadour/PainfulLamentations.lua
    Script Author  : Zcoretri
    Script Date    : 4.April.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
    -- Interrupts target encounter
    Interrupt(Caster, Target)
    -- Inflicts mental damage on target encounter
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

