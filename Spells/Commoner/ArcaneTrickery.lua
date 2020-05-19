--[[
    Script Name    : Spells/Commoner/ArcaneTrickery.lua
    Script Author  : neatz09
    Script Date    : 2020.03.22 05:03:34
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MitMin, MitMax)
	local Val1 = (GetLevel(Caster) * 1.08) * MitMin
	local Val2 =  (GetLevel(Caster) * 1.08) * MitMax    
	local MitAmt = randomFloat(Val1, Val2)
	SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
    AddSpellBonus(Caster, 200, MitAmt)
    AddSpellBonus(Caster, 203, MitAmt)
end

function randomFloat(Val1, Val2)
	return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
        RemoveSpellBonus(Caster)
end