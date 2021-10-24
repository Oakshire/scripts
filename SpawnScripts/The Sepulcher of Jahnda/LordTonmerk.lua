--[[
    Script Name    : SpawnScripts/The Sepulcher of Jahnda/LordTonmerk.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.22 08:10:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
PlayFlavor(NPC, "", "How dare you enter this holy place and defile the resting place of Jahnda.", "", 1689589577, 4560189, Spawn)  
end
  
   


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTempVariable(Spawn, "turn_tonmerk_friendly") == "true" then
	PlayFlavor(NPC, "", "Once again, I thank you for your assistance.", "", 1689589577, 4560189, Spawn)
	AddTimer(NPC, 3000, "give_item", 1, Spawn)
	end
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
 if GetTempVariable(Spawn, "turn_tonmerk_hostile") == "true" then
 SetTempVariable(Spawn, "turn_tonmerk_hostile", nil)
 end
    end

function respawn(NPC)
	spawn(NPC)
end

    