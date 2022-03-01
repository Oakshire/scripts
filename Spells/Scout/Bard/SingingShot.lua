--[[
    Script Name    : Spells/Scout/Bard/SingingShot.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 06:11:13
    Script Purpose : 
                   : 
--]]

-- Inflicts 22 - 36 mental damage on target
-- Inflicts 22 - 36 mental damage on target
-- Stifles target
--     If Target is not Epic
-- If weapon equipped in Ranged
-- Resistibility increases against targets higher than level 29.

function precast(Caster, Target)
    -- Requires bow
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	Say(Caster, "Resistibility not Implemented.")
		SpellDamage(Target, DmgType, MinVal, MaxVal)
			if LastSpellAttackHit() then
				SpellDamage(Target, DmgType, MinVal, MaxVal)
					end
		if LastSpellAttackHit() and not IsEpic() then
			AddControlEffect(Target, 2)
				end
end
		
function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end