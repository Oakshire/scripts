--[[
    Script Name    : Spells/Commoner/HolySteed.lua
    Script Author  : Jabantiz
    Script Date    : 2014.05.31 07:05:18
    Script Purpose : updated 7/20/20 by Neatz09
                   : 
--]]

-- Summons a mount to ride
--     Increases your ground speed by 130%

function cast(Caster, Target, Speed)
    SetMount(Caster, 6852)
       AddSpellBonus(Target, 609, Speed)

end

function remove(Caster, Target)
    SetMount(Caster, 0)
    RemoveSpellBonus(Target)
end