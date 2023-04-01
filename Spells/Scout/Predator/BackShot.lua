--[[
    Script Name    : Spells/Scout/Predator/BackShot.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.30 04:03:29
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 106 - 178 ranged damage on target
*If weapon equipped in Ranged
*Must be flanking or behind

--]]
function precast(Caster, Target)
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        SendMessage(Caster, "Must have ranged weapon equipped", "yellow")
        return false, 68
    end
            
    if not IsFlanking(Caster, Target) and not IsBehind(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
	end
	return true
end

function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 15
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
    
end


