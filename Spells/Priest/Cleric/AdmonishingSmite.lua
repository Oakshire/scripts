--[[
    Script Name    : Spells/Priest/Cleric/AdmonishingSmite.lua
    Script Author  : LordPazuzu
    Script Date    : 12/1/2022
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 18
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
   
	if not IsEpic() then
		AddControlEffect(Target, 3)
	end	

	AddProc(Target, 15, 100)
	
end

function proc(Caster, Target, Type, DmgType, MinVal)
	if Type == 15 then
	    RemoveControlEffect(Target, 3)
		CancelSpell()
	end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end