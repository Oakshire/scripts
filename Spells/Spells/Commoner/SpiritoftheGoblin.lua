--[[
    Script Name    : Spells/Commoner/SpiritoftheGoblin.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 01:04:57
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Pwr)
	if (GetLevel(Caster) >= 70) 
		then    
	AddSpellBonus(Caster, 603, Pwr)
	SetIllusion(Caster, 7311)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end