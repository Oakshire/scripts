--[[
        Script Name        : SpawnScripts/QueensColony/PaulaMarx430849.lua
        Script Author      : Zcoretri
        Script Date        : 2015.07.30
        Script Purpose     : Paula Marx dialog
	Modified Date      : 2017.04.13, 2020.04.03, 2020.09.03 
	Modified by        : EmemJr,premierio015, Rylec
	Notes		   : Added dialog and code for Turning in collections, Added animation and VoiceOvers.
--]]

function spawn(NPC)
    	SetPlayerProximityFunction(NPC, 25, "InRange")
    if GetSpawnLocationID(NPC) == 430849  then
    MovementLoopAddLocation(NPC, 5.65, -6.50, 208.26, 2, 9, "InitialPause")
    MovementLoopAddLocation(NPC, 0.71, -5.83, 198.18, 2, 9, "InitialPause")
    MovementLoopAddLocation(NPC, 10.66, -6.90, 200.55, 2, 9, "InitialPause")
    MovementLoopAddLocation(NPC, 18.65, -6.87, 194.36, 2, 9, "InitialPause")
    MovementLoopAddLocation(NPC, 26.80, -6.86, 187.05, 2, 9, "InitialPause")
    MovementLoopAddLocation(NPC, 31.08, -6.24, 197.45, 2, 9, "InitialPause")
    MovementLoopAddLocation(NPC, 9.11, -6.80, 206.29, 2, 9, "InitialPause")
    -- return to spawn point and hang out.
    MovementLoopAddLocation(NPC, -6.18, -4.96, 218.46, 2, 0)
    MovementLoopAddLocation(NPC, -5.91, -4.96, 218.24, 2, 30)
    elseif GetSpawnLocationID(NPC) == 133770924 then
    MovementLoopAddLocation(NPC, 13.42, -6.9, 206.23, 2, 9)
	MovementLoopAddLocation(NPC, 20.33, -6.85, 205.8, 2, 0)
	MovementLoopAddLocation(NPC, 23.37, -6.78, 201.81, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 25.52, -6.67, 199.61, 2, 0)
	MovementLoopAddLocation(NPC, 28.14, -6.57, 198.44, 2, 0)
	MovementLoopAddLocation(NPC, 29.83, -6.62, 193.47, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 26.07, -6.86, 195.78, 2, 0)
	MovementLoopAddLocation(NPC, 21.63, -6.86, 200.14, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 13.9, -6.83, 209.56, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 12.34, -6.82, 208.34, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 6.84, -6.79, 206.99, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 6.91, -6.87, 197.24, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 10.76, -6.9, 196.81, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 20.31, -6.86, 196.93, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 23.05, -6.77, 204.59, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 26.83, -6.45, 201.6, 2, 0)
	MovementLoopAddLocation(NPC, 28.33, -6.51, 199.07, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 32.06, -6.18, 191.89, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 29.2, -6.86, 191.97, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 1.62, -6.07, 200.9, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, -1.07, -5.74, 201.79, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 3.69, -6.4, 206.07, 2, 0)
	MovementLoopAddLocation(NPC, 7.61, -6.8, 206.52, 2, 9, "InitialPause")
 elseif GetSpawnLocationID(NPC) == 133770926 then
    MovementLoopAddLocation(NPC, 3.64, -6.45, 199.01, 2, 4)
	MovementLoopAddLocation(NPC, 6.62, -6.81, 202.53, 2, 0)
	MovementLoopAddLocation(NPC, 10.55, -6.89, 204.86, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.74, -6.86, 204.71, 2, 0)
	MovementLoopAddLocation(NPC, 22.69, -6.8, 201.84, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.09, -6.86, 200.92, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 11.89, -6.9, 199.77, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 5.76, -6.83, 199.71, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.49, -6.86, 195.18, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 27.11, -6.86, 191.62, 2, 0)
	MovementLoopAddLocation(NPC, 32.16, -6.28, 190.58, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 29.39, -6.84, 191.92, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 13.91, -6.9, 195.83, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 5.89, -6.88, 198.05, 2, 9, "InitialPause")
	elseif GetSpawnLocationID(NPC) == 133770927 then
		MovementLoopAddLocation(NPC, 24.61, -6.86, 189.72, 2, 4)
	MovementLoopAddLocation(NPC, 27.1, -6.86, 188.37, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 20.14, -6.86, 198.61, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.14, -6.86, 201.7, 2, 0)
	MovementLoopAddLocation(NPC, 15.83, -6.86, 202.99, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 10.2, -6.82, 206.04, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 7.12, -6.79, 207.43, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 6.85, -5.69, 190.36, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 5.65, -6.52, 195.48, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 3.52, -6.4, 202.95, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 2.49, -6.17, 206.08, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 0.51, -5.94, 200.45, 2, 0)
	MovementLoopAddLocation(NPC, 0.66, -5.75, 197.3, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 12.62, -6.9, 195.45, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 22.06, -6.86, 193.71, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 31.93, -6.2, 192.05, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 31.13, -6.59, 190.29, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 27.48, -6.77, 182.7, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 17.69, -6.9, 192.91, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 11.02, -6.9, 200, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 4.45, -6.5, 207.14, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 4.68, -6.61, 204.23, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 4.9, -6.63, 200.69, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 9.1, -6.9, 198.35, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 11.82, -6.9, 196.84, 2, 9, "InitialPause")
	elseif GetSpawnLocationID(NPC) == 133770928 then
	MovementLoopAddLocation(NPC, 16.51, -6.87, 207.38, 2, 4)
	MovementLoopAddLocation(NPC, 21.6, -6.85, 201.56, 2, 0)
	MovementLoopAddLocation(NPC, 20.09, -6.88, 191.73, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.14, -6.9, 189.9, 2, 0)
	MovementLoopAddLocation(NPC, 5.39, -5.27, 188.95, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 4.74, -6.57, 197.4, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 13.55, -6.89, 198.66, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, -0.61, -5.53, 209.76, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, -1.95, -5.26, 210.79, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 11.74, -6.87, 193.84, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 16.68, -6.86, 188.22, 2, 0)
	MovementLoopAddLocation(NPC, 19.18, -6.86, 183.95, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.94, -6.9, 188.54, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.6, -6.9, 191.93, 2, 0)
	MovementLoopAddLocation(NPC, 17.01, -6.86, 196.87, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 16.12, -6.86, 200.68, 2, 0)
	elseif GetSpawnLocationID(NPC) == 133770929 then
	MovementLoopAddLocation(NPC, 19.19, -6.86, 199.88, 2, 4)
	MovementLoopAddLocation(NPC, 18.8, -6.86, 202.68, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.76, -6.89, 209.54, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 2.85, -6.24, 206.6, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 0.78, -5.82, 206.45, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, -3.2, -5.01, 205.94, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, -4.35, -4.97, 210.97, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 9.88, -6.81, 209.45, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 6.81, -6.79, 206.88, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 4.84, -6.63, 200.38, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 16.16, -6.85, 208.5, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 20.72, -6.87, 211.66, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 21.83, -6.82, 205.97, 2, 0)
	MovementLoopAddLocation(NPC, 23.65, -6.78, 201.55, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 20.47, -6.88, 186.76, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 19.86, -6.86, 193.32, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 18.24, -6.93, 210.12, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 14.96, -6.86, 208.99, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 10.51, -6.81, 207.52, 2, 0)
	MovementLoopAddLocation(NPC, 2.89, -6.24, 206.63, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, -3.57, -4.97, 205.77, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, -4.16, -4.97, 211.55, 2, 9, "InitialPause")
	MovementLoopAddLocation(NPC, 6.37, -6.37, 210, 2, 9, "InitialPause")
	end
end



function InitialPause(NPC)
    local GatherSpawn = GetSpawn(NPC, 2530080)	-- Get Paula Marx

    math.randomseed(os.time())
    local pause = math.random (1, 4)

            if pause == 1 then
                    AddTimer(NPC, 100, "stop_gathering")  
            else
                    AddTimer(NPC, 1000, "Gather")
            end 
end

function InRange(NPC, Spawn)
end     

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
     

    --if (player has a collection then add a conversation option to hand in a collection
    --end
    local choice = MakeRandomInt(1, 3)
            if choice == 1 then
                    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "hello", 0, 0, Spawn)
                    AddConversationOption(conversation, "What Collections?","WhatCollections")
            elseif choice == 2 then
                    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "hello", 0, 0, Spawn)
                    AddConversationOption(conversation, "What Collections?","WhatCollections")
            else
                    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "hello", 0, 0, Spawn)
                    AddConversationOption(conversation, "What Collections?","WhatCollections")
            end

            if HasCollectionsToHandIn(Spawn) then
                    AddConversationOption(conversation, "I have a collection for you", "TurnIn")
            end
    AddConversationOption(conversation, "Goodbye!")
    StartConversation(conversation, NPC, Spawn, "Hello, traveler!  How I envy you. What I wouldn't give to journey the world as I did in my youth.  Alas, my days of adventuring are long past, but at least I can occupy myself with my various trinkets and collections that I picked up in my travels.")
end



function Gather(NPC)
    local GatherSpawn = GetSpawn(NPC, 2530080)	-- Get Paula Marx
    SpawnSet(NPC, "visual_state", "2809")	-- Start gathering
    AddTimer(NPC, 5000, "Collect")	        -- for 5 seconds, then stop
end

function Collect(NPC)
    local GatherSpawn = GetSpawn(NPC, 2530080)	-- Get Paula Marx
    SpawnSet(NPC, "visual_state", "2810")	-- Start gathering
    AddTimer(NPC, 2000, "stop_gathering")	-- for 5 seconds, then stop
end

function stop_gathering(NPC)
    local GatherSpawn = GetSpawn(NPC, 2530080)	-- get Paula Marx
    SpawnSet(NPC, "visual_state", "0") 	        -- Stop her from gathering
end

function WhatCollections(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "Why, any sort of collection. There's so much out there to find! Just open your eyes and peek under the rocks.  If you find anything interesting, let me have a look. Collecting is the only way I seem to relive my youth!")
end

function TurnIn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	HandInCollections(Spawn)
	SpawnSet(NPC, "visual_state", 0)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, bye!")
	StartConversation(conversation, NPC, Spawn, "This is a magnificent find!  Here, take this for all your hard work.")
end