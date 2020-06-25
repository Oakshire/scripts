--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/Bloodcloud.lua
    Script Author  : 
    Script Date    : 2013.12.08 02:12:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HealVal, DmgType, DmgVal)
    -- Heals caster for 75
    SpellHeal("Heal", HealVal, 0, Caster)

    -- Inflicts 184 disease damage on targets in Area of Effect
    SpellDamage(Target, DmgType, DmgVal)
end
