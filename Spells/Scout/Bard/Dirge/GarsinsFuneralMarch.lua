--[[
    Script Name    : Spells/Scout/Bard/Dirge/GarsinsFuneralMarch.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:40
    Script Purpose : 
                   : 
--]]

-- Makes target afraid
-- 30% chance to dispel when target takes damage
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.
local Spell = GetSpellID()

function cast(Caster, Target, Chance)
    Say(Caster, "Resist level 29 or < not implemented.")
	Say(Caster, "Need a check for ifhascontroleffect")
	if not IsEpic(Target) then
		AddControlEffect(Target, 6)
			end
	AddProc(Target, 15, Chance)
end

function proc(Caster, Target, Type, Chance)
	if Type == 15 and HasSpellEffect(Target, Spell) then
		RemoveControlEffect(Target, 6)
			end
end

function remove(Caster, Target)
	RemoveControlEffect(Target, 6)
	RemoveProc(Target)
	
end