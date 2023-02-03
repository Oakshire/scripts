--[[
    Script Name    : Spells/Fighter/Crusader/RighteousAnger.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 04:11:37
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
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    Interrupt(Caster, Target)
	SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end