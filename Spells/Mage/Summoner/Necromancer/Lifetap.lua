--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/Lifetap.lua
    Script Author  : 
    Script Date    : 2013.12.08 04:12:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, Dmg, Heal)
    -- Inflicts 242 disease damage on target
    SpellDamage(Target, DmgType, Dmg)

    -- Heals caster for 99
    SpellHeal("Heal", Heal)
end
