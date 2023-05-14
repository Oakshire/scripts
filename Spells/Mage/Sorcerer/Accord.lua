--[[
    Script Name    : Spells/Mage/Sorcerer/Accord.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.27 10:11:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PowerProc, SpellLevel)
	AddProc(Target, 15, 10) 
end

function proc(Caster, Target, Type, PowerProc, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    PowMod = LvlBonus * 2 + StatBonus
    PowBonus = PowerProc + math.floor(PowMod)  
    
Spell = GetSpell(5499, 1)
	if Type == 15 then
		SetSpellDataIndex(Spell, 0, PowBonus)

			CastCustomSpell(Spell, Caster, Target)
				end
end



function remove(Caster, Target)
	RemoveProc(Target)
end