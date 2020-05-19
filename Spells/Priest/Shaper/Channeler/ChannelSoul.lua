--[[
    Script Name    : Spells/Priest/Shaper/Channeler/ChannelSoul.lua
    Script Author  : neatz09
    Script Date    : 2019.11.07 08:11:42
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)

-- This effect cannot be cast during combat
function precast(Caster)
    return not IsInCombat(Caster)
end

function cast(Caster, Target, ItemID)
-- Summon 1 Channeling Vessel
    if IsPlayer(Target) and HasItem(Target, ItemID) then 
RemoveItem(Target, ItemID)
end
SummonItem(Target, ItemID)
end

