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
    Level = GetLevel(Caster)
    SpellLevel = 12
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    DefBonus = DefMod + LvlBonus
    MitBonus = MitMod + LvlBonus
    
    AddSkillBonus(Pet, 609880714, DefBonus)
    AddSpellBonus(Target, 200, MitBonus)
    AddSpellBonus(Target, 201, MitBonus)
    AddSpellBonus(Target, 202, MitBonus)
    AddSpellBonus(Target, 203, MitBonus)

end

function remove(Caster, Target)
    Pet=GetPet(Caster)
    RemoveSkillBonus(Pet)
    RemoveSpellBonus(Target)

end



