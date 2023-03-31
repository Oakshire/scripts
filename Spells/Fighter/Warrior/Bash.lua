--[[
    Script Name    : Spells/Fighter/Warrior/Bash.lua
    Script Author  : LordPazuzu
    Script Date    : 3/30/2023
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    local item = GetEquippedItemBySlot(Caster, 1)
    if not item or GetItemType(item) ~= 4 then
        SendMessage(Caster, "Must have shield equipped", "yellow")
        return false, 70
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
    

end
