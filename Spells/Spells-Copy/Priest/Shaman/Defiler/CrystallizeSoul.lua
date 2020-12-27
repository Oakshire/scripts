--[[
    Script Name    : Spells/Priest/Shaman/Defiler/CrystallizeSoul.lua
    Script Author  : neatz09
    Script Date    : 2020.01.27 09:01:54
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- On a kill this spell has a 30% chance to cast Crystallize Soul on caster.  
--     Summon 1 Distilled Soul (Apprentice)

function cast(Caster, Target, Type, ItemID)
AddProc(Target, 14, 30)
end

function proc(Caster, Target, Type, ItemID)
if HasItem(Caster, ItemID, 1) then 
RemoveItem(Caster, ItemID)
end
SummonItem(Caster, ItemID, 1)
end


function remove(Caster, Target)
RemoveProc(Target)
end
