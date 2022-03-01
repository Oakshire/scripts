--[[
	Script Name	: GraystoneCourierDirvel.lua
	Script Purpose	: Graystone Courier Dirvel 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local LATESHIPMENT = 290

function spawn(NPC)
   x = GetX(NPC)
   y = GetY(NPC)
   z = GetZ(NPC)
   speed = 2

   MovementLoopAddLocation(NPC, 893.94, -22.61, -94.81 , speed , 0)
   MovementLoopAddLocation(NPC, 902.19, -20.30, -109.66, speed , 0)
   MovementLoopAddLocation(NPC, 907.59, -20.69, -104.74, speed , 0)
   MovementLoopAddLocation(NPC, 915.84, -20.69, -110.29, speed , 0)
   MovementLoopAddLocation(NPC, 928.15, -20.69, -102.77, speed , 10, "RandomSay")

   MovementLoopAddLocation(NPC, 915.84, -20.69, -110.29, speed , 0)
   MovementLoopAddLocation(NPC, 907.29, -20.69, -103.76, speed , 0)
   MovementLoopAddLocation(NPC, 901.93, -22.30, -109.13, speed , 0)
   MovementLoopAddLocation(NPC, 893.20, -22.59, -137.26, speed , 0)
   MovementLoopAddLocation(NPC, 901.23, -24.98, -141.01, speed , 0)
   MovementLoopAddLocation(NPC, 901.06, -24.93, -148.05, speed , 0)
   MovementLoopAddLocation(NPC, 915.60, -25.09, -151.09, speed , 0)
   MovementLoopAddLocation(NPC, 915.15, -25.11, -156.50, speed , 10, "RandomSay")

   MovementLoopAddLocation(NPC, 914.66, -25.10, -154.91, speed , 0)
   MovementLoopAddLocation(NPC, 902.56, -24.95, -152.20, speed , 0)
   MovementLoopAddLocation(NPC, 893.19, -24.93, -145.26, speed , 10, "RandomSay")

   MovementLoopAddLocation(NPC, 891.17, -24.85, -151.09, speed , 0)
   MovementLoopAddLocation(NPC, 855.96, -24.26, -152.24, speed , 0)
   MovementLoopAddLocation(NPC, 852.41, -23.86, -147.34, speed , 0)
   MovementLoopAddLocation(NPC, 841.00, -22.55, -145.98, speed , 0)
   MovementLoopAddLocation(NPC, 836.97, -24.55, -146.77, speed , 10, "RandomSay")

   MovementLoopAddLocation(NPC, 845.45, -22.55, -145.01, speed , 0)
   MovementLoopAddLocation(NPC, 839.41, -20.93, -142.88, speed , 0)
   MovementLoopAddLocation(NPC, 837.49, -20.94, -128.26, speed , 0)
   MovementLoopAddLocation(NPC, 817.20, -20.93, -108.95, speed , 0)
   MovementLoopAddLocation(NPC, 814.64, -20.93, -94.23 , speed , 10, "RandomSay")

   MovementLoopAddLocation(NPC, 827.58, -20.93, -85.46 , speed , 0)
   MovementLoopAddLocation(NPC, 845.79, -20.90, -97.16 , speed , 0)
   MovementLoopAddLocation(NPC, 838.72, -20.72, -112.23, speed , 0)
   MovementLoopAddLocation(NPC, 844.59, -22.77, -112.91, speed , 0)
   MovementLoopAddLocation(NPC, 846.77, -23.25, -107.80, speed , 0)
   MovementLoopAddLocation(NPC, 886.70, -22.25, -98.83 , speed , 0)
   MovementLoopAddLocation(NPC, 896.03, -22.37, -109.00, speed , 0)
   MovementLoopAddLocation(NPC, 897.60, -22.61, -102.00, speed , 0)
   MovementLoopAddLocation(NPC, 893.94, -22.61, -94.81 , speed , 0)
   MovementLoopAddLocation(NPC, x     ,  y    ,  z     , speed , 10, "RandomSay")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, LATESHIPMENT) and GetQuestStep(Spawn, LATESHIPMENT) == 2 then
		BusyWithQuest(NPC, Spawn)
	else
		Say(NPC, "Please come back later. I am very, very busy.", Spawn)
	end
end

function BusyWithQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/graystone_courier_dirvel/qey_village03/quests/graystone_courier/graystone_courier001.mp3", "", "", 2607292878, 3490339113, Spawn)
	AddConversationOption(conversation, "I have a question about some packages.", "dlg_15_1")
	StartConversation(conversation, NPC, Spawn, "Please come back later. I am very, very busy.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/graystone_courier_dirvel/qey_village03/quests/graystone_courier/graystone_courier002.mp3", "", "", 2049714213, 2524717150, Spawn)
	AddConversationOption(conversation, "Shipment GG4QC doesn't seem to be in the overflow manifest, but it was delivered here.", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "All right, but make it quick, I'm way behind.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/graystone_courier_dirvel/qey_village03/quests/graystone_courier/graystone_courier003.mp3", "", "", 3702985817, 3417442042, Spawn)
	AddConversationOption(conversation, "Who might I talk to?", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "Yeah? I really wouldn't know much about anything that doesn't appear in the overflow manifest. I won't be working outside of overflow for some time now.")
end

function dlg_15_3(NPC, Spawn)
	SetStepComplete(Spawn, LATESHIPMENT, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/graystone_courier_dirvel/qey_village03/quests/graystone_courier/graystone_courier004.mp3", "", "", 492636347, 242481980, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "You'll have to talk to the Shipping Coordinator. He'll know what happened to the shipment. You can find him on the docks.")
end

function RandomSay(NPC)
   choice = math.random(1, 7)

   if choice == 1 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/graystone_courier_dirvel/qey_village03/quest_graystone_courier_blarg_366d0c73.mp3", "I need a break like Lucan needs a vacation.", "", 2879789175, 2017987376)
   elseif choice == 2 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/graystone_courier_dirvel/qey_village03/quest_graystone_courier_blarg_4829cb8c.mp3", "Hey, look at that! Another late package. Who would've thought, huh?", "", 4258041512, 25774857)
   elseif choice == 3 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/graystone_courier_dirvel/qey_village03/quest_graystone_courier_blarg_6b384f5f.mp3", "Wow, this shipment is days old!", "", 3859597953, 2582422318)
   elseif choice == 4 then
      PlayFlavor(NPC, "voiceover/english/tutorial_revamp/graystone_courier_dirvel/qey_village03/quest_graystone_courier_blarg_b8328015.mp3", "Goodness, I don't think I'll ever get done with this work.", "", 1615569956, 1679588116)
   elseif choice == 5 then
      PlayFlavor(Spawn, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "", "", 0, 0)
   elseif choice == 6 then
      Say(NPC, "Why did I ever accept this job?")
   elseif choice == 7 then
      Say(NPC, "There has to be a more efficient way of doing this.")
   else
      Say(NPC, "Noob scatman did this wrong.")
   end
end
