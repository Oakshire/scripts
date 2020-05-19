--[[
    Script Name    : Spells/Commoner/SpiritoftheWhiteBear.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 10:04:26
    Script Purpose : 
                   : 
--]]

--     Increases Health Regen of caster by 42.0
function cast(Caster, Target, HP)
	if (GetLevel(Caster) >= 10) 
		then    
	AddSpellBonus(Caster, 602, HP)
	SetIllusion(Caster, 3836)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end