--[[
    Script Name    : Spells/Fighter/Warrior/ForcedSwing.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:30
    Script Purpose : 
                   : 
--]]

-- Inflicts 22 - 38 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus * 1.5 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

end

