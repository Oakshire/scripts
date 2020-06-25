--[[
    Script Name    : Spells/Commoner/SpiritoftheBear.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 06:04:51
    Script Purpose : 
                   : 
--]]

--     Increases Health Regen of caster by 22.0

function cast(Caster, Target, HP)
	if (GetLevel(Caster) >= 50) 
		then    
	AddSpellBonus(Caster, 602, HP)
	SetIllusion(Caster, 198)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end