--[[
	Script Name	: SpawnScripts/Castleview/EireneithAlannia.lua
	Script Purpose	: Eireneith Alannia 
	Script Author	: Dorbin
	Script Date	: 2022.01.29
	Script Notes	: HIGHLY fabricated as there is no reference to the original content of this quest.
--]]

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
    if math.random(1, 100) <= 60 then
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    end
end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, Deer) and not HasCompletedQuest(Spawn, Deer) then
        conversation = CreateConversation()   
        if GetLevel(Spawn)>=10 then
        AddConversationOption(conversation, "What task?", "ICan")
        end
	    AddConversationOption(conversation, "Good day to you too!")
	    StartConversation(conversation, NPC, Spawn, "Good day. I am sorry if I appear distracted. My thoughts lie elsewhere on my task outside the city walls.")
	     PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
	elseif HasQuest(Spawn, Deer) then 
	    conversation = CreateConversation()  
	    
	    if GetQuestStep(Spawn, Deer)==2 then
	    AddConversationOption(conversation, "I've reduced the population of deer as you asked of me.", "DoneDeer")
	    end
	    
	    AddConversationOption(conversation, "I'm still dealing with them.")
	    StartConversation(conversation, NPC, Spawn, "Have you been able to reduce the deer population in Antonica like we discussed?")
	    
    else
	    GenericHail(NPC, Spawn)
	    Say(NPC, "Hopefully nature's balance can be restored through our small actions.", Spawn)
        end
    end


function ICan(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Why are deer a problem?", "DeerProb")
    AddConversationOption(conversation, "Seems like a silly matter. I must go.")
    StartConversation(conversation, NPC, Spawn, "One of my responsibilities is controlling the population of creatures in the area, and I'm barely keeping up! The glade deer population has grown out of control. Once their numbers rise, those deer are hard to manage!")
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
end

function DeerProb(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What must happen to control the deer?", "DeerControl")
    AddConversationOption(conversation, "That sounds trival. Goodbye.")
    StartConversation(conversation, NPC, Spawn, "You see, when deer predators are eliminated, their populations outgrow the vegetation they consume. They devour everything on the forest floor! The forest then can't support itself and potentionally leads to ecosystem collapse.")
 --	PlayFlavor(NPC, "", "", "", 0,0 , Spawn)
end

function DeerControl(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I will help how I can.", "QuestAlmostStart")
    AddConversationOption(conversation, "Nope, I love deer too much to kill them.")
    StartConversation(conversation, NPC, Spawn, "With Tunare's grace, we must occasionally must cull the herds of deer in Antonica to give other life a fighting chance. There are just too many right now! Would you be willing to lend a hand? You would be doing Qeynos a great service. ")
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
end

function QuestAlmostStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I will return once the task is done.", "QuestStart")
    StartConversation(conversation, NPC, Spawn, "Thank you. Please, head to the fields of Antonica and locate the roaming glade deer. At least ten of them removed from the population would suffice in supporting the other natural systems. ")
 	PlayFlavor(NPC, "", "", "thank", 0,0 , Spawn)
end

function QuestStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Deer)
end

function DoneDeer (NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I am glad to have played my part.", "QuestDone")
    StartConversation(conversation, NPC, Spawn, "While the task may not have been an enjoyable one, you have performed a great service in restoring the balance of our lands. Please, let me pay you for your efforts. Thank you.")
 	PlayFlavor(NPC, "", "", "thank", 0,0 , Spawn)
end

function QuestDone(NPC, Spawn)
    SetStepComplete(Spawn, Deer, 2)
   end