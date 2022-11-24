--[[
    Script Name    : Spells/Mage/Sorcerer/TongueTwist.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:13
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Interrupt(Caster, Target)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
		if not IsEpic() then
			AddControlEffect(Target, 2)
				end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end