--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/NajenasEssenceSummoning.lua
    Script Author  : Neatz09
    Script Date    : 10/16/19
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target, ItemID)
    -- Summon 1 Shard of Esssence (Apprentice)
    if IsPlayer(Target) and HasItem(Target, ItemID) then 
RemoveItem(Target, ItemID)
end
SummonItem(Target, ItemID, 1)
end