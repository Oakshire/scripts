--[[
    Script Name    : Spells/Fighter/Crusader/UnyieldingAdvance.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.17 04:03:19
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

function cast(Caster, Target, DmgType, MinVal, MaxVal, Hate)
    Level = GetLevel(Caster)
    SpellLevel = 13
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
    
    TotalHate = LvlBonus *2 + Hate
    AddHate(Caster, Target, TotalHate, 1)
    
      if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
    
    

end
