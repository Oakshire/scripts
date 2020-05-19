--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/SolarFlare.lua
    Script Author  : Zcoretri
    Script Date    : 2013.06.12 09:12:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        SpellDamage(Target, DmgType, math.random(MinDmg, MaxDmg))
    else
        SpellDamage(Target, DmgType, MinDmg)
    end
end
