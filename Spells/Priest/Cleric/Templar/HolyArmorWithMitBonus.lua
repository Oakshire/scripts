--[[
    Script Name    : Spells/Priest/Cleric/Templar/HolyArmorWithMitBonus.lua
    Script Author  : neatz09
    Script Date    : 2020.10.26 11:10:15
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of group members (AE) by 287.5
--     If fighter
-- Increases Mitigation of group members (AE) vs physical damage by 486
--     If not fighter
-- Increases the health of fighters in the group by 3.24 for each point of stamina

function cast(Caster, Target, MitAmt, StaAmt)
HealthMod = GetStaBase(Target) * StaAmt    
AddSpellBonus(Target, 200, MitAmt, 11, 21, 31)
    AddSpellBonus(Target, 500, HealthMod, 1)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end