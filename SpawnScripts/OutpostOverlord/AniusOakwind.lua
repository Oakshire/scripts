--[[
	Script Name	: SpawnScripts/OutpostoftheOverlord/AniusOakwind.lua
	Script Purpose	: Anius Oakwind 
	Script Author	: Lemmeron (Parser script inserted by Cynnar 2018.10.14)
	Script Date	: 19.08.2020
	Script Notes	: NPC Spawn called with function "AskWhy" by Evil Grave after player kicks it (2780153) 
--]]

local zoneID = 278 --outpost of the overlord
local GraveID = 2780153
local GravelocID = 485806
local AniusID = 2780031
local AniuslocID =398907


function respawn(NPC)
	spawn(NPC)
end


function AskWhy(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Why would you desicrate my gravestone ?! Have you no respect for the dead? Now face my wrath!", "", 1689589577, 4560189, Spawn)
	AddTimer(NPC, 5000, "Wrath", 1, Spawn)
end
	
function Wrath (NPC, Spawn)
	if IsAlive(Spawn) then
		SpawnSet(NPC, "targetable", 1)
		SpawnSet(NPC, "visual_state", 0)
		SpawnSet(NPC, "show_level", 1)
		SpawnSet(NPC, "faction", 1)
		SpawnSet(NPC, "attackable", 1)
		Attack(NPC, Spawn)
	
	else
		Say(NPC, "It seems you will join me in death")
	end
end

 function death(NPC, Spawn)
	 local Grave = GetSpawn(NPC, GraveID)
	if Grave ~= nil then
		AddTimer(Grave, 3000 "Spawntimer", 1, NPC) -- respawn tier for the grave and thus Anius default 300000
	else 
		Say(NPC, "My local Grave is not found", Spawn)
	end
 end
	


