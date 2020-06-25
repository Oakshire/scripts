--[[
    Script Name    : Spells/Commoner/SpiritoftheTiger.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 10:04:41
    Script Purpose : 
                   : 
--]]

--     Increases Health Regen of caster by 62.0
function cast(Caster, Target, HP)
	if (GetLevel(Caster) >= 50) 
		then    
	AddSpellBonus(Caster, 602, HP)
	SetIllusion(Caster, 2415)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end