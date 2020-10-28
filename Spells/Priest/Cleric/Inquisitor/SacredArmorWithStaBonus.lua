--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/SacredArmorWithStaBonus.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 10:10:26
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of group members (AE) vs physical damage by 1070
-- Increases the health of group members by 3.24 for each point of stamina
-- Increases the health of fighters in the group by 3.24 for each point of stamina
function cast(Caster, Target, MitAmt, StaAmt)
HealthMod = GetStaBase(Target) * StaAmt    
AddSpellBonus(Target, 200, MitAmt, 11, 21, 31)
    AddSpellBonus(Target, 500, HealthMod, 1)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end