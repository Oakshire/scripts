--[[
    Script Name    : Spells/Scout/Rogue/StranglingShot.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.04 01:01:55
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end


function cast(Caster, Target, MinVal, MaxVal, MinPow, MaxPow)
    Level = GetLevel(Caster)
    SpellLevel = 16
    Mastery = SpellLevel + 8
    StatBonus = GetAgi(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, 2, MinDmg, MaxDmg)
    SpellHeal(Target, "Power", MinPow, MaxPow)

end


