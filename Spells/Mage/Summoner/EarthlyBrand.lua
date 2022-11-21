--[[
    Script Name    : Spells/Mage/Summoner/EarthlyBrand.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.21 04:11:12
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases Defense of group members' pets (AE) by 2.0
*Increases Mitigation of group members (AE) vs all damage by 38

--]]

function cast(Caster, Target, DefMod, MitMod)
    Pet=GetPet(Caster)
    AddSkillBonus(Pet, 609880714, DefMod)
    AddSpellBonus(Target, 200, MitMod)
    AddSpellBonus(Target, 201, MitMod)
    AddSpellBonus(Target, 202, MitMod)
    AddSpellBonus(Target, 203, MitMod)

end

function remove(Caster, Target)
    Pet=GetPet(Caster)
    RemoveSkillBonus(Pet)
    RemoveSpellBonus(Target)

end



