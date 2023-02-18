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
   local StrMod = Dif * 3
   local str = CasterInt + StrMod
  
   SpawnSet(pet, "difficulty", difficulty)
   SpawnSet(pet, "size", Sz)
   SetSpellList(pet, SList)
   
   --SpawnSet(pet, "hp", hp)
   --SpawnSet(pet, "power", pw)
   
   local NewHP = math.floor(hp)
   SetMaxHP(pet, NewHP)
   ModifyHP(pet, NewHP)

   
   local NewPW = math.floor(pw)
   SetMaxPower(pet, NewPW)
   ModifyPower(pet, NewPW)

   
   --Set Pet Attributes
   SetInfoStructFloat(pet, "str", str)
   SetStrBase(pet, str)
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
