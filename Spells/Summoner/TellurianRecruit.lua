--[[
    Script Name    : Spells/Summoner/TellurianRecruit.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.13 03:11:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID, BaseStr)
    
   -- Summons a pet
   SummonPet(Caster, PetID)
end
    


function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end
