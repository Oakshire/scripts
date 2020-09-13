--[[
    Script Name    : Spells/Traditions/ConstrictingTentacle.lua
    Script Author  : neatz09
    Script Date    : 2020.08.18 01:08:23
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Roots target
-- Decreases Attack Speed of target by 6.7 - 11.3


function cast(Caster, Target, MinVal, MaxVal)
	AddControlEffect(Target, 5)
        local Val1 = MinVal
	local Val2 = MaxVal    
	local Haste = randomFloat(Val1, Val2)
		AddSpellBonus(Target, 617, Haste)
end

function randomFloat(Val1, Val2)
math.randomseed(os.time())	
return Val1 + math.random()  * (Val2 - Val1);
end

function remove(Caster, Target)
RemoveControlEffect(Target, 5)	
RemoveSpellBonus(Target)
end
