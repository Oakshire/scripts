--[[
    Script Name    : Spells/Commoner/GenericGenderDisguise.lua
    Script Author  : neatz09
    Script Date    : 2020.09.12 08:09:32
    Script Purpose : Generic Script for gender specific shapechanges
                   : 
--]]

function cast(Caster, Target, Male, Female)
	if GetGender(Spawn) == 1 then
        SetIllusion(Target, Male)
    else
        SetIllusion(Target, Female)
    end
end	
 
function remove(Caster, Target)
	ResetIllusion(Target)
end