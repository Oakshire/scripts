--[[
    Script Name    : Spells/Scout/Predator/Ranger/HawkAttack.lua
    Script Author  : neatz09
    Script Date    : 2020.02.03 06:02:23
    Script Purpose : 
                   : 
--]]

-- Summons a pet attack hawk
function cast(Caster, Target, PetID)
   -- Summons a pet
       Say(Caster, "hate transfer not implemented")
   SummonPet(Caster, PetID)
end

function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end