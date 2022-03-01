--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Enrage.lua
    Script Author  : Dello
    Script Date    : 10/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinTaunt, MaxTaunt)

    if MaxTaunt ~= nil and MinTaunt < MaxTaunt then

        AddHate(Caster, Target, math.random(MinTaunt, MaxTaunt))
    else
        AddHate(Caster, Target, MinTaunt)
    end
end

