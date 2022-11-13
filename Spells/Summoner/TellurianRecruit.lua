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
   
   -- Basic fomula for hp/power
    pet = GetPet(Caster)
    local Level = GetLevel(pet)
    local power = Level *10 + Level*2
    local hp = Level*10 + Level*2
    local newStr = BaseStr + Level
    SpawnSet(pet, "hp", hp)
    SpawnSet(pet, "power", power)
    SetStrBase(pet, newStr)
    SetInfoStructUInt(pet, "Str" , newStr)
    
    
end
    


function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end
