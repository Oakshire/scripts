--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Ingrid.lua
    Script Author  : Cynnar
    Script Date    : 2019.10.18 06:10:27
    Script Purpose : 
    Notes          : 
	Notes          : 
--]]

require "SpawnScripts/Generic/DialogModule"

local TaskAboardTheFarJourney  = 524
local TempAnimationVar = nil

function spawn(NPC)
	
	if not HasCompletedQuest(Player, TaskAboardTheFarJourney) then
		SetTempVariable(NPC, "TempAnimationVar", "FirstRun")
		AddTimer(NPC, 1500, "WalkToGeredo")
	else
		SetTempVariable(NPC, "TempAnimationVar", nil)
	end
	
end

function hailed(NPC, Spawn)
	
    
	
	if GetTempVariable(NPC, "TempAnimationVar") == nil then
		FaceTarget(NPC, Spawn)
		
		local rand = math.random(0, 2)
		
		if rand == 0 then
			PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_009.mp3", "I hate rats, every time we dock they get on board and eat our supplies.", "grumble", 3636322414, 1973183674, Spawn)
		elseif rand == 1 then
			PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_008.mp3", "Don't you just love the sea?", "sniff", 541733813, 1294072887, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_007.mp3", "Yo ho ho and a bottle of rum!", "smile", 964088856, 3568852318, Spawn)
		end
	end
	
end

function WalkToGeredo(NPC, Spawn)
	
	MoveToLocation(NPC, 5.85, -2.07, -2.94, 2, nil, true)
	MoveToLocation(NPC, 5.77, -2.07, -1.56, 2, nil, false)
	
	AddTimer(NPC, 1500, "EmoteAnimationStart")
	
end

--sends to Geredo to start the flirting
--no action on Ingrid's part yet
function EmoteAnimationStart(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
		AnimationChoice = math.random(0, 10)
		
		local Geredo = GetSpawn(NPC, 270004)
		
		if Geredo ~= nil then
			if GetTempVariable(NPC, "TempAnimationVar") == "FirstRun" then
				AddTimer(Geredo, 2000, "GeredoFlirtingWithIngird")
			else
				if GetTempVariable(NPC, "TempAnimationVar") == "SecondRun" and AnimationChoice <= 5 then
					AddTimer(Geredo, 5000, "GeredoFlirtingWithIngird")
				else
					AddTimer(Geredo, 5000, "FlirtingWithGeredo")
				end
			end
		end
	end
	
end

--sent from Geredo's flex
--sends back to Geredo after Ingrid's response with a chuckle
function FlirtWithIngrid(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "chuckle", 0, 0)
		
		AnimationChoice = math.random(0, 9)
		
		local Geredo = GetSpawn(NPC, 270004)
		
		if Geredo ~= nil then
			if GetTempVariable(NPC, "TempAnimationVar") == "FirstRun" then
				AddTimer(Geredo, 5000, "FlirtingWithGeredo")
			else
				if GetTempVariable(NPC, "TempAnimationVar") == "SecondRun" and AnimationChoice >= 7 then
					AddTimer(Geredo, 5000, "FlirtingWithGeredo")
				else
					EmoteAnimationStart(NPC, Spawn)
				end
			end
		end
	end
	
end

--sent form Geredo's bow
--sends back to Geredo after Ingrid's curtsey
function FlirtWithIngrid_2(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "curtsey", 0, 0)
		
		AnimationChoice = math.random(0, 9)
		
		local Geredo = GetSpawn(NPC, 270004)
		
		if Geredo ~= nil then
			if GetTempVariable(NPC, "TempAnimationVar") == "FirstRun" then
				AddTimer(Geredo, 5000, "FlirtingWithGeredo_2")
			elseif GetTempVariable(NPC, "TempAnimationVar") == "SecondRun" and AnimationChoice >= 7 then
				AddTimer(Geredo, 5000, "FlirtingWithGeredo_2")
			else
				EmoteAnimationStart(NPC, Spawn)
			end
		end
	end
	
end


--sent form Geredo's flirt
--sends to flustered animation next
function FlirtWithIngrid_3(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "giggle", 0, 0)
		AddTimer(NPC, 2500, "Ingridflustered")
	end
	
end

--emotes flustered 
--sends back to Geredo after Ingrid's giggle
function Ingridflustered(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "flustered", 0, 0)
		
		local Geredo = GetSpawn(NPC, 270004)
		
		if Geredo ~= nil then
			AddTimer(Geredo, 3000, "FlirtingWithGeredo_3")
		end
	end
	
end

--sent form Geredo's blowkiss
--sends back to Geredo after Ingrid's no
function FlirtWithIngrid_4(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "no", 0, 0)
		
		local Geredo = GetSpawn(NPC, 270004)
		
		if Geredo ~= nil then
			AddTimer(Geredo, 2000, "FlirtingWithGeredo_4")
		end
	end
	
end

--sent form Geredo's beg
--sends to foot tap animation
function FlirtWithIngrid_5(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "tapfoot", 0, 0)
		
		AddTimer(NPC, 3000, "IngridTapFoot")
	end
	
end

--emotes foot tap
--sends back to Geredo after Ingrid's shrug
function IngridTapFoot(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "shrug", 0, 0)
		
		if GetTempVariable(NPC, "TempAnimationVar") == "FirstRun" then
			SetTempVariable(NPC, "TempAnimationVar", "SecondRun")
		end
		
		AddTimer(NPC, 5000, "EmoteAnimationStart")	
	end
	
end

function CaptainCallingIngrid(NPC, Spawn)
	
	if GetTempVariable(NPC, "TempAnimationVar") == nil then
		MoveToLocation(NPC, 2.47, -2.07, -3.26, 5)
	end
	
	MoveToLocation(NPC, -2.72, -2.00, -8.34, 5, nil, true)
	MoveToLocation(NPC, -2.11, 1.21, -14.69, 5, nil, true)
	MoveToLocation(NPC, 0.78, 1.21, -14.51, 5, nil, true)
	MoveToLocation(NPC, 0.54, 1.18, -11.70, 5, nil, true)
	MoveToLocation(NPC, 1.68, 1.19, -12.13, 5, "FaceCaptainVarlos", false)

end

function FaceCaptainVarlos(NPC, Spawn)
	
	local Varlos = GetSpawn(NPC, 270000)
	
	FaceTarget(NPC, Varlos)
	
	if GetDistance(NPC, Varlos) >= 1.48 then
		AddTimer(Varlos, 500, "TalkToCaptainVarlos", 1, Spawn)
	end
	
end

function SaluteCaptainVarlos(NPC, Spawn)
	
	local Varlos = GetSpawn(NPC, 270000)
	
	PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02/020_deckhand_ingrid_010_1637e047.mp3", "Aye, aye, Captain!", "salute", 1250282628, 237171958, Spawn)
	
	AddTimer(Varlos, 3000, "IngridLeaveCaptain", 1, Spawn)
	AddTimer(NPC, 2000, "ReturnToSpawnPoint", 1, Spawn)
	
end

function ReturnToSpawnPoint(NPC, Spawn)
	
	MoveToLocation(NPC, 0.78, 1.21, -14.51, 5, nil, true)
	MoveToLocation(NPC, -2.11, 1.21, -14.69, 5, nil, true)
	MoveToLocation(NPC, -2.72, -2.00, -8.34, 5, nil, true)
	MoveToLocation(NPC, 3.34, -2.07, -3.97, 5, nil, true)
	MoveToLocation(NPC, 2.35, -2.07, -3.34, 5, nil, false)
	
end

function respawn(NPC)

end
