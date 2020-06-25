--[[
	Script Name	: SpawnScripts/Graystone/AssistantTillheel.lua
	Script Purpose	: Assistant Tillheel <Alchemist>
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "RandomTalk", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomTalk(NPC, Spawn, false)
end

function RandomTalk(NPC, Spawn, Option)
	local choice = 0
	if Option == nil then
		choice = math.random(1, 100)
	end
	
	if choice < 25 then
		FaceTarget(NPC, Spawn)
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_a8ed74c7.mp3", "There are no refunds for caster error at this shop! Oh ... hello you're not here about a refund.", "no", 2075394375, 630243730, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_ec533e4c.mp3", "Are you wounded?  I just made up a fresh batch of healing potions an hour ago.", "hello", 2688473405, 4089604259, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "", "I'm sorry, afraid I'm unable to help you now.  That dolt Mr. Clark mixed up the formulas again!  Now... Let's see...  Which one is the super corrosive acid?", "", 0, 0, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_efd903ba.mp3", "Hello, adventurer! Are you looking for a specific potion or ingredient?", "agree", 1413906559, 1372883990, Spawn)
		end
	end
end

function LeaveRange(NPC, Spawn)
end