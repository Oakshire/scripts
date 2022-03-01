--[[
	Script Name	: SpawnScripts/ForestRuins/OutlanderVaughn.lua
	Script Purpose	: Outlander Vaughn 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Completely rebuilt txt flow, emotes, constructed quests, movements, and added voiceovers - 2022.02.21 Dorbin
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 5483)
	ProvidesQuest(NPC, 5484)
    waypoints(NPC)	
end


function waypoints(NPC) --Movements based on CLASSIC
    MovementLoopAddLocation(NPC, 1082.67, -18.71, -796.82, 2, 0)
	MovementLoopAddLocation(NPC, 1083.38, -18.77, -797.24, 2, 1)
	MovementLoopAddLocation(NPC, 1083.38, -18.77, -797.24, 2,math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1083.38, -18.77, -797.24, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1084.18, -18.78, -797.06, 2, 0)
	MovementLoopAddLocation(NPC, 1129.75, -19.14, -783.28, 2, 0)
	MovementLoopAddLocation(NPC, 1162.53, -22.27, -788.62, 2, 0)
	MovementLoopAddLocation(NPC, 1179.99, -23.3, -769.21, 2, 0)
	MovementLoopAddLocation(NPC, 1180.34, -23.3, -768.48, 2, 3)
	MovementLoopAddLocation(NPC, 1180.34, -23.3, -768.48, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1180.34, -23.3, -768.48, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1179.68, -23.3, -769.3, 2, 0)
	MovementLoopAddLocation(NPC, 1157.33, -21.98, -793.57, 2, 0)
	MovementLoopAddLocation(NPC, 1139.75, -22.25, -814.96, 2, 0)
	MovementLoopAddLocation(NPC, 1124.16, -23.29, -838.42, 2, 0)
	MovementLoopAddLocation(NPC, 1123.11, -23.28, -838.44, 2, 3)
	MovementLoopAddLocation(NPC, 1123.11, -23.28, -838.44, 2, math.random(10, 15),"Action")	
	MovementLoopAddLocation(NPC, 1123.11, -23.28, -838.44, 2, math.random(10, 15),"Action")	
	MovementLoopAddLocation(NPC, 1122.45, -23.23, -837.97, 2, 0)
	MovementLoopAddLocation(NPC, 1095.11, -22.74, -829.8, 2, 0)
	MovementLoopAddLocation(NPC, 1076.66, -20.76, -815.47, 2, 0)
	MovementLoopAddLocation(NPC, 1053.81, -19.21, -813.83, 2, 0)
	MovementLoopAddLocation(NPC, 1027.03, -20.51, -822.63, 2, 0)
	MovementLoopAddLocation(NPC, 1016.75, -21.42, -834.86, 2, 3)
	MovementLoopAddLocation(NPC, 1016.75, -21.42, -834.86, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1016.75, -21.42, -834.86, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1016.18, -21.41, -834.67, 2, 0)
	MovementLoopAddLocation(NPC, 1016.5, -21.33, -833.72, 2, 0)
	MovementLoopAddLocation(NPC, 1039.08, -20.89, -814.82, 2, 0)
	MovementLoopAddLocation(NPC, 1070.31, -19.54, -813.86, 2, 0)
	MovementLoopAddLocation(NPC, 1076.91, -20.28, -811.51, 2, 0)
 end
 
function Action(NPC,Spawn)
            local choice = math.random(1,4)
            
                if choice == 1 then
	            PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
	            
	            elseif choice == 2 then
	            PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	            
                elseif choice == 3 then
	            PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	            
	            elseif choice == 4 then
	            PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
            end	  
    end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
if not HasCompletedQuest(Spawn, 5483) and not HasQuest(Spawn, 5483) then
	PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota.mp3", "", "facepalm", 2613853514, 75460760, Spawn)

	    if GetLevel(Spawn)>=6 then
		AddConversationOption(conversation, "What is it you need?", "dlg_4_1")
		end
		AddConversationOption(conversation, "No time for charity. ")
		StartConversation(conversation, NPC, Spawn, "Am I ever in a bind! Will you please help me?")
elseif HasQuest(Spawn, 5483) then
        PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota001.mp3", "", "", 2350706866, 1692101884, Spawn)
		if GetQuestStep (Spawn,5483)== 5 then
		AddConversationOption(conversation, "Here are your things you were looking for.", "HandIn")
        end		    
		AddConversationOption(conversation, "I'm working on it.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "I thought you said you'd  help me!  Do what you can, okay?")


elseif  HasCompletedQuest(Spawn, 5483) and not HasCompletedQuest(Spawn, 5484) then
    	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota003.mp3", "", "thank", 3067693779, 1933175006, Spawn)
		AddConversationOption(conversation, "What else do you need?","Letter")
		AddConversationOption(conversation, "I don't have the time, sorry. ")
	StartConversation(conversation, NPC, Spawn, "Thank you so very much for finding my dear possessions! Can you help me with one more small favor?")
	
else
	PlayFlavor(NPC, "", "Be careful around these ruins. The nights bring out some of the magic in this place.", "hello", 0, 0, Spawn)

    end
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota000.mp3", "", "sigh", 2228081863, 624137908, Spawn)
	AddConversationOption(conversation, "I'll see what I can do.", "StuffStart")
	AddConversationOption(conversation, "Sorry. This isn't my problem.")
	StartConversation(conversation, NPC, Spawn, "Those wretched Blackfurl deckhands stole my satchel!  It had everything that was important to me. Please, recover my satchel!")
end

function Letter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota004.mp3", "", "", 3189315384, 2954944318, Spawn)
	AddConversationOption(conversation, "Yeah sure I'll do it.", "dlg_4_3")
	AddConversationOption(conversation, "I'll pass. Good luck.")	
	StartConversation(conversation, NPC, Spawn, "I need you to take this letter to Hunter Forestdeep. You'll find him in the Willow Wood village.")
end

function HandIn (NPC,Spawn)
		conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota002.mp3", "", "", 1507419454, 3520863692, Spawn)
		AddConversationOption(conversation, "You could thank me by paying me.", "Reward1")
		StartConversation(conversation, NPC, Spawn, "What's that you have? You found my stuff!  That's fantastic!  I can't thank you enough.")
	end

function StuffStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, 5483)
end

function dlg_4_3 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, 5484)
end

function Reward1(NPC, Spawn)
    	SetStepComplete(Spawn, 5483, 5)
    	conversation = CreateConversation()	
    PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota003.mp3", "", "thank", 3067693779, 1933175006, Spawn)
	AddConversationOption(conversation, "What else do you need?","Letter")
	AddConversationOption(conversation, "I don't have the time, sorry. ")
	StartConversation(conversation, NPC, Spawn, "Thank you so very much for finding my dear possessions! Can you help me with one more small favor?")
    end

