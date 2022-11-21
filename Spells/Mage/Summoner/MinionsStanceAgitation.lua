--[[
    Script Name    : Spells/Mage/Summoner/MinionsStanceAgitation.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.20 03:11:12
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, IntMod, HstMod, DefMod, OffMod, Pet)
    Pet = GetPet(Caster)
    AddSpellBonus(Pet, 4, IntMod) --Intelligence
    AddSpellBonus(Pet, 617, HstMod) -- Attack Speed
    AddSkillBonus(Pet, 609880714, DefMod) -- Defense
    AddSkillBonus(Pet, 540022425, DefMod) -- Parry
    AddSkillBonus(Pet, 418532101, OffMod) -- Slashing
    AddSkillBonus(Pet, 3421494576, OffMod) -- Crushing
    AddSkillBonus(Pet, 3048574950, OffMod) -- Piercing

end


function remove(Caster, Target, Pet)
    Pet = GetPet(Caster)
    RemoveSpellBonus(Pet)
    RemoveSkillBonus(Pet)
   
end



