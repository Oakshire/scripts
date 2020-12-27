--[[
    Script Name    : Spells/Commoner/ArchaicRuin.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 01:04:36
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MitMin, MitMax)
	local Val1 = (GetLevel(Caster) * 1.08) * MitMin
	local Val2 =  (GetLevel(Caster) * 1.08) * MitMax    
	local MitAmt = randomFloat(Val1, Val2)

SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
    AddSpellBonus(Target, 200, MitAmt)
	AddSpellBonus(Target, 203, MitAmt)
end

function randomFloat(Val1, Val2)
	return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
