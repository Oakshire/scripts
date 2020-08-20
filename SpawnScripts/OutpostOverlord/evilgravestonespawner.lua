--[[
    Script Name    : SpawnScripts/OutpostOverlord/evilgravestonespawner.lua
    Script Author  : Lemmeron
    Script Date    : 2020.08.19 05:08:41
    Script Purpose : To allow  Anius Oakwind (2780031) to spawn when Grave is kicked. 
                   : To control respawn of grave for 5 minutes after Anius is killed.
--]]

local zoneID = 278 --outpost of the overlord
local GraveID = 2780153
local GravelocID = 485806
local AniusID = 2780031
local AniuslocID =398907

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

			
function casted_on(NPC, Spawn, Message)
	if Message == "destroy totem" then --kick gravestone
		SpawnSet(NPC, "show_command_icon", "0")
		SpawnSet(NPC, "display_hand_icon", "0")
		-- AddTimer(NPC, 1000, "Vanish")		
		local Anius = GetSpawn(NPC, AniusID)
		if Anius ~= nil then
			if IsAlive(Anius) then
				AddTimer(Anius, 2000, "AskWhy", 1, Spawn)
Say(NPC, "Alive", Spawn)
			else 
				SpawnByLocationID(AniuslocID)
				AddTimer(Anius, 2000, "AskWhy", 1, Spawn)
Say(NPC, "wasnt alive", Spawn)
			end
		else 
			Say(NPC, "Anius not found")
		end 
	else Say(NPC, "kick message not working")
	end
end
			
			
	
function Vanish(NPC)
	Despawn(NPC)
end

function Spawntimer(NPC, Spawn)
	respawn(NPC)
	local AniusName = GetName(Spawn)
	Say(NPC, "Finally"..AniusName.."is at rest again")
end