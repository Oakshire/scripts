--[[
    Script Name    : Spells/Commoner/Hover.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 11:10:29
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Reduces maximum falling speed of caster
-- You cannot use this spell while riding on a mount.

function cast(Caster, Target)
AddControlEffect(Target, 13)
end

function remove(Caster, Target)
RemoveControlEffect(Target, 13)
end