    --[[
    	Script Name		:	TylliaNavar.lua
    	Script Purpose	:	Tyllia Navar
    	Script Author	:	Emagi
    	Script Date		:	05/14/2020
    	Script Notes	:	Made from General/1028/Antonica-Mar15-v3.log
    --]]

    local QUEST_1 = 3000
    local QUEST_2 = 5560
    local QUEST_3 = 5561

    function spawn(NPC)
    	ProvidesQuest(NPC, QUEST_1)
    end

    function respawn(NPC)
    	spawn(NPC)
    end

    local greetingsTable = { "voiceover/english/voice_emotes/greetings/greetings_1_1061.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_2_1061.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_3_1061.mp3"};

    function hailed(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	  PlayFlavor(NPC, greetingsTable[math.random(#greetingsTable)], "", "", 0, 0, Spawn)
    	math.randomseed(os.time());
    	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
    	dlg_0_0(NPC, Spawn)
    	elseif HasQuest(Spawn, QUEST_1) or not HasQuest(Spawn, QUEST_2) and not HasCompletedQuest(Spawn, QUEST_2) then
    	Quest1_Progress(NPC, Spawn)
    	elseif HasQuest(Spawn, QUEST_2) or not HasQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_3) then
    	Quest2_Progress(NPC, Spawn)
    	elseif HasQuest(Spawn, QUEST_3) then
    	Quest3_Progress(NPC, Spawn)   
   end    		
end

function Quest3_Progress(NPC, Spawn)
    	conversation = CreateConversation()
    	if GetQuestStep(Spawn, QUEST_3) == 3  or HasCompletedQuest(Spawn, QUEST_3)  then
    	AddConversationOption(conversation, "Yes, here.", "dlg_4_1")
    	end
    	AddConversationOption(conversation, "Not yet.")
 StartConversation(conversation, NPC, Spawn, "Did you get the manfiest?")   
    
end    


function Quest2_Progress(NPC, Spawn)
    	conversation = CreateConversation()
    	if GetQuestStep(Spawn, QUEST_2) == 3 or HasCompletedQuest(Spawn, QUEST_2)  then
    		AddConversationOption(conversation, "The gnolls are dead.", "dlg1_1")
    		end
    	AddConversationOption(conversation, "I am not finished yet, I will return.")
 StartConversation(conversation, NPC, Spawn, "Well?")   
    
end    

function Quest1_Progress(NPC, Spawn)
    	conversation = CreateConversation()
    if GetQuestStep(Spawn, QUEST_1) == 1 or GetQuestStep(Spawn, QUEST_1) == 2 or GetQuestStep(Spawn, QUEST_1) == 3  then
    AddConversationOption(conversation, "I haven't done anything you asked me yet.")
    elseif GetQuestStep(Spawn, QUEST_1) == 4 or HasCompletedQuest(Spawn, QUEST_1) then
   	AddConversationOption(conversation, "The gnolls are dead. The boat contained nothing, unfortunately.", "dlg_complete_1")
   	end
    AddConversationOption(conversation, "I will return later.")
   StartConversation(conversation, NPC, Spawn, "What of the boat and the gnolls?") 
end

    function dlg_0_1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "What are you doing up here?", "dlg_0_2")
    	StartConversation(conversation, NPC, Spawn, "The gnolls are foolish and unorganized, but they are not stupid. They would drive me away if they knew I was up here.")
    end
    
 function dlg_0_0(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "What are you doing up here?", "dlg_0_2")
    	AddConversationOption(conversation, "Why is that?", "dlg_0_1")
    	StartConversation(conversation, NPC, Spawn, "Greetings, you are welcome to rest here, but please be quiet and start no fires.")
    end

    function dlg_0_2(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "I am " .. GetName(Spawn) .. ".", "dlg_0_3")
    	StartConversation(conversation, NPC, Spawn, "Observing, of course. I am Tyllia Navar. And you?")
    end

    function dlg_0_3(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "What exactly are you observing?", "dlg_0_4")
    	StartConversation(conversation, NPC, Spawn, "It is nice to make your acquaintance, " .. GetName(Spawn) .. ".")
    end
    	

    function dlg_0_4(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "Who makes up the unit?", "dlg_0_5")
    	AddConversationOption(conversation, "And what have you found so far?", "dlg_0_6")
    	StartConversation(conversation, NPC, Spawn, "The gnolls of this area. After what has been going on in the lands closer to Qeynos her majesty has commissioned a special unit of the Qeynos Guard to collect intelligence on current and future gnoll threats. I am one third of that unit. This area is my charge.")
    end

    function dlg_0_5(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "And what have you found so far?", "dlg_0_6")
    	StartConversation(conversation, NPC, Spawn, "Magnon Baelvurn the former fisherman and Bulvar Rakgam, a self proclaimed \"true Halasian,\" make up the other two thirds of the unit. Magnon and I keep watch on the northern and southern portions of western Antonica, respectively. Magnon alone watches over the east side. We harry the gnolls to keep them from gaining strength. At the same time we watch for signs of concern.")
    end

    function dlg_0_6(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "What's so interesting about the cave?", "dlg_0_7")
    	StartConversation(conversation, NPC, Spawn, "The gnolls around here are suddenly more active. I have seen them using a small boat to carry things to and from the islands just south of here. It is a curious thing, and I wish to learn more of it, but right now my attention is on the cave north of here.")
    end

    function dlg_0_7(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "How can I help?", "dlg_0_8")
    	StartConversation(conversation, NPC, Spawn, "The gnolls have been hiding in there for some time now. They bring supplies in often, but they never bring anything out. I plan to see what is going on in there soon, but not before I finish collecting my information. You, though... you could help me.")
    end


    function dlg_0_8(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "What would you have me do?", "dlg_0_9")
    	StartConversation(conversation, NPC, Spawn, "It is almost time for me to move against the gnolls of this area. If you set them off balance to begin with--all while collecting information for me--it will set them up better for what I will do. Would you care to help, " .. GetName(Spawn) .. "?")
    end

    function dlg_0_9(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "Alright.", "OfferQuest1")
    	StartConversation(conversation, NPC, Spawn, "For starters I'd like you to take out some of the neophytes and runts just south of here. There are far too many for now. While you're down there I'd also like you to check the contents of that small boat they've been using. You'll find it south west of here, on the rocky shore. Check its contents, if we know what they've been moving around we can get a better idea of what they're up to.")
    end
    
    function dlg1_1(NPC, Spawn)
    if GetQuestStep(Spawn, QUEST_2) == 3 then
    SetStepComplete(Spawn, QUEST_2, 3)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No, nothing like that on the island.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "That is a relief...  And what of the island itself? Were there supplies? Perhaps a shipping port of some sort.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Then it must be on the other island... that is unfortunate. Will you go back, " .. GetName(Spawn) .. "")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What is so important about the docks?", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "You'll have to venture to the other island. It is fortified with stronger ranks and far more dangerous. I would not recommend setting foot on it, but I believe you can still find the dock by swimming about the isle, the gnolls won't notice you then. Yes, I think that is the best bet.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "As I said, if we can determine what items the gnolls are moving we are that much closer to discovering their plans... if they even have plans; I do hope the gnolls are not bent on making a more permanent residence here. However, at the docks I am certain you will find a manifest of some sort. Find it and bring it to me.")
end

function dlg_4_1(NPC, Spawn)
    if GetQuestStep(Spawn, QUEST_3) == 3 then
    SetStepComplete(Spawn, QUEST_3, 3)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will")
	StartConversation(conversation, NPC, Spawn, "Thank you. Hmmm... arcanic fluids? " .. GetName(Spawn) .. ", the time to act is now. Will you continue to offer your aid? ")
end



    function OfferQuest1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	OfferQuest(NPC, Spawn, QUEST_1)
    end
    
   function OfferQuest2(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	OfferQuest(NPC, Spawn, QUEST_2)
    end
    
 function OfferQuest3(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	OfferQuest(NPC, Spawn, QUEST_3)
    end
    
    function dlg_complete_1(NPC, Spawn)
    	if QuestStepIsComplete(Spawn, QUEST_1, 1) and QuestStepIsComplete(Spawn, QUEST_1, 2) and QuestStepIsComplete(Spawn, QUEST_1, 3) then
    		SetStepComplete(Spawn, QUEST_1, 4)
    end	
    		conversation = CreateConversation()
    		AddConversationOption(conversation, "I am willing.", "OfferQuest2")
    		AddConversationOption(conversation, "Not now.", "RejectQuest")
    		StartConversation(conversation, NPC, Spawn, "By Zek, an empty boat is worthless. At least the neophytes and runts have been slain. Their foul stench will soon return, however. I have another task for you if you're willing.")

    end
