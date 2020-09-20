--[[
    Script Name    : Spells/Scout/Bard/Troubador/DepressingChant.lua
    Script Author  : neatz09
    Script Date    : 2020.09.19 03:09:13
    Script Purpose : 
                   : 
--]]

-- Applies Snare.  Lasts for 24.0 seconds.
--     Slows target by 28.3%
--     5% chance to dispel when target receives hostile action
--     5% chance to dispel when target takes damage
-- Decreases Mitigation of target vs arcane damage by 197

function cast(Caster, Target, SlowAmt, HostileChance, DmgChance, DebuffAmt)
local Slow = 100 - SlowAmt
-- Slows target
-- chance to dispel when target receives hostile action
-- chance to dispel when target takes damage
-- Decreases Mitigation of target vs noxious damage
	AddSpellBonus(Target, 202, DebuffAmt)
	SetSpeedMultiplier(Target, Slow)
	AddProc(Target, 1, HostileChance)
	AddProc(Target, 15, DmgChance)
end

function proc(Caster, Target, Type, SlowAmt, HostileChance, DmgChance, DebuffAmt)
local Spell = GetSpellID()	
if (Type == 1 or type == 15) and HasSpellEffect(Target, Spell) then
		SetSpeedMultiplier(Target, 1)
			end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
	RemoveProc(Target)
	SetSpeedMultiplier(Target, 1)
end