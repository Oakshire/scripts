--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/ShiftMana.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 06:03:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Power)
    -- Increases power of caster by 6 instantly and every 4 seconds
    SpellHeal("Power", Power)
end

function tick(Caster, Target, Power)
    SpellHeal("Power", Power)
end
