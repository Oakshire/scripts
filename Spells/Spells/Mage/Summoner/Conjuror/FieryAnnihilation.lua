--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/FieryAnnihilation.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 04:03:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, Dmg, DoTDmgType, DoTDmg)
    -- Inflicts 15 heat damage on target
    SpellDamage(Target, DmgType, Dmg)
end

function tick(Caster, Target, DmgType, Dmg, DoTDmgType, DoTDmg)
    -- Inflicts 3 heat damage on target every 4 seconds
    SpellDamage(Target, DoTDmgType, DoTDmg)
end