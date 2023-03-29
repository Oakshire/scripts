--[[
    Script Name    : Spells/Summoner/TellurianRecruit.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.13 03:11:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID, Dif, NotUsed, HPMod, PWMod, Sz, SList)
   Pet = SummonPet(Caster, PetID, 23)
   local Level = GetLevel(Pet)
   local HP = Level * HPMod
   local PW = Level * PWMod
   local CasterInt = GetInt(Caster)
   local StrMod = Dif * 3
   local Str = CasterInt + StrMod
   local NewHP = math.floor(HP)
   local NewPW = math.floor(PW)
   
   SpawnSet(Pet, "difficulty", Dif)
   SpawnSet(Pet, "size", Sz)
   SetSpellList(Pet, SList)
   SetMaxHP(Pet, NewHP)
   ModifyHP(Pet, NewHP)
   SetMaxPower(Pet, NewPW)
   ModifyPower(Pet, NewPW)
   
   --Set Pet Attributes
   SetInfoStructFloat(Pet, "str", Str)
   SetStrBase(Pet, Str)
   SetInfoStructFloat(Pet, "agi", CasterInt)
   SetAgiBase(Pet, CasterInt)
   SetInfoStructFloat(Pet, "sta", CasterInt)
   SetStaBase(Pet, CasterInt)
   SetInfoStructFloat(Pet, "intel", CasterInt)
   SetIntBase(Pet, CasterInt)
   SetInfoStructFloat(Pet, "wis", CasterInt)
   SetWisBase(Pet, CasterInt)
   
 end


function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end
