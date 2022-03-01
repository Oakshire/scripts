--[[
	Script Name	: Spells/Commoner/Sprint.lua
	Script Purpose	: Sprint
	Script Author	: theFoof
	Script Date	: 2014.3.9
	Script Note	: 
--]]

function cast(Caster, Target, Speed, is_tick)
	local has_moved = SprinterHasMoved(Caster, is_tick)
	if not has_moved and GetTempVariable(Caster, "sprint_bonus_active") == "true" then
		return
	end
	
	local power_left = GetPower(Caster)
	local total_power = GetMaxPower(Caster)
	if power_left - (total_power * .1) < 0 then
		if GetTempVariable(Caster, "sprint_bonus_active") == "true" then
			RemoveSpellBonus()
			SetTempVariable(Caster, "sprint_bonus_active", nil)
		end
	else
		if is_tick  == true then
			ModifyPower(Caster, -1 * (total_power * .1))
		end
		if GetTempVariable(Caster, "sprint_bonus_active") ~= "true" then
			AddSpellBonus(Caster, 609, Speed)
		end
		SetTempVariable(Caster, "sprint_bonus_active", "true")
		SetTempVariable(Caster, "sprint_bonus_x", GetX(Caster) .. "")
		SetTempVariable(Caster, "sprint_bonus_y", GetY(Caster) .. "")
		SetTempVariable(Caster, "sprint_bonus_z", GetZ(Caster) .. "")
	end
end

function SprinterHasMoved(Caster, is_tick)
	if is_tick ~= true then
		return true
	end
	
	local ret = false
	
	if GetTempVariable(Caster, "sprint_bonus_x") ~= GetX(Caster) .. "" then
		ret = true
	elseif GetTempVariable(Caster, "sprint_bonus_y") ~= GetY(Caster) .. "" then
		ret = true
	elseif GetTempVariable(Caster, "sprint_bonus_z") ~= GetZ(Caster) .. "" then
		ret = true
	end
	return ret
end

function tick(Caster, Target, Speed)
	cast(Caster, Target, Speed, true)
end

function remove(Caster)
	RemoveSpellBonus()
	SetTempVariable(Caster, "sprint_bonus_active", nil)
	SetTempVariable(Caster, "sprint_bonus_x", nil)
	SetTempVariable(Caster, "sprint_bonus_y", nil)
	SetTempVariable(Caster, "sprint_bonus_z", nil)
end