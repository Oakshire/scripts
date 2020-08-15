--[[
	Script Name		:	SpawnScripts/SourceEvil/eviltotem.lua
	Script Purpose	:	Handles most of the ring event in the instance
	Script Author	:	Jabantiz
	Script Date		:	9/10/2016
	Script Notes	:	
--]]

local VithID = 2540005
local PoisonID = 2540026

local Totem1 = 475343
local Totem2 = 475345
local Totem3 = 1584964
local Totem4 = 1584965

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "destroy totem" then
		SpawnSet(NPC, "show_command_icon", "0")
		SpawnSet(NPC, "display_hand_icon", "0")
		AddTimer(NPC, 1000, "Vanish")
		
		local Vith = GetSpawn(NPC, VithID)
		if Vith ~= nil then
			local choice = math.random(1, 2)
			if choice == 1 then
				PlayFlavor(Vith, "", "Don't touch those!", "", 1689589577, 4560189)
			else
				PlayFlavor(Vith, "", "No, not the totems!  How did you know?", "", 1689589577, 4560189)
			end
			
			local locationID = GetSpawnLocationID(NPC)
			if locationID == Totem1 then
				SetTempVariable(Vith, "Totem1Destroyed", "true")
			elseif locationID == Totem2 then
				SetTempVariable(Vith, "Totem2Destroyed", "true")
			elseif locationID == Totem3 then
				SetTempVariable(Vith, "Totem3Destroyed", "true")
			elseif locationID == Totem4 then
				SetTempVariable(Vith, "Totem4Destroyed", "true")
			end
			
			if GetTempVariable(Vith, "Totem1Destroyed") == "true" and GetTempVariable(Vith, "Totem2Destroyed") == "true" and GetTempVariable(Vith, "Totem3Destroyed") == "true" and GetTempVariable(Vith, "Totem4Destroyed") == "true" then
				PlayFlavor(Vith, "", "Quite a nuisance you are.  My patience is gone, prepare for my wrath!", "", 1689589577, 4560189, Spawn)
				AddTimer(Vith, 10000, "BeginAttack", 1, Spawn)
				local Poison = GetSpawn(NPC, PoisonID)
				if Poison ~= nil then
					SpawnSet(Poison, "visual_state", "0")
				end
			end
		
		end
	end
end

function Vanish(NPC)
	Despawn(NPC)
end

function death(NPC, Spawn)
end