--[[
    Script Name    : Spells/Scout/Rogue/Brigand/BarroomNegotiation.lua
    Script Author  : Zcoretri
    Script Date    : 14.March.2014
    Script Purpose : added last hit clause 5/13/20
                   : 
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
-- Inflicts melee damage on targets in Area of Effect
-- Interrupts targets in Area of Effect
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    if LastSpellAttackHit() then
    Interrupt(Caster, Target)
end
end


