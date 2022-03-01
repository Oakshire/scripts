--[[
    Script Name    : Spells/Scout/Rogue/Bludgeon.lua
    Script Author  : neatz09
    Script Date    : 2020.11.10 11:11:32
    Script Purpose : 
                   : 
--]]

-- Inflicts 27 - 46 crushing damage on target
-- Decreases Haste of target by 10.3

function cast(Caster, Target, DmgType, MinVal, MaxVal, Haste)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddSpellBonus(Target, 617, Haste)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end