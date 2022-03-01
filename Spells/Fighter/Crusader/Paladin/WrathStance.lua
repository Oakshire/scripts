--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/WrathStance.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.05 06:12:58 updated 11/9/2019 - Neatz09
    Script Purpose : 
                   : 
--]]

--caster may not benefit from any stoneskin, death prevent, or 100% avoidance abilities while under this effect and for 5 seconds after the effect has been removed.
--
function cast(Caster, Target, statBonus, skillReduction, skillBonus)
    -- Increases STR of caster by 11.9
    AddSpellBonus(Target, 0, statBonus)
    -- Decreases Defense of caster by 1.8
        AddSkillBonus(Target, GetSkillIDByName("Defense"), skillReduction)
 -- Increases Disruption, Slashing, Piercing and Crushing of caster by 2.4
     AddSkillBonus(Target, GetSkillIDByName("Slashing"), skillBonus)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), skillBonus)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), skillBonus)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), skillBonus)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), skillBonus)
-- Potency    
AddSpellBonus(Target, 659, 20)
    Say(Caster, "Missing the Beneficial immunity features.")
    Say(Caster, "Missing Potency of caster for level 93 t10 and t11")

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
