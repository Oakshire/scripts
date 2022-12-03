--[[
    Script Name    : Spells/Priest/Cleric/AdmonishingSmite.lua
    Script Author  : LordPazuzu
    Script Date    : 12/1/2022
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, DmgType, MinVal, MaxVal)
   
	if not IsEpic() then
		AddControlEffect(Target, 3)
			end	
	SpellDamage(Target, DmgType, MinVal, MaxVal)
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