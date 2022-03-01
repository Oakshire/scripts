--[[
    Script Name    : Spells/Priest/Revive.lua
    Script Author  : theFoof
    Script Date    : 2013.12.13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)

-- Apply subspell for rez sickness when we support those

-- Resurrects target with 15% health and power
-- Applies Revived Sickness on termination.  Lasts for 2 minutes.
--     Decreases Toughness of target by 38.9
--     Decreases Lethality of target by 38.9
--     Decreases All Attributes of target by 20.0%
--         If not between levels 1 - 6
--     Decreases Attack Speed of target by 20.0
--         If not between levels 1 - 6
--     Decreases Attack Speed of target by 5.0
--         If between levels 1 - 6
--     Decreases All Attributes of target by 5.0%
--         If between levels 1 - 6
-- This effect cannot be cast during combat
-- If outside an arena


    Resurrect(15, 15, 1)
    CancelSpell()
end

function remove(Caster, Target)
end

function precast(Caster, Target)
    if IsInCombat(Caster) then
        return false
    end
    return true
end
