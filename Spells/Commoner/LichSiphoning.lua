--[[
    Script Name    : Spells/Commoner/LichSiphoning.lua
    Script Author  : neatz09
    Script Date    : 2020.09.29 11:09:16
    Script Purpose : 
                   : 
--]]

-- On a hostile spell cast this spell will cast Lich's Siphoning on target of spell.  
--     Inflicts 72 disease damage on target
--     Heals caster for 48

function cast(Caster, Target, DmgType, Dmg, HealAmt)
SpellDamage(Target, DmgType, Dmg)
SpellHeal("Heal", HealAmt, Nil, Caster)
end