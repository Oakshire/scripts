--[[
	Script Name	: SpawnScripts/Sprawl/GatekeeperMalren.lua
	Script Purpose	: Gatekeeper Malren <Freeport Militia>
	Script Author	: Scatman
	Script Date	: 2009.07.26
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if GetLevel(Spawn) < 12 then
		local choice = math.random(1,2)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gatekeeper_malren/fprt_adv03_sprawl/quest/warning_malren_warning_6607638a.mp3", "Beyond this gate lies a warzone! Beware!", "brandish", 3114668751, 2889688375, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gatekeeper_malren/fprt_adv03_sprawl/quest/warning_malren_warning_2d5ced43.mp3", "Heed my warning! Beware the danger ahead, adventurer!", "no", 1710591431, 2684761663, Spawn)
		end
	end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetLevel(Spawn) < 12 then
		AddConversationOption(conversation, "What do you mean?", "WhatDoYouMean")
		AddConversationOption(conversation, "Thanks for the warning.")
		StartConversation(conversation, NPC, Spawn, "Be wary, adventurer. Great danger lies beyond this gate!")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gatekeeper_malora/fprt_adv03_sprawl/quests/protector_malora004.mp3", "", "", 1115741315, 3103270743, Spawn)
		AddConversationOption(conversation, "Be well, Malren.")
		StartConversation(conversation, NPC, Spawn, "It is my duty to ensure the safety of less-experienced adventurers. Someone of your skill need not worry about traveling beyond this gate.")
	end
end

function WhatDoYouMean(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Where should I go once I get to a district?", "OnceGetDestrict")
	AddConversationOption(conversation, "I will do so.")
	StartConversation(conversation, NPC, Spawn, "This gate leads to the Freeport Ruins which is currently under attack. If you seek to travel there, I highly recommend you go back through Big Bend or Scale Yard instead.")
end

function OnceGetDestrict(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Why is travel beyond this gate so dangerous?", "WhySoDangerous")
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Make your way to the docks in either district, then use the bell to summon transport outside of freeport. You can select the Ruins as your destination.")
end

function WhySoDangerous(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thanks for the advice, Malren.")
	StartConversation(conversation, NPC, Spawn, "Traveling through this gate isn't very safe unless you bring a group of friends with you. Some very powerful orcs are clashing with the Freeport Militia just beyond it. Entering the Ruins by way of the docks is a much wiser approach.")
end
