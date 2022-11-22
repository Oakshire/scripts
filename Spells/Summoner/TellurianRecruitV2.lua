--[[
    Script Name    : Spells/Summoner/TellurianRecruitV2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.22 01:11:59
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, PetID, SpellList, SpawnScript)
   -- Summons a pet
   SummonPet(Caster, PetID)
   Pet=GetPet(Caster)
   SetSpellList(Pet, SpellList)
   SpawnSet(Pet, "spawn_script", SpawnScript)
end

function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end
