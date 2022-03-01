--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/PersonaeReflection.lua
    Script Author  : neatz09
    Script Date    : 2019.10.19 08:10:51
    Script Purpose : 
                   : 
--]]
-- Summons a pet Illusion Ally
function cast(Caster, Target, PetID, MaxLevel)
   -- Summons a pet
local pet = SummonPet(Caster, PetID, MaxLevel)
if pet ~= nil then
    CopySpawnAppearance(pet, Caster)
end
end

function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end


 