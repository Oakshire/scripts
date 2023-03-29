--[[
    Script Name    : Spells/Scout/Rogue/Backstab.lua
    Script Author  : LordPazuzu
    Script Date    : 1/3/2023
    Script Purpose : 
                   : 
--]]

-- Inflicts 46 - 78 melee damage on target
-- Decreases AGI of target by 7.2
-- Must be flanking or behind

function precast(Caster,Target)
	if not IsFlanking(Caster, Target) and not IsBehind(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
				end
	return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, Agi)
    Level = GetLevel(Caster)
    SpellLevel = 10
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
	AddSpellBonus(Target, 2, Agi)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end