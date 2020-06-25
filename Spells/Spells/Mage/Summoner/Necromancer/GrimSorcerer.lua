--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/GrimSorcerer.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 08:08:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID, MaxLevel)
   -- Summons a pet
   SummonPet(Caster, PetID, MaxLevel)
end

function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end


