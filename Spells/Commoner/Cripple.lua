--[[
    Script Name    : Spells/Commoner/Cripple.lua
    Script Author  : neatz09
    Script Date    : 2020.09.25 01:09:54
    Script Purpose : Subspell for wall of rage
                   : 
--]]

function cast(Caster, Target, SlowMod)
	SetSpeedMultiplier(Target, SlowMod)
	AddProc(Target, 1, 5)
	AddProc(Target, 15, 5)
end

function proc(Caster, Target, Type, SlowMod)
	if type == 1 or type == 15 then
		CancelSpell()
			end
end

function remove(Caster, Target)
	SetSpeedMultiplier(Target, 1)
	RemoveProc(Target)
end