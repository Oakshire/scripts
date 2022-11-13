--[[
    Script Name    : Spells/Summoner/TellurianRecruit_App1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.12 09:11:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID)
   -- Summons a pet
   SummonPet(Caster, PetID)
   
   -- Basic fomula for hp/power
    pet = GetPet(Caster)
    local Level = GetLevel(pet)
    local power = Level *10 + Level*2
    local hp = Level*10 + Level*2
    SpawnSet(pet, "hp", hp)
    SpawnSet(pet, "power", power)
    
end

function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end
--]]
 

