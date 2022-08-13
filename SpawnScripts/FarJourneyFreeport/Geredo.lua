--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Geredo.lua
    Script Author  : Cynnar
    Script Date    : 2019.08.04 12:08:08
    Script Purpose : 
    Notes          : Geredo is suppose to blow a kiss to Ingrid. PlayFlavor(NPC, "", "", "blowkiss", 0, 0) is not working
	Notes          : Replaced with PlayFlavor(NPC, "", "", "scheme", 0, 0) for now
--]]

local TempAnimationPos = nil

function spawn(NPC)
	
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_002.mp3", "Thinking I should design a new mechanical boat. It would be perfect! Yes, perfect indeed!", "ponder", 2630458163, 1309095480, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_001.mp3", "Do you happen to have any mechanical leg extenders? I want to see the water.", "agree", 2902186099, 1357276764, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_003.mp3", "Owie, my elbow is sore!  It always gets this way when I am near water.  I could have helped rescue Anikra and Valik, but I wasn't able to swim.  Thanks for helping me.", "grumble", 2653823570, 1351171804, Spawn, 0)
	end
end

-- sent from Ingrid to start the flirting
-- sends back to Ingrid after Geredo starts flirting with a flex
function GeredoFlirtingWithIngird(NPC, Spawn)
	
	local Ingrid = GetSpawn(NPC, 270001)
	
	if GetTempVariable(Ingrid, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "flex", 0, 0)
	end

	if Ingrid ~= nil then
		AddTimer(Ingrid, 2000, "FlirtWithIngrid")
	end
	
	--Say(NPC, "TempAnimationVar = " .. GetTempVariable(Ingrid, "TempAnimationVar") .. "!")
	--SetTempVariable(Ingrid, "TempAnimationVar", "SecondRun")
end


-- sent from Ingrid's chuckle
-- sends back to Ingrid after Geredo responds with a bow
function FlirtingWithGeredo(NPC, Spawn)
	
	local Ingrid = GetSpawn(NPC, 270001)
	
	if GetTempVariable(Ingrid, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "bow", 0, 0)
	end
	
	if Ingrid ~= nil then
		AddTimer(Ingrid, 3000, "FlirtWithIngrid_2")
	end
end

-- sent from Ingrid's curtsey
-- sends back to Ingrid afer Geredo responds with a flirt
function FlirtingWithGeredo_2(NPC, Spawn)
	
	local Ingrid = GetSpawn(NPC, 270001)
	
	if GetTempVariable(Ingrid, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "flirt", 0, 0)
	end
	
	if Ingrid ~= nil then
		AddTimer(Ingrid, 2500, "FlirtWithIngrid_3")
	end
end

-- sent from Ingrid's flustered
-- sends back to Ingrid afer Geredo responds with a blowkiss
function FlirtingWithGeredo_3(NPC, Spawn)
	
	local Ingrid = GetSpawn(NPC, 270001)
	
	if GetTempVariable(Ingrid, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "scheme", 0, 0)
		--PlayAnimation(NPC, 11762)
	end
	
	if Ingrid ~= nil then
		AddTimer(Ingrid, 2000, "FlirtWithIngrid_4")
	end
end

-- sent from Ingrid's no
-- sends back to Ingrid afer Geredo responds with beg
function FlirtingWithGeredo_4(NPC, Spawn)
	
	local Ingrid = GetSpawn(NPC, 270001)
	
	if GetTempVariable(Ingrid, "TempAnimationVar") ~= nil then
		PlayFlavor(NPC, "", "", "beg", 0, 0)
	end
	
	if Ingrid ~= nil then
		AddTimer(Ingrid, 1500, "FlirtWithIngrid_5")
	end
end

function CaptainCallingIngrid(NPC, Spawn)
	-- Testing to set animation during the captain calling ingrid
	--PlayFlavor(NPC, "", "", "blowkiss", 0, 0)
	PlayAnimation(NPC, 12246)
end


function respawn(NPC)

end

