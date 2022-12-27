--[[
    Script Name    : SpawnScripts/Classic_forest/OutlanderVaughn.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.11 01:10:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	ProvidesQuest(NPC, 5759)
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
	MovementLoopAddLocation(NPC, 1016.68, -21.22, -832.59, 2, 0)
	MovementLoopAddLocation(NPC, 1014.9, -20.87, -826.47, 2, 0)
	MovementLoopAddLocation(NPC, 999.53, -21.47, -824.3, 2, 0)
	MovementLoopAddLocation(NPC, 977.7, -21.95, -818.03, 2, 0)
	MovementLoopAddLocation(NPC, 970.4, -21.52, -811.2, 2, 0)
	MovementLoopAddLocation(NPC, 967.34, -21.27, -796.32, 2, 0)
	MovementLoopAddLocation(NPC, 959.96, -20.73, -783.38, 2, 0)
	MovementLoopAddLocation(NPC, 966.37, -22.19, -735.91, 2, 0)
	MovementLoopAddLocation(NPC, 964.91, -22.24, -722.54, 2, 0)
	MovementLoopAddLocation(NPC, 960.49, -21.94, -705.28, 2, 0)
	MovementLoopAddLocation(NPC, 947.44, -21.7, -663.54, 2, 0)
	MovementLoopAddLocation(NPC, 948.23, -20.68, -651.69, 2, 0)
	MovementLoopAddLocation(NPC, 949.26, -20.39, -645.4, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 949.26, -20.39, -645.4, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 949.26, -20.39, -645.4, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 950.46, -20.12, -643.2, 2, 0)
	MovementLoopAddLocation(NPC, 952.31, -19.67, -643.37, 2, 0)
	MovementLoopAddLocation(NPC, 953.3, -19.71, -649.66, 2, 0)
	MovementLoopAddLocation(NPC, 954.68, -20.79, -668.19, 2, 0)
	MovementLoopAddLocation(NPC, 958.94, -22.2, -705.52, 2, 0)
	MovementLoopAddLocation(NPC, 965.34, -22.45, -728.45, 2, 0)
	MovementLoopAddLocation(NPC, 959.33, -20.82, -782.74, 2, 0)
	MovementLoopAddLocation(NPC, 959.01, -20.58, -787.04, 2, 0)
	MovementLoopAddLocation(NPC, 964.48, -21.22, -793.55, 2, 0)
	MovementLoopAddLocation(NPC, 967.62, -21.28, -797.85, 2, 0)
	MovementLoopAddLocation(NPC, 970.36, -21.49, -811.54, 2, 0)
	MovementLoopAddLocation(NPC, 975.38, -21.98, -816.56, 2, 0)
	MovementLoopAddLocation(NPC, 982.05, -22.07, -817.84, 2, 0)
	MovementLoopAddLocation(NPC, 999.74, -21.25, -805.89, 2, 0)
	MovementLoopAddLocation(NPC, 1006.65, -20.77, -794.7, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1006.65, -20.77, -794.7, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1006.65, -20.77, -794.7, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 1005.24, -20.79, -793.68, 2, 0)
	MovementLoopAddLocation(NPC, 1004.99, -20.89, -795.67, 2, 0)
	MovementLoopAddLocation(NPC, 1023.53, -20.75, -807.7, 2, 0)
	MovementLoopAddLocation(NPC, 1039.93, -20.76, -810.76, 2, 0)
	MovementLoopAddLocation(NPC, 1054.71, -19.08, -814.31, 2, 0)
	MovementLoopAddLocation(NPC, 1075.61, -20.51, -814.23, 2, 0)
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
if not HasCompletedQuest(Spawn, 5483) and not HasQuest(Spawn, 5483) and not HasCompletedQuest(Spawn, 5759) and not HasQuest(Spawn, 5759)   then
	PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota.mp3", "", "doh", 2613853514, 75460760, Spawn)
	    if GetLevel(Spawn)>=6 then
		AddConversationOption(conversation, "What is it you need?", "dlg_4_1")
		end
		AddConversationOption(conversation, "No time for charity. ")
		StartConversation(conversation, NPC, Spawn, "Am I ever in a bind! Will you please help me?")

elseif HasQuest(Spawn, 5483) or HasQuest(Spawn, 5759) then
        PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota001.mp3", "", "", 2350706866, 1692101884, Spawn)
		if GetQuestStep (Spawn,5483)== 5 or GetQuestStep (Spawn, 5759)==5 then
		AddConversationOption(conversation, "Here are your things you were looking for.", "HandIn")
        end		    
		AddConversationOption(conversation, "I'm working on it.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "I thought you said you'd  help me!  Do what you can, okay?")


elseif  HasCompletedQuest(Spawn, 5759) and not HasCompletedQuest(Spawn, 5784) then
    	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota003.mp3", "", "thank", 3067693779, 1933175006, Spawn)
		AddConversationOption(conversation, "What else do you need?","dlg_4_3")
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
    StartConversation(conversation, NPC, Spawn, "Those wretched skulkers stole my satchel!  It had everything that was important to me. Please, recover my satchel!")

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
    OfferQuest(NPC, Spawn, 5759)
end

function dlg_4_3 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5484)
end

function Reward1(NPC, Spawn)
    if HasQuest(Spawn, 5759) then
     	SetStepComplete(Spawn, 5759, 5)
    end      
    	conversation = CreateConversation()	
    PlayFlavor(NPC, "voiceover/english/outlander_vaughn/qey_adv02_ruins/quests/outlander_dakota/outlander_dakota003.mp3", "", "thank", 3067693779, 1933175006, Spawn)
	AddConversationOption(conversation, "What else do you need?","dlg_4_3")
	AddConversationOption(conversation, "I don't have the time, sorry. ")
	StartConversation(conversation, NPC, Spawn, "Thank you so very much for finding my dear possessions! Can you help me with one more small favor?")
    end

