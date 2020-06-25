--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/EssenceShift.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 06:03:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, Dmg, HealType, Power)
    -- Inflicts 122 magic damage on target
    SpellDamage(Target, DmgType, Dmg, Dmg, 2, 1)

    -- Increases power of caster by 29
    SpellHeal("Power", Power, Power, Caster, 2, 1)
end
