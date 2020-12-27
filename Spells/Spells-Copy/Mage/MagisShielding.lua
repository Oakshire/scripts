--[[
    Script Name    : Spells/Mage/MagisShielding.lua
    Script Author  : Zcoretri
    Script Date    : 2013.07.12 12:28:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StatBonus, SkillBonus, PhysMitBonus, MitBonus)
    AddSpellBonus(Target, 1, StatBonus) -- STA
    AddSkillBonus(Target, GetSkillIDByName("Focus"), SkillBonus)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillBonus)
    AddSpellBonus(Target, 200, PhysMitBonus) -- vs Physical Damage
    AddSpellBonus(Target, 201, MitBonus) -- vs Elemental
    AddSpellBonus(Target, 202, MitBonus) -- vs Noxiuos
    AddSpellBonus(Target, 203, MitBonus) -- vs Arcane
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end


