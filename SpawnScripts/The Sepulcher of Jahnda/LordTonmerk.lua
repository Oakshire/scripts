--[[
    Script Name    : SpawnScripts/The Sepulcher of Jahnda/LordTonmerk.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.22 08:10:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Once again, I thank you for your assistance.", "", 1689589577, 4560189, Spawn)
	AddTimer(NPC, 3000, "give_item", 1, Spawn)
end

function give_item(NPC, Spawn)
if not HasItem(Spawn, 52690) then
SummonItem(Spawn, 52690, 1)
PlayAnimation(NPC, 1559)
	AddTimer(NPC, 4000, "despawn", 1, Spawn)
end
  end

function despawn(NPC, Spawn)
Despawn(NPC)
end

function death(NPC, Spawn)
 AddLootItem(NPC, 52697, 1) 
 end

function respawn(NPC)
	spawn(NPC)
end