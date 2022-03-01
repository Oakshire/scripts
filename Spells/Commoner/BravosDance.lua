--[[
    Script Name    : Spells/Commoner/BravosDance.lua
    Script Author  : neatz09
    Script Date    : 2020.03.29 05:03:42
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinHaste, MaxHaste, MinDPS, MaxDPS)
local Val1 = (GetLevel(Caster) * 1.08) * MinHaste
local Val2 =  (GetLevel(Caster) * 1.08) * MaxHaste
local Val3 =  (GetLevel(Caster) * 1.08) * MinDPS
local Val4 =  (GetLevel(Caster) * 1.08) * MaxDPS  
local Haste = randomFloat(Val1, Val2)
local DPS = randomFloat2(Val3, Val4)

    AddSpellBonus(Target, 617, Haste)
    AddSpellBonus(Target, 629, DPS)

end

function randomFloat(Val1, Val2)
	return Val1 + math.random()  * (Val2 - Val1);
end

function randomFloat2(Val3, Val4)
	return Val3 + math.random()  * (Val3 - Val4);
end
function remove(Caster, Target)
	RemoveSpellBonus(Target)
end