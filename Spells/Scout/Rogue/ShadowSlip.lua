--[[
    Script Name    : Spells/Scout/Rogue/ShadowSlip.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 04:12:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HateAmt)
    -- Decreases threat priority of target by 1 position
    -- Decreases Threat to target by 283 
    AddHate(Target, HateAmt, 1)

    -- Applies Lie Low on termination.  Lasts for 12 hours.
    --     Grants stealth to caster
    --     Suspends caster's movement speed enhancements

end
