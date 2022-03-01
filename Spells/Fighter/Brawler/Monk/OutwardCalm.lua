--[[
    Script Name    : Spells/Fighter/Brawler/Monk/OutwardCalm.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 09:10:56
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Wards caster against 2789 points of elemental, noxious and arcane damage

function cast(Caster, Target)
AddWard(25, 1, 1)
end


function remove(Caster, Target)
RemoveWard(Target)
end
