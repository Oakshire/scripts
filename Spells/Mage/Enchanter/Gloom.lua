--[[
    Script Name    : Spells/Mage/Enchanter/Gloom.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 11:11:44
    Script Purpose : 
                   : 
--]]

-- Inflicts 12 - 14 mental damage on target instantly and every 6 seconds
-- Decreases Mitigation of target vs arcane damage by 141

function cast(Caster, Target, DmgType, MinVal, MaxVal, Mit)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 203, Mit)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, Mit)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end