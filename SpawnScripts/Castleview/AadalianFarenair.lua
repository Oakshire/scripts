--[[
	Script Name	: SpawnScripts/Castleview/AadalianFarenair.lua
	Script Purpose	: Aadalian Farenair 
	Script Author	: Dorbin
	Script Date	: 2022.01.25
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

local Sword = 5455

function spawn(NPC)
ProvidesQuest(NPC,Sword)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  
    if not HasLanguage(Spawn, 9) then
        	 if math.random(1, 100) <= 70 then
                Garbled(NPC, Spawn, Faction)
           --[[ local choice = math.random(1,2)
            if choice == 1 then
	        PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_755db2c3.mp3", "Castleview is beautiful this time of year.", "tap", 2766992983, 3224256482, Spawn, 9)
    	    elseif choice == 2 then
	        PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_d396c4fc.mp3", "Oh dont look at me that way. Speak my language!.", "", 3403333804, 3641522203, Spawn, 9)
    	    end]]--
    	end
	elseif
        not HasCompletedQuest (Spawn, Sword) and not HasQuest (Spawn, Sword) then 
            if math.random(1, 100) <= 70 then
            FaceTarget(NPC,Spawn)
            local choice = math.random(1,3)
                if choice == 1 then
                 PlayFlavor(NPC, "voiceover/english/aadalian_farenair/qey_village04/100_customer_aadalian_multhail1_489c1202.mp3", "Ah, a busy adventurer like you has no time to run errands. Farewell!", "tap", 1714607542, 3679115405, Spawn)
                elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/aadalian_farenair/qey_village04/100_customer_aadalian_multhail2_b98a70c.mp3", "Well met! I am Aadalian, son of Ethralin.  Welcome to Castleview!  I'm sorry I can't show you more of our village, for I am in wait.", "hello", 2059471651, 1229334005, Spawn)
                else
                PlayFlavor(NPC, "voiceover/english/aadalian_farenair/qey_village04/100_customer_aadalian_callout_357f6ef7.mp3", "Can you spare a moment?", "hello", 4143835238, 3043367579, Spawn)
                end
        
            elseif HasCompletedQuest (Spawn, Sword) and math.random(1, 100) <= 50 then
		PlayFlavor(NPC, "","", "tap", 0, 0, Spawn)
             end
    end
end
end

function LeaveRange(NPC, Spawn)
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    end
end   

function waypoints(NPC)
    MovementLoopAddLocation(NPC, 741.68, -13.69, -111.25, 2, 2,0)
	MovementLoopAddLocation(NPC, 741.68, -13.69, -111.25, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 742.24, -13.83, -116.86, 2, math.random(10, 15),0)
	MovementLoopAddLocation(NPC, 738.53, -13.69, -123.61, 2, 2,0)
	MovementLoopAddLocation(NPC, 738.53, -13.69, -123.61, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 747.38, -13.82, -123.27, 2, 2,0)
	MovementLoopAddLocation(NPC, 747.38, -13.82, -123.27, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 753.18, -13.71, -121.28, 2, math.random(10, 15),0)
	MovementLoopAddLocation(NPC, 737.73, -13.67, -122.91, 2, 2,0)
	MovementLoopAddLocation(NPC, 737.73, -13.67, -122.91, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 746.87, -13.88, -117.4, 2, 2,0)
	MovementLoopAddLocation(NPC, 746.87, -13.88, -117.4, 2, math.random(10, 15),"Action")
end


function QuestStart(NPC, Spawn, conversation)
    FaceTarget(NPC,Spawn)
    if not HasQuest (Spawn, Sword) then
         conversation = CreateConversation()
        PlayFlavor(NPC, "voiceover/english/aadalian_farenair/qey_village04/100_customer_aadalian_multhail2_b98a70c.mp3", "", "hello", 2059471651, 1229334005, Spawn)
        AddConversationOption(conversation, "What are you waiting for?", "Waitting")
         StartConversation(conversation, NPC, Spawn, "Well met! I am Aadalian, son of Ethralin.  Welcome to Castleview!  I'm sorry I can't show you more of our village, for I am in wait.")
       elseif HasQuest (Spawn, Sword) then
         conversation = CreateConversation()
        if GetQuestStep(Spawn, Sword) == 2 then
        AddConversationOption(conversation, "Here is your sword. What do you think?", "SwordReturned")
        end
    AddConversationOption(conversation, "I'm heading there soon.")
    StartConversation(conversation, NPC, Spawn, "Have you heard from Froptub about my sword?")
    end
end


 function Waitting(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/aadalian_farenair/qey_village04/aadalianfarenair000.mp3","", "brandish", 2830176428, 3645028717, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "What etching have you decided on?", "Decoration")
  AddConversationOption(conversation, "Fascinating, but I must be off.")
  StartConversation(conversation, NPC, Spawn, "I wait for my sword. You see, I've asked Froptub to etch an inscription along the blade. For generations, each elf in my family has placed a unique mark along his blade. Now, I must follow this tradition. ")
end   

 function Decoration(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/aadalian_farenair/qey_village04/aadalianfarenair001.mp3","", "brandish", 1068773246, 2639950014, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I'll go speak with Froptub.", "Froptub")
  AddConversationOption(conversation, "Sorry, I'm busy.")
  StartConversation(conversation, NPC, Spawn, "My design is not mere decoration, friend. The inscription chronicals the cohabitation of our two races. Would you be kind, and see what is keeping the sword at Froptub's smithy? ")
end   

function Froptub (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Sword)
end


function SwordReturned(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/aadalian_farenair/qey_village04/aadalianfarenair002.mp3","", "brandish", 1199681985, 2816919734, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I'm glad I could assist.", "Payment")
	AddConversationOption(conversation, "As long as you're happy with it. Good luck.", "Payment")
	PlayFlavor(NPC, "","", "brandish", 0, 0, Spawn)
	StartConversation(conversation, NPC, Spawn, "Hmm, this inscription is far more rudimentary than I expected. Though, it does fit perfectly with what I imagined. Forever more, this blade shall bare the union of our races. May the story of this sword carry on for generations.")
end   

        
function Payment(NPC, Spawn)
    	SetStepComplete(Spawn, Sword, 2)
    end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  
        if not HasLanguage(Spawn, 9) then -- Language Check for KoaDal (9)
        Garbled(NPC, Spawn, Faction)        
        --PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_755db2c3.mp3", "Castleview is beautiful this time of year.", "", 2766992983, 3224256482, Spawn, 9)
    	
        else
        if not HasCompletedQuest(Spawn, Sword) then 
        QuestStart(NPC, Spawn)
  
        elseif HasCompletedQuest (Spawn, Sword) then
	    PlayFlavor(NPC, "voiceover/english/aadalian_farenair/qey_village04/aadalianfarenair.mp3", "Well met! I am Aadalian, son of Ethralin.  Welcome to Castleview!  I'm sorry I can't show you more of our village, for I am in wait.", "", 2296905326, 696379844, Spawn)
        end
   end
end
end

