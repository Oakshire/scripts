--[[
    Script Name    : Spells/Commoner/GenericShapeshifter.lua
    Script Author  : neatz09
    Script Date    : 2020.09.06 02:09:12
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Illusion)
	SetIllusion(Target, Illusion) 
end


function remove(Caster, Target)
	ResetIllusion(Target)
end
