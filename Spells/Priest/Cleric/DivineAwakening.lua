--[[
    Script Name    : Spells/Priest/Cleric/DivineAwakening.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 05:01:36
    Script Purpose : 
                   : 
--]]

-- This effect cannot be cast during combat
function precast(Caster)
    return not IsInCombat(Caster)
end

function cast(Caster, Target, ItemID)
if IsPlayer(Target) and HasItem(Target, ItemID) then 
RemoveItem(Target, ItemID)
end
SummonItem(Target, ItemID)
end