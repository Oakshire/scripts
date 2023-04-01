--[[
    Script Name    : Spells/Scout/Predator/OpenShot.lua
    Script Author  : LordPazuzu
    Script Date    : 3/31/2023
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

function cast(Caster, Target, MinVal, MaxVal)
	Level = GetLevel(Caster)
    SpellLevel = 16
    Mastery = SpellLevel + 10
    StatBonus = GetAgi(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    
    
    SpellDamage(Target, 2, MinDmg, MaxDmg)
		if LastSpellAttackHit() then
			SpellDamage(Target,2, MinDmg, MaxDmg)
				end
end
