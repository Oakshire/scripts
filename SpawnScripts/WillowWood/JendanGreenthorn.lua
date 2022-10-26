--[[
	Script Name	: SpawnScripts/WillowWood/JendanGreenthorn.lua
	Script Purpose	: Jendan Greenthorn 
	Script Author	: Dorbin
	Script Date	: 2022.02.18
	Script Notes	: 
--]]

local Message = 5479


function spawn(NPC)
ProvidesQuest(NPC,Message)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    if not HasCompletedQuest (Spawn, Message) and not HasQuest (Spawn, Message) then 
            if math.random(1, 100) <= 70 then
            FaceTarget(NPC,Spawn)
            local choice = math.random(1,3)
                if choice == 1 then
                 PlayFlavor(NPC, "voiceover/english/jendan_greenthorn/qey_village05/100_jendan_greenthorn_callout_2edd959a.mp3", "Serian, where are you?! I must find my brother! Adventurer, have you seen Serian?", "sigh", 2641180045, 4231368071, Spawn)
                elseif choice == 2 then
		        PlayFlavor(NPC, "voiceover/english/jendan_greenthorn/qey_village05/100_jendan_greenthorn_multhail1_f21756ea.mp3", "Sorry, friend. I can't chat. I'm waiting for my brother and would hate to miss him!", "no", 2945270851, 1633258355, Spawn)
                else
                PlayFlavor(NPC, "voiceover/english/jendan_greenthorn/qey_village05/100_jendan_greenthorn_multhail2_be6e96a1.mp3", "Hello, friend. Did you see my brother get off the boat? He looks just like me!", "hello", 4218404248, 1728712562, Spawn)
                end
            end
        elseif HasCompletedQuest (Spawn, Message) and math.random(1, 100) <= 60 then
		  local choice = math.random(1,3)
		        if choice == 1 then
		        PlayFlavor(NPC, "","", "tap", 0, 0, Spawn)
		        elseif choice == 2 then
		        PlayFlavor(NPC, "","", "sigh", 0, 0, Spawn)
		        else
		        FaceTarget(NPC, Spawn)    
 		        PlayFlavor(NPC, "","", "nod", 0, 0, Spawn)
		        end
             end
    end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/jendan_greenthorn/qey_village05/jendangreenthorn000.mp3", "", "", 2553195028, 1519214978, Spawn)
        conversation = CreateConversation()

        if GetQuestStep(Spawn, Message) == 2 then
        AddConversationOption(conversation, "I talked with Innkeeper Yeoni.  Sadly, she didn't have any messages to give you.", "MessageReturned")
        end
        
        if not HasQuest(Spawn, Message) and not HasCompletedQuest (Spawn, Message) then
        AddConversationOption(conversation, "I don't believe I have. Sorry.", "NoBrother")
        end
    
        if HasCompletedQuest (Spawn, Message) then
        AddConversationOption(conversation, "Not yet, Jendan. I'll let you know if I do.")
        end
        
        AddConversationOption(conversation, "What? I'm busy.")
        StartConversation(conversation, NPC, Spawn, "Hello, friend. You didn't happen to see my brother get off the boat just now, did you? He looks just like me!")

    
end

 function NoBrother(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/jendan_greenthorn/qey_village05/jendangreenthorn001.mp3","", "", 2420473664, 2318526010, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I'll take the note to Yeoni for you.", "TakeNote")
  AddConversationOption(conversation, "Sorry, I'm too busy.")
  StartConversation(conversation, NPC, Spawn, "I am hoping he comes this way. He left the Isle of Refuge one boat ahead of me and told me to meet him here. Would you run this note to Innkeeper Yeoni? Maybe Serian left a note with her earlier today.")
end   

 function TakeNote(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/jendan_greenthorn/qey_village05/jendangreenthorn002.mp3","", "thank", 125091657, 2816219809, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I'll be back shortly.", "QuestOffer")
  StartConversation(conversation, NPC, Spawn, "Thank you! I'll stay here and watch the docks. Hopefully he'll come in on the next boat.")
end   

function QuestOffer (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Message)
end

 function MessageReturned(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/jendan_greenthorn/qey_village05/jendangreenthorn003.mp3","", "thank", 3713247268, 3686475339, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Thanks, and good luck.", "QuestEnd")
  StartConversation(conversation, NPC, Spawn, "It's alright. He'll show up on the next boat... I know it. Thank you for the help! Here is a bit of money for your troubles.")
end   

function QuestEnd(NPC, Spawn)
    	SetStepComplete(Spawn, Message, 2)
    end
