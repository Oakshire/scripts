--[[
    Script Name    : Spells/Mage/Sorcerer/FreezingWhorl.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:50
    Script Purpose : 
                   : 
--]]

-- Inflicts 5 - 10 cold damage on target instantly and every 4 seconds
-- Decreases Mitigation of target vs elemental damage by 133

function cast(Caster, Target, DmgType, MinVal, MaxVal, Mit)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddSpellBonus(Target, 201, Mit)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, Mit)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end