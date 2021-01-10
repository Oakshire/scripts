--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/FrigidGift.lua
    Script Author  : neatz09
    Script Date    : 2020.09.05 09:09:36
    Script Purpose : 
                   : 
--]]

-- On a hostile spell cast this spell will cast Ice Lash on target of spell.  Lasts for 6.0 seconds.  
--     Inflicts 54 - 67 cold damage on target
--     Slows target by 33.3%
--     5% chance to dispel when target receives hostile action
--     5% chance to dispel when target takes damage

function cast(Caster, Target, DmgType, MinVal, MaxVal, SlowAmt)
	AddProc(Target, 5, 100)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, SlowAmt)
	Spell = GetSpell(5461, GetSpellTier())
	local Slow = 100 - SlowAmt
		if Type == 5 then
			SetSpellDataIndex(Spell, 0, RegHeal)
			SetSpellDataIndex(Spell, 1, ModHeal)
			SetSpellDataIndex(Spell, 2, Slow)
				CastCustomSpell(Spell, Caster, Target)
					end
end

function remove(Caster, Target)
	RemoveProc(Target)
end