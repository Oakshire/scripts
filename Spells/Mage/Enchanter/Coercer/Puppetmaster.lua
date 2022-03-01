function cast(Caster, Target, PetID)
    local x = GetX(Caster)
    local y = GetY(Caster)
    local z = GetZ(Caster)
local count = 0;
while (count < 4) do
    local pet = SummonDumbFirePet(Caster, Target, PetID, x, y, z)
    if pet ~= nil then
  CopySpawnAppearance(pet, Target)
        SpawnSet(pet, "size", "6")
    end
    count = count + 1
end
end