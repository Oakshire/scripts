--[[
	Script Name	: Spells/Priest/Cleric/Templar/SignofPacification.lua
	Script Purpose	: Templar control effect
	Script Author	: theFoof
	Script Date	: 2014.3.9
--]]

function cast(Caster, Target)
    if not IsEpic(Target) then
        AddControlEffect(Target, 3) --Daze effect
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end
