--[[
    Script Name    : Spells/Commoner/HolySteed.lua
    Script Author  : Jabantiz
    Script Date    : 2014.05.31 07:05:18
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Summons a mount to ride
--     Increases your ground speed by 130%

function cast(Caster, Target, Mount)
    -- Test for aerakyn
    SetMount(Caster, 17509)
    AddControlEffect(Caster, 12)
end

function remove(Caster, Target)
    SetMount(Caster, 0)
    RemoveControlEffect(Caster, 12)
end