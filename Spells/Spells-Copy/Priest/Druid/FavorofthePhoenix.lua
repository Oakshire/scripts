--[[
    Script Name    : Spells/Priest/Druid/FavorofthePhoenix.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:13
    Script Purpose : 
                   : 
--]]

-- Summon 1 Crystallized Phoenix Feather
-- This effect cannot be cast during combat

function cast(Caster, Target, ItemID)
if IsPlayer(Target) and HasItem(Target, ItemID) then 
RemoveItem(Target, ItemID)
end
SummonItem(Target, ItemID)
end