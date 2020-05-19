--[[
    Script Name    : Spells/Commoner/HerosArmor.lua
    Script Author  : neatz09
    Script Date    : 2020.03.29 03:03:00
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
	local Val1 = (GetLevel(Caster) * 1.08) * MinVal
	local Val2 =  (GetLevel(Caster) * 1.08) * MaxVal    
	local MitAmt = randomFloat(Val1, Val2)
		AddSpellBonus(Target, 200, MitAmt)
    Say(Caster, "MitAmt = " .. MitAmt)

end

function randomFloat(Val1, Val2)
	return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end


