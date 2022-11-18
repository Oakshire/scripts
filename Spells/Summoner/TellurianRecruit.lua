--[[
    Script Name    : Spells/Summoner/TellurianRecruit.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.13 03:11:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID, Dif, BaseStr, HPMod, PWMod, Sz)
    
   -- Summons a pet
   SummonPet(Caster, PetID)
   
    setstats(Caster, Target, PetID, Dif, BaseStr, HPMod, PWMod, Sz)
   
  end

function setstats(Caster, Target, PetID, Dif, BaseStr, HPMod, PWMod, Sz)
      -- Set stats
   pet = GetPet(Caster)
   local Level = GetLevel(pet)
   local hp = Level * HPMod
   local pw = Level * PWMod
   local difficulty = Dif
   local newStr = BaseStr + Level
   SpawnSet(pet, "difficulty", difficulty)
   SpawnSet(pet, "hp", hp)
   SpawnSet(pet, "power", pw)
   SpawnSet(pet, "size", Sz)
   SetInfoStructFloat(pet, "str", newStr)
   SetStrBase(pet, newStr)
   
   
 end
    

function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end
