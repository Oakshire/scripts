
--[[
    Script Name    : Spells/Commoner/Stealth.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.30 08:03:26
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)

    Stealth(1, Caster)
end

function remove(Caster, Target)
	RemoveStealth()
end
