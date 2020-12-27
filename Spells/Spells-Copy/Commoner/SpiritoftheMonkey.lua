--[[
    Script Name    : Spells/Commoner/SpiritoftheMonkeylua
    Script Author  : neatz09
    Script Date    : 2020.04.04 05:04:54
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
--     Increases Power Regen of caster by 72.0
function cast(Caster, Target, Pwr)
	if (GetLevel(Caster) >= 50) 
		then    
	AddSpellBonus(Caster, 603, Pwr)
	SetIllusion(Caster, 5006)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end