--[[
    Script Name    : Spells/Fighter/Crusader/RighteousBlow.lua
    Script Author  : LordPazuzu
    Script Date    : 3/17/2023
    Script Purpose : 
                   : 
--]]

-- Applies Blessed Strike on termination.
--     Inflicts 23 - 38 divine damage on target
-- Inflicts 9 - 16 divine damage on target

function cast(Caster, Target, Dmg1, Dmg1Min, Dmg1Max, Dmg2, Dmg2Min, Dmg2Max)
    Level = GetLevel(Caster)
    SpellLevel = 11
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
    Spell = GetSpell(2550392, GetSpellTier())  
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg1 = Dmg1Max + math.floor(DmgBonus)
    MinDmg1 = Dmg1Min + math.floor(DmgBonus)
    MaxDmg2 = Dmg2Max + math.floor(DmgBonus)
    MinDmg2 = Dmg2Min + math.floor(DmgBonus)
    
    SpellDamage(Target, Dmg2, MinDmg2, MaxDmg2)
    
    if LastSpellAttackHit() then
		SetSpellDataIndex(Spell, 0, Dmg1)
		SetSpellDataIndex(Spell, 1, MinDmg1)
		SetSpellDataIndex(Spell, 2, MaxDmg1)
		CastCustomSpell(Spell, Caster, Target)

        end
end

