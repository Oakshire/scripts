--[[
    Script Name    : Spells/Fighter/Warrior/TauntingBlow.lua
    Script Author  : LordPazuzu
    Script Date    : 3/28/2023
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
    
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + DmgHigh
    MinDmg = math.floor(DmgBonus) * 2 + DmgLow
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

-- Increases Threat to target by 435 - 531 
    
AddHate(Caster, Target, math.random(MinTauntVal, MaxTauntVal), 1)

end

