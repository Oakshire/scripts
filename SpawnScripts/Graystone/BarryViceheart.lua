--[[
	Script Name	: SpawnScripts/Graystone/BarryViceheart.lua
	Script Purpose	: Barry Viceheart 
	Script Author	: Dorbin
	Script Date	: 2022.03.07
	Script Notes	: 
--]]


local Delivery = 5500

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end

function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 60 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then         
        choice = math.random(1,2)
             if choice ==1 then
            FaceTarget(NPC, Spawn)     
            PlayFlavor(NPC, "voiceover/english/barry_viceheart/qey_village03/100_customer_barbarian_viceheart_callout_1461fbc1.mp3", "This tome will never reach home as long my buisness in Graystone is hampered. Are you looking to make some coin, friend?", "", 2446304440, 3164893910, Spawn)
            else
	        FaceTarget(NPC, Spawn)
	        PlayFlavor(NPC, "voiceover/english/barry_viceheart/qey_village03/100_customer_barbarian_viceheart_multhail1_31dbd300.mp3", "I don't think you want to help me with this difficult task. Farewell!", "no", 2478336212, 3512678812, Spawn)
            end
     else
         choice = math.random(1,2)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "grumble", 0, 0, Spawn)
            end
        end
    end
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/barry_viceheart/qey_village03/barryviceheart000.mp3","","grumble",2578443870,2025920276,Spawn)
	if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then     
    AddConversationOption(conversation, "Why don't you just come back later?", "DeliveryStart")
    end
    if GetQuestStep(Spawn,Delivery)==2 then     
    AddConversationOption(conversation, "The tome is returned. They had words for you.", "DeliveryDone")
    end
    
    AddConversationOption(conversation, "Keep your place in line.")
    StartConversation(conversation, NPC, Spawn, "If you think I am going to give up my place in line for a few coins, think again. Every day it is the same long line. When will they hire new help? ")
    
end

 function DeliveryStart(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/barry_viceheart/qey_village03/barryviceheart001.mp3","","",544720212,2865021326,Spawn)
  AddConversationOption(conversation, "This line seems to be your only crusade?", "QuestBegin1")
  AddConversationOption(conversation, "Alright then. Good luck with that.")
  StartConversation(conversation, NPC, Spawn, "By this time tomorrow I'll be marching across the fields of Antonica on a crusade to rid the land of the remaining gnolls.  This shall prove the might and worth of Viceheart.  The Qeynos Guard will be begging me to join their ranks. ")
end   

 function QuestBegin1(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/barry_viceheart/qey_village03/barryviceheart002.mp3","","agree",1094577603,3787168085,Spawn)
  AddConversationOption(conversation, "Can I help?", "QuestBegin2")
  AddConversationOption(conversation, "Alright then. Good luck with that.")
  StartConversation(conversation, NPC, Spawn, "Aye. I must agree. This line has been a greater bane than the hordes of khekloks and pirates I faced on my journey to Qeynos. If I cannot defeat this line in a few hours I will never defeat the fine I shall incur by not returning this tome.")
end   

 function QuestBegin2(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/barry_viceheart/qey_village03/barryviceheart003.mp3","","agree",1066723073,3215544160,Spawn)
  AddConversationOption(conversation, "I'll return the book to Bleemeb.", "QuestBegin")
  AddConversationOption(conversation, "On second thought, I'm busy. Sorry.")
  StartConversation(conversation, NPC, Spawn, "Carry this tome to Castleview Hamlet. There you will find a scribe's shop. Be sure that Bleemeb receives the tome. Do this and I shall reward you with coin.")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function DeliveryDone(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/barry_viceheart/qey_village03/barryviceheart004.mp3","","facepalm",1668909106,3942142974,Spawn)
  AddConversationOption(conversation, "Thanks for the coin, and good luck with the line.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Bah! I do not need to hear a scribbler's threats. Your deed is kind and a reward is just. Take these few coins. May your journeys bring you many victories.")
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end
