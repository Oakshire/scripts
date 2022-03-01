--[[
    Script Name    : Spells/Scout/Predator/Ranger/SnaringShot.lua
    Script Author  : neatz09
    Script Date    : 2020.09.18 02:09:38
    Script Purpose : 
                   : 
--]]

-- Inflicts 182 - 304 ranged damage on target
-- Slows target by 36.8%
-- 10% chance to dispel when target receives hostile action
-- Requires bow or aim
function precast(Caster, Target)
    -- Requires bow
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end

function cast(Caster, Target, DmgMin, DmgMax, SlowAmt, Chance)
	local Slow = 100 - SlowAmt
		SpellDamage(Target, nil, DmgMin, DmgMax)
		SetSpeedMultiplier(Target, Slow)
		AddProc(Target, 1, Chance)
end

function proc(Caster, Target, Type, DmgMin, DmgMax, SlowAmt, Chance)
	if type == 1 then SetSpeedMultiplier(Target, 1)
	RemoveProc(Target)
end
end

function remove(Caster, Target)
	RemoveProc(Target)
	SetSpeedMultiplier(Target, 1)
end
