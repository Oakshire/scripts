--[[
    Script Name    : SpawnScripts/OutpostOverlord/evilgravestonespawner.lua
    Script Author  : Lemmeron
    Script Date    : 2020.08.19 05:08:41
    Script Purpose : To allow  Anius Oakwind (2780031) to spawn when Grave is kicked. 
                   : To control NPC summon of grave to reset 5 minutes after Anius is killed.
--]]

local ZoneID = 278 --outpost of the overlord
local GraveID = 2780153
local GravelocID = 485806
local AniusID = 2780031
local AniuslocID = 398907

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end
			
function casted_on(NPC, Spawn, Message)
	local zone = GetZone(NPC)
	if Message == "kick gravestone" then
		SpawnSet(NPC, "show_command_icon", "0")
                AddTimer(NPC, 2000, "Vanish", 1, Spawn)
		local Anius = SpawnByLocationID(zone, AniuslocID)
		if Anius ~= nil then
			if IsAlive(Anius) then
				AddTimer(Anius, 5000, "AskWhy", 1, Spawn)
			else 
				SpawnByLocationID(ZoneID, AniuslocID)
				AddTimer(Anius, 5000, "AskWhy", 1, Spawn)
			end
		else 
			Say(NPC, "Anius not found")
		end 
	else Say(NPC, "kick gravestone message not working")
	end
end
			
			
	
function Vanish(NPC, Spawn)
        SpawnSet(NPC, "visual_state", "0")
        SpawnSet(NPC, "targetable", "0")
        SpawnSet(NPC, "show_name", "0")
end

function Respawntimer(NPC)
        SpawnSet(NPC, "show_command_icon", "1")
        SpawnSet(NPC, "visual_state", "1")
        SpawnSet(NPC, "targetable", "0")
        SpawnSet(NPC, "show_name", "0")
end