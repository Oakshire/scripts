--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/SonicPunch.lua
    Script Author  : neatz09
    Script Date    : 2019.10.17 01:10:15
    Script Purpose : 
                   : 
--]]

-- Interrupts target
-- Inflicts 541 - 903 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Teleport and max range not implemented.")
    Interrupt(Caster, Target)
SpellDamage(Target, DmgType, MinVal, MaxVal)
end
