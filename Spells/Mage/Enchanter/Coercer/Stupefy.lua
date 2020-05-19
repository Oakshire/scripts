--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Stupefy.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 08:03:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Stuns target encounter
    AddControlEffect(Target, 4)

    -- Epic targets gain an immunity to Stun effects of 12.4 seconds and duration is reduced to 1.4 seconds.
    -- Resistibility increases against targets higher than level 29.
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
