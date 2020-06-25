--[[
    Script Name    : Spells/Commoner/SpiritoftheCarnivorousPlant.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 08:04:29
    Script Purpose : 
                   : 
--]]

--     Increases Health Regen of caster by 127.0
function cast(Caster, Target, HP)
	if (GetLevel(Caster) >= 60) 
		then    
	AddSpellBonus(Caster, 602, HP)
	SetIllusion(Caster, 5946)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end