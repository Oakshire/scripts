--[[
    Script Name    : Spells/Fighter/Warrior/TauntingBlow.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh, MinTauntVal, MaxTauntVal, SpellLevel)
    
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    
    DmgBonus = LvlBonus * 1.5 + StatBonus
    MaxDmg = DmgHigh + math.floor(DmgBonus)
    MinDmg = DmgLow + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

-- Increases Threat to target by 435 - 531 
    
AddHate(Caster, Target, math.random(MinTauntVal, MaxTauntVal), 1)

end

