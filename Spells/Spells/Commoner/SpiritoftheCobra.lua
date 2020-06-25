--[[
    Script Name    : Spells/Commoner/SpiritoftheCobra.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 09:04:57
    Script Purpose : 
                   : 
--]]

--     Increases Health Regen of caster by 102.0
function cast(Caster, Target, HP)
	if (GetLevel(Caster) >= 49) 
		then    
	AddSpellBonus(Caster, 602, HP)
	SetIllusion(Caster, 4661)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end