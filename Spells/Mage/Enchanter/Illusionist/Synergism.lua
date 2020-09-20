--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Synergism.lua
    Script Author  : neatz09
    Script Date    : 2020.01.31 06:01:53
    Script Purpose : 
                   : 
--]]

-- On a hostile spell hit this spell has a 33% chance to cast Dynamism on target of spell.  
--     Decreases Threat to target by 160 - 196 
--         If profession other than Fighter
--     Inflicts 70 - 86 mental damage on target

function cast(Caster, Target, HateLow, HateHigh, DmgType, MinVal, MaxVal)
	AddProc(Target, 5, 33)
end

function proc(Caster, Target, Type, HateLow, HateHigh, DmgType, MinVal, MaxVal)
  if type == 15 then
    ProcDamage(Caster, Target, "Dynamism", Hate, DmgType, MinVal, MaxVal)
    local Class = GetArchetypeName(Target)
	local Hate = math.random(HateLow, HateHigh)
		if Class > 0 and Class < 11 then
			ProcHate(Caster, Target, Hate, "Dynamism")
				end
					end
end

function remove(Caster, Target)
	RemoveProc(Target)
end