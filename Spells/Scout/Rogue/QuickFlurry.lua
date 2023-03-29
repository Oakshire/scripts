--[[
    Script Name    : Spells/Scout/Rogue/QuickFlurry.lua
    Script Author  : LordPazuzu
    Script Date    : 1/3/2023
    Script Purpose : 
                   : 
--]]

-- Inflicts 24 - 40 melee damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 12
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
    
-- Inflicts 24 - 40 melee damage on target
if LastSpellAttackHit() then
SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

end

