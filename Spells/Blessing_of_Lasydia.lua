--[[
    Script Name    : Spells/Blessing_of_Lasydia.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 02:09:23
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Grants water-breathing to the chosen of Lasydia.  

--]]

function cast(Caster, Target)
    -- Allows target to breathe under water
    BreatheUnderwater(Target, true)
end

function remove(Caster, Target)
    BreatheUnderwater(Target, false)
end
