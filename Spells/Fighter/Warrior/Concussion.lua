--[[
    Script Name    : Spells/Fighter/Warrior/Concussion.lua
    Script Author  : LordPazuzu
    Script Date    : 3/28/2023
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, PwrMin, PwrMax)
    Level = GetLevel(Caster)
    SpellLevel = 17
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + DmgHigh
    MinDmg = math.floor(DmgBonus) * 2 + DmgLow
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
-- Decreases power of target by 23 - 38
SpellHeal("Power", PwrMin, PwrMax)
end




