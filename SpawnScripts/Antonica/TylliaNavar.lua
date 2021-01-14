    --[[
    	Script Name		:	TylliaNavar.lua
    	Script Purpose	:	Tyllia Navar
    	Script Author	:	Emagi
    	Script Date		:	05/14/2020
    	Script Notes	:	Made from General/1028/Antonica-Mar15-v3.log
    --]]

    local QUEST_1 = 3000

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
    	math.randomseed(os.time());
    	conversation = CreateConversation()
    	local introMsg = "Greetings, you are welcome to rest here, but please be quiet and start no fires."
    	local hasSuspiciousActivityQuest = HasQuest(Spawn, QUEST_1)
    	local suspiciousActivityQuestComplete = false
    	if HasCompletedQuest(Spawn, QUEST_1) then
    		suspiciousActivityQuestComplete = true
    		hasSuspiciousActivityQuest = true
    	end
    	if hasSuspiciousActivityQuest == true then
    		introMsg = "What of the boat and the gnolls?"
    		if QuestStepIsComplete(Spawn, QUEST_1, 1) and QuestStepIsComplete(Spawn, QUEST_1, 2) and QuestStepIsComplete(Spawn, QUEST_1, 3) then
    			suspiciousActivityQuestComplete = true
    		end
    	end
    	
    	PlayFlavor(NPC, greetingsTable[math.random(#greetingsTable)], introMsg, "", 0, 0, Spawn)
    	
    	if hasSuspiciousActivityQuest == false and suspiciousActivityQuestComplete == false then
    		AddConversationOption(conversation, "What are you doing up here?", "dlg_0_2")
    		AddConversationOption(conversation, "Why is that?", "dlg_0_1")
    		StartConversation(conversation, NPC, Spawn, introMsg)
    	elseif hasSuspiciousActivityQuest == true and suspiciousActivityQuestComplete == false then
    		AddConversationOption(conversation, "I will return later.", "dlg_complete_0")
    		StartConversation(conversation, NPC, Spawn, introMsg)
    	else
    		AddConversationOption(conversation, "The gnolls are dead. The boat contained nothing, unfortunately.", "dlg_complete_1")
    		AddConversationOption(conversation, "I will return later.", "dlg_complete_0")
    		StartConversation(conversation, NPC, Spawn, introMsg)
    	end
    end

    function dlg_0_1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	AddConversationOption(conversation, "What are you doing up here?", "dlg_0_2")
    	StartConversation(conversation, NPC, Spawn, "The gnolls are foolish and unorganized, but they are not stupid. They would drive me away if they knew I was up here.")
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
    	StartConversation(conversation, NPC, Spawn, "Magnon Baelvurn the former fisherman and Bulvar Rakgam, a self proclaimed /"true Halasian,/" make up the other two thirds of the unit. Magnon and I keep watch on the northern and southern portions of western Antonica, respectively. Magnon alone watches over the east side. We harry the gnolls to keep them from gaining strength. At the same time we watch for signs of concern.")
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

    function OfferQuest1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	OfferQuest(NPC, Spawn, QUEST_1)
    end

    function dlg_complete_1(NPC, Spawn)
    	if QuestStepIsComplete(Spawn, QUEST_1, 1) and QuestStepIsComplete(Spawn, QUEST_1, 2) and QuestStepIsComplete(Spawn, QUEST_1, 3) then
    		SetStepComplete(Spawn, QUEST_1, 4)
    	end
    	
    	if HasCompletedQuest(Spawn, QUEST_1) then
    		conversation = CreateConversation()
    		AddConversationOption(conversation, "I am willing.", "OfferQuest2")
    		AddConversationOption(conversation, "Not now.", "RejectQuest")
    		StartConversation(conversation, NPC, Spawn, "By Zek, an empty boat is worthless. At least the neophytes and runts have been slain. Their foul stench will soon return, however. I have another task for you if you're willing.")
    	end
    end
