--[[
    Script Name    : Spells/Priest/Shaman/SpiritGuide.lua
    Script Author  : neatz09
    Script Date    : 2019.11.07 08:11:03
    Script Purpose : 
                   : 
--]]

-- This effect cannot be cast during combat
function precast(Caster)
    return not IsInCombat(Caster)
end

function cast(Caster, Target, ItemID)
-- Summon 1 Spirit Guide
    if IsPlayer(Target) and HasItem(Target, ItemID) then 
RemoveItem(Target, ItemID)
end
SummonItem(Target, ItemID)
end


