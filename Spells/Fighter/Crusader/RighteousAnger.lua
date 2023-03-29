--[[
    Script Name    : Spells/Fighter/Crusader/RighteousAnger.lua
    Script Author  : LordPazuzu
    Script Date    : 3/17/2023
    Script Purpose : 
                   : 
--]]

-- Interrupts target
-- Inflicts 25 - 41 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 13
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    Interrupt(Caster, Target)
	SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end