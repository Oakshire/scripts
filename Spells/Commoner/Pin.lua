--[[
    Script Name    : Spells/Commoner/Pin.lua
    Script Author  : neatz09
    Script Date    : 2020.10.28 03:10:23
    Script Purpose : 
                   : 
--]]

--     Roots target
--     5% chance to dispel when target takes damage
--     5% chance to dispel when target receives hostile action
--     Epic targets gain an immunity to Root and Ability attacks will hit for their maximum damage. 
--effects of 30.0 seconds and duration is reduced to 3.3 seconds.

function cast(Caster, Target)
    AddControlEffect(Target, 5)
	AddProc(Target, 1)
    Say(Caster, "Epic Immunity not implemented.")
end

function proc(Caster, Target)
	if type == 1 then
		CancelSpell()
	end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
end