--[[
    Script Name    : Spells/Fighter/Warrior/Bash.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:28
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
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
    
    if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
    

end
