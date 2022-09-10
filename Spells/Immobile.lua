--[[
    Script Name    : Spells/Immobile.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.09 12:09:15
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)


--]]
function cast(Caster, Target, DmgType, MinVal, MaxVal)
--    if MaxVal ~= nil and MinVal < MaxVal then
        AddControlEffect(Target, 4)
--    end
end