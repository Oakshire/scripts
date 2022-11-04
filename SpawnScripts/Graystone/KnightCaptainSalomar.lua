--[[
	Script Name	: SpawnScripts/Graystone/Knight-CaptainSalomar.lua
	Script Purpose	: Knight-Captain Salomar 
	Script Author	: Dorbin
	Script Date	: 2022.03.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local OakGate = 5504

function spawn(NPC)
ProvidesQuest(NPC, 5504)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 70 then
    if not HasCompletedQuest (Spawn, OakGate) and not HasQuest (Spawn, OakGate) then         
        choice = math.random(1,2)
             if choice ==1 then
            PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/100_guard_captain_human_salomar_multhail2_4196ff15.mp3", "Well met! We could indeed your assistance, good adventurer!", "salute", 4231390538, 1602293868, Spawn)
            else
        	PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/100_guard_captain_human_salomar_multhail1_2d65b2d1.mp3", "Ah ... on second thought you had better broaden your training before serving the Qeynos Guard.  Good day, citizen!", "", 138672311, 3107129991, Spawn)
            end
     else
         choice = math.random(1,2)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "salute", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
            end
        end
    end
end

function hailed(NPC, Spawn)
    conversation = CreateConversation()    
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/captainsalomar000.mp3", "", "", 2258693446, 3021950674, Spawn)

 if GetQuestStep (Spawn, OakGate)==2 then 
    AddConversationOption(conversation, "The Oakmyst Forest gate appears to be intact.", "Finished")
    end    

 if not HasCompletedQuest (Spawn, OakGate) and not HasQuest (Spawn, OakGate)  then 
    AddConversationOption(conversation, "The tavern does seem to have its fair share of rough housing.","Graystone")
end
    AddConversationOption(conversation, "Glad to have you here anyway.")
    StartConversation(conversation, NPC, Spawn, "I'm afraid my men are only here to deal with city buisness. Bar room brawls are a matter for the village to handle.")
    
end

 function Graystone(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/captainsalomar001.mp3","","",1098392922,2954030291,Spawn)
  AddConversationOption(conversation, "What is The Graystone Watch?","WhatWatch")
  StartConversation(conversation, NPC, Spawn, "You mean like The Frozen Tundra Tavern. Ah, its a rough place. Don't expect any extra protection from The Graystone Watch. Bah!")
end   

 function WhatWatch(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/captainsalomar002.mp3","","",78744458,3687664161,Spawn)
  AddConversationOption(conversation, "Can I join them?","JoinWatch")
  AddConversationOption(conversation, "They do what they must. Good day.") 
  StartConversation(conversation, NPC, Spawn, "The Watch are the local militia here in Graystone.  They're supposed to handle all the village disputes, but they're an undisciplined lot.")
end   

function JoinWatch(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/captainsalomar003.mp3","","",977812867,1076147271,Spawn)
  AddConversationOption(conversation, "What can I do for the Qeynos Guard?","QGuard")
  AddConversationOption(conversation, "I don't have time to help either. Good day.") 
  StartConversation(conversation, NPC, Spawn, "Join them!  Are you mad?  I heard their recruiting rituals are a terrible ordeal.  Besides, you look too civilized to join their ranks.  If you really want to help, do the Qeynos Guard a favor instead.  We need you.")
end   

function QGuard(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/captainsalomar004.mp3","","",3783365478,3563979362,Spawn)
  AddConversationOption(conversation, "I will go check the gate and report back.","QuestStart")
  AddConversationOption(conversation, "I've heard that too! I'm not going anywhere near it. Goodbye.")  
  AddConversationOption(conversation, "I'm too busy. Sorry.") 
  StartConversation(conversation, NPC, Spawn, "The tavern patrons are all a-buzz about the Oakmyst Forest gate being toppled.  Now, maybe it's true and maybe it's just scuttlebutt.  Would you go to the gate and see for yourself?  Report back to me and I'll reward you with coin of the realm.")
end   

function QuestStart(NPC,Spawn)
    OfferQuest(NPC,Spawn, OakGate)
    FaceTarget(NPC, Spawn)    
end

 function Finished(NPC, Spawn)
  conversation = CreateConversation()
    FaceTarget(NPC, Spawn)  
  PlayFlavor(NPC, "voiceover/english/captain_salomar/qey_village03/captainsalomar005.mp3","","thank",1841540516,576734016,Spawn)
  AddConversationOption(conversation, "Glad to assist.","Finished2")
  AddConversationOption(conversation, "Enjoy your pint!","Finished2")  
  StartConversation(conversation, NPC, Spawn, "Intact, is it?  Good.  That's one less worry on my mind.  Perhaps I'll relax with a pint at the tavern now. Please accept this reward for assisting the Kingdom of Qeynos.  I am ever grateful to you.")
end 

function Finished2(NPC,Spawn)
    SetStepComplete(Spawn,OakGate,2)
    FaceTarget(NPC, Spawn)      
end