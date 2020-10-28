--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ConversionoftheSoul.lua
    Script Author  : neatz09
    Script Date    : 2020.03.02 08:03:51
    Script Purpose : 
                   : 
--]]

-- Applies Conversion of the Soul on termination.
--     Heals target for 50.0% of max health
--         This effect cannot be critically applied.
--     Increases power of target by 30.0%
--         This effect cannot be critically applied.
-- Resurrects target with 15% health and power
-- If outside an arena

function cast(Caster, Target)
Resurrect(15, 15, 1)
    Say(Caster, "No Summoning sickness + may need subspell")

end
