--[[
    Script Name    : Spells/Priest/Druid/Warden/WillowWisp.lua
    Script Author  : neatz09
    Script Date    : 2020.09.05 09:09:22
    Script Purpose : 
                   : 
--]]

-- Interrupts targets in Area of Effect
-- Decreases threat priority of targets in Area of Effect by 1 position
-- Decreases Threat to targets in Area of Effect by 1,169 
-- Roots targets in Area of Effect
--     If Target is not Epic

function cast(Caster, Target, Hate)
    Interrupt(Caster,Target)
	Say(Caster, "Threat position not implemented.")
	AddHate(Caster, Target, Hate, 1)
		if not IsEpic(Target) then 
			AddControlEffect(Target, 5)
				end
		if LastSpellAttackHit() then
			AddProc(Target, 1, 100)
				end
end

function proc(Caster, Target, Type, Hate)
	if Type == 1 then 
CancelSpell()
	end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
end