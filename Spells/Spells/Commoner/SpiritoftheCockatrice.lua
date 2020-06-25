--[[
    Script Name    : Spells/Commoner/SpiritoftheCockatrice.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 01:04:57
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, HP)
	if (GetLevel(Caster) >= 40 ) 
		then    
	AddSpellBonus(Caster, 602, HP)
	SetIllusion(Caster, 7235)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end