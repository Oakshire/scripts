--[[
	Script Name	: Spells/Scout/Pathfinding.lua
	Script Author	: John Adams
	Script Date	: 2010.01.29
	Script Note	: 
			: 
--]]

function cast(Caster, Target, BuffValue)
    NewSpeed = GetSpeed(Caster)
    if NewSpeed == 0 then
        SetSpeed(Caster, BuffValue)
    else
        SetSpeed(Caster, NewSpeed + BuffValue)
    end
end

function remove(Caster, Target, BuffValue)
    SetSpeed(Caster, 0)
end
