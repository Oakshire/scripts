--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/BloodyRitual.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.08 12:12:38
    Script Purpose : 
                   : 
--]]

-- Inflicts 21 magic damage on target instantly and every 4 seconds
-- Increases power of caster by 6 instantly and every 4 seconds

function cast(Caster, Target, dmgType, dmg, heal)
    SpellDamage(Target, dmgType, dmg)
    SpellHeal("Heal", heal)
end

function tick(Caster, Target, dmgType, dmg, heal)
    SpellDamage(Target, dmgType, dmg)
    SpellHeal("Heal", heal)
end
