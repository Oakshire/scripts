--[[
	Script Name	: SpawnScripts/Castleview/EireneithAlannia.lua
	Script Purpose	: Eireneith Alannia 
	Script Author	: Dorbin
	Script Date	: 2022.01.29
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

--	PlayFlavor(NPC, "", "One of my responsibilities is controlling the population of creatures in the area, and I'm barely keeping up! The glade deer population has grown out of control. Once their numbers rise, those deer are hard to manage!", "", 1689589577, 4560189)



local Deer = 5469

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC, Deer)
end

function respawn(NPC)
end

function InRange(NPC, Spawn) --Quest Callout
        if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  
    if math.random(1, 100) <= 60 and GetLevel(Spawn) >=10 then
    PlayFlavor(NPC, "", "So much evil ... I don't know which way to turn first.", "ponder", 0, 0, Spawn)
    end
end
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else      
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, Deer) and not HasCompletedQuest(Spawn, Deer) then
        conversation = CreateConversation()   
        if GetLevel(Spawn)>=10 then
        AddConversationOption(conversation, "I happen to have some spare time.", "ICan")
        end
        if GetQuestStep(Spawn, Deer)==2 then
	    AddConversationOption(conversation, "I did what you requested.", "DoneDeer")
	    end
	    AddConversationOption(conversation, "I don't have time, sorry.")
	    StartConversation(conversation, NPC, Spawn, "So much evil ... I don't know which way to turn first. Perhaps you can help me?")
	     PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
	elseif HasQuest(Spawn, Deer) then 
	    conversation = CreateConversation()  
	    

	    
	    AddConversationOption(conversation, "I'm still dealing with them.")
	    StartConversation(conversation, NPC, Spawn, "Have you been able to reduce the deer population in Antonica like we discussed?")
	    
    else
	    GenericHail(NPC, Spawn)
	    Say(NPC, "Hopefully nature's balance can be restored through our small actions.", Spawn)
        end
    end
end

function ICan(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What do you need done?", "DeerProb")
    AddConversationOption(conversation, "Seems like a silly matter. I must go.")
    StartConversation(conversation, NPC, Spawn, "One of my responsibilities is controlling the population of creatures in the area, and I'm barely keeping up! The glade deer population has grown out of control. Once their numbers rise, those deer are hard to manage!")
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
end

function DeerProb(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "All right.  I will take care of this for you.", "QuestStart")
    AddConversationOption(conversation, "That sounds trival. Goodbye.")
    StartConversation(conversation, NPC, Spawn, "Excellent. I'll split my usual take with you if you finish the job.")
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
end


function QuestStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Deer)
end

function DoneDeer (NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I am glad to have played my part.", "QuestDone")
    StartConversation(conversation, NPC, Spawn, "Splendid! You did a good job.  Thank you for your help!")
 	PlayFlavor(NPC, "", "", "thank", 0,0 , Spawn)
end

function QuestDone(NPC, Spawn)
    SetStepComplete(Spawn, Deer, 2)
   end