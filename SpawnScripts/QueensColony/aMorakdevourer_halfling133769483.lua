--[[
	Script Name	: SpawnScripts/QueensColony/aMorakdevourer_halfling.lua
	Script Purpose	: a Morak devourer
	Script Author	: Scatman, Playflavor by premierio015
	Script Date	: 2009.05.14
	Script Notes	: 
--]]

function spawn(NPC)
  
    SpawnSet(NPC, "level", "3")
    SpawnSet(NPC, "difficulty", "2")
 
  

      
        EmoteLoop(NPC)

	if GetSpawnLocationID(NPC) == 133769483 then
		local Halfling = GetSpawnByLocationID(GetZone(NPC), 1584880)
		if Halfling == nil then
			SpawnByLocationID(GetZone(NPC), 1584880)
		else
			SpawnSet(Halfling, "show_command_icon", 0)
		end
		
		local RescuedHalfling = GetSpawnByLocationID(GetZone(NPC), 1584992)
		if RescuedHalfling ~= nil then
			Say(Halfling, "Ahhhhhh! I must escape!")
			Despawn(RescuedHalfling)
		end
	end
end

function respawn(NPC)
	spawn(NPC)
end

function group_dead(NPC, Spawn)
	local Halfling = GetSpawnByLocationID(GetZone(NPC), 1584880)
	if Halfling ~= nil then
		SpawnSet(Halfling, "show_command_icon", 1)
	end
end

function EmoteLoop (NPC)
        local timer = math.random(2500,5000)
        PlayAnimation(NPC, 10783)
        AddTimer(NPC, timer, "EmoteLoop")
end