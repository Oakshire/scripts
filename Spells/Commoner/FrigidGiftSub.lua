--[[
    Script Name    : Spells/Commoner/FrigidGiftSub.lua
    Script Author  : neatz09
    Script Date    : 2021.01.09 03:01:37
    Script Purpose : Subspell for Frigid Gift
                   : 
--]]

--     Inflicts 54 - 67 cold damage on target
--     Slows target by 33.3%
--     5% chance to dispel when target receives hostile action
--     5% chance to dispel when target takes damage

function cast(Caster, Target, Dmg, Min, Max, SlowMod)
	SpellDamage(Target, Dmg, Min, Max)
	SetSpeedMultiplier(Target, SlowMod)
	AddProc(Target, 15, 5)
	AddProc(Target, 1, 5) 
end

function proc(Caster, Target, Type, Dmg, Min, Max, SlowMod)
	if Type == 15 or Type == 1 then
		CancelSpell()
			end
end

function remove(Caster, Target)
	SetSpeedMultiplier(Target, 1)
	RemoveProc(Target)
end