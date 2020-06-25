--[[
    Script Name    : Spells/Commoner/Pets.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 06:11:19
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID)
   -- Summons a pet
   SummonPet(Caster, PetID)
end

function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end
