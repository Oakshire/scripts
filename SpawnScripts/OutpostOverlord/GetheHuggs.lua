--[[
	Script Name: GetheHuggs.lua
	Script Purpose: Collections for evil island
	Script Author: John Adams
	Script Date: 2008.09.02
	Script Notes: Auto-Generated Conversation from PacketParser Data
--]]

local GetheHuggs = 2780039

function spawn(NPC)
    	SetPlayerProximityFunction(NPC, 25, "InRange")
	MovementLoopAddLocation(NPC, 5.65, -6.50, 208.26, 2, 10, "Gather")

	MovementLoopAddLocation(NPC, 0.71, -5.83, 198.18, 2, 10, "Gather")

	MovementLoopAddLocation(NPC, 10.66, -6.90, 200.55, 2, 10, "Gather")

	MovementLoopAddLocation(NPC, 18.65, -6.87, 194.36, 2, 10, "Gather")

	MovementLoopAddLocation(NPC, 26.80, -6.86, 187.05, 2, 10, "Gather")

	MovementLoopAddLocation(NPC, 31.08, -6.24, 197.45, 2, 10, "Gather")

	MovementLoopAddLocation(NPC, 9.11, -6.80, 206.29, 2, 10, "Gather")

	-- return to spawn point and hang out.
	MovementLoopAddLocation(NPC, -6.18, -4.96, 218.46, 2, 0)
	MovementLoopAddLocation(NPC, -5.91, -4.96, 218.24, 2, 30)
end

function InRange(NPC, Spawn)
 if HasCollectionsToHandIn(Spawn) then
  SpawnSet(NPC, "visual_state", 6674 ) 
  end
end     

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
       local choice = MakeRandomInt(1, 3)
    if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
	 AddConversationOption(conversation, "What Collections?","WhatCollections")
	 elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
	 AddConversationOption(conversation, "What Collections?","WhatCollections")
	elseif choice == 3 then
   PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "What Collections?","WhatCollections")
   end
  if HasCollectionsToHandIn(Spawn) then
     AddConversationOption(conversation, "I have a collection for you.", "dlg_8_1")
     end
	AddConversationOption(conversation, "I don't have any at the moment.")
	StartConversation(conversation, NPC, Spawn, "Hello there!  If you have any collections that you've completed, I can take them off your hands and reward you for your time.  I'm just crazy for collections!")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		HandInCollections(Spawn)
		SpawnSet(NPC, "visual_state", 0) 
	conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, bye!")
	StartConversation(conversation, NPC, Spawn, "This is a magnificent find! Here, take this for all your hard work.")
end

function WhatCollections(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "Why, any sort of collection. There's so much out there to find! Just open your eyes and peek under the rocks.  If you find anything interesting, let me have a look. Collecting is the only way I seem to relive my youth!")
end

function Gather(NPC)
	GatherSpawn = GetSpawn(NPC, GetheHuggs )		-- Get Gethe Huggs
	SpawnSet(GatherSpawn, "visual_state", "2809")	-- Start gathering
	AddTimer(NPC, 5000, "stop_gathering")		-- for 5 seconds, then stop
end

function stop_gathering(NPC) 
	GatherSpawn = GetSpawn(NPC, GetheHuggs )		-- get Gethe Huggs
	SpawnSet(GatherSpawn, "visual_state", "0") 	-- Stop her from gathering
end


function respawn(NPC)
 spawn(NPC)
end
