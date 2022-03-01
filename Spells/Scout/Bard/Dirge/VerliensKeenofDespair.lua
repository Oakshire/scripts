--[[
    Script Name    : Spells/Scout/Bard/Dirge/VerliensKeenofDespair.lua
    Script Author  : Neatz09
    Script Date    : 9/18/2020
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SlowAmt, HostileChance, DmgChance, DebuffAmt)
local Slow = 100 - SlowAmt
local Spell = GetSpellID()
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
	if (Type == 1 or type == 15) and HasSpellEffect(Target, Spell) then
		SetSpeedMultiplier(Target, 1)
			end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
	RemoveProc(Target)
	SetSpeedMultiplier(Target, 1)
end

