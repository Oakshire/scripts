--[[
    Script Name    : Spells/Scout/Predator/OpenShot.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:29
    Script Purpose : 
                   : 
--]]

-- Inflicts 24 - 40 ranged damage on target
-- Inflicts 24 - 40 ranged damage on target
-- If weapon equipped in Ranged
function precast(Caster, Target)
    -- Requires bow
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end

function cast(Caster, Target, DmgMin, DmgMax)
	SpellDamage(Target, DmgMin, DmgMax)
		if LastSpellAttackHit() then
			SpellDamage(Target, DmgMin, DmgMax)
				end
end
