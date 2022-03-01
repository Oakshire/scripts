--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/FeastingSoul.lua
    Script Author  : neatz09
    Script Date    : 2019.10.14 11:10:55
    Script Purpose : 
                   : 
--]]

-- Inflicts 112 disease damage on target instantly and every 4 seconds
function cast(Caster, Target, DmgType, MinVal, MaxVal, MinHP, MinPwr)
        SpellDamage(Target, DmgType, MinVal, MaxVal)
SpellHeal(Heal, MinHP, nil, Caster, 2, 1)
SpellHeal(Heal, MinPwr, nil, Caster, 2, 1)
end


-- Heals caster for 74 instantly and every 4 seconds
-- Increases power of caster by 37 instantly and every 4 seconds
function tick(Caster, Target, DmgType, MinVal, MaxVal, MinHP, MinPwr)
SpellDamage(Target, DmgType, MinVal, MaxVal)
SpellHeal(Heal, MinHP, nil, Caster, 2, 1)
SpellHeal(Heal, MinPwr, nil, Caster, 2, 1)
end


