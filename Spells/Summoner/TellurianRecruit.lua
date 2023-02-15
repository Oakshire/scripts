--[[
    Script Name    : Spells/Summoner/TellurianRecruit.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.13 03:11:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID, Dif, NotUsed, HPMod, PWMod, Sz, SList)
   pet = SummonPet(Caster, PetID)
   local Level = GetLevel(pet)
   local hp = Level * HPMod
   local pw = Level * PWMod
   local difficulty = Dif
   local CasterInt = GetInt(Caster)
   SpawnSet(pet, "difficulty", difficulty)
   SpawnSet(pet, "hp", hp)
   SpawnSet(pet, "power", pw)
   SpawnSet(pet, "size", Sz)
   SetSpellList(pet, SList)
   
   --Set Pet Attributes
   SetInfoStructFloat(pet, "str", CasterInt)
   SetStrBase(pet, CasterInt)
   SetInfoStructFloat(pet, "agi", CasterInt)
   SetAgiBase(pet, CasterInt)
   SetInfoStructFloat(pet, "sta", CasterInt)
   SetStaBase(pet, CasterInt)
   SetInfoStructFloat(pet, "intel", CasterInt)
   SetIntBase(pet, CasterInt)
   SetInfoStructFloat(pet, "wis", CasterInt)
   SetWisBase(pet, CasterInt)

 end


function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end
