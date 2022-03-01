--[[
	Script Name	: aSapswillsoothsayer
	Script Purpose	: Quest and Conversations
	Script Author	: Unknown
	Script Date	: 2020.04.11
	Script Notes	: Need loot changes
        Modified Date   : 2020.04.11
        Modified by     : premierio015
        Modified Notes  : Added missing Favors
--]]

local GhostsAndGoblins = 184
local DoggoneIt = 165
local ADiplomaticMission = 166

function spawn(NPC)
	ProvidesQuest(NPC, ADiplomaticMission)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
   
	if HasCompletedQuest(Spawn, GhostsAndGoblins) then

        text = math.random(1,6)

        if text == 1 then
            PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quest/qst_goblin_soothsayer_hail_df93707a.mp3", "Sapswill thirsty! Always thirsty!", "", 297731422, 2828024691, Spawn)
        elseif text == 2 then
            PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quest/qst_goblin_soothsayer_hail_5b087fab.mp3", "Yoo hoo! Hello, happy friend!", "", 2294144427, 914727908, Spawn)
        elseif text == 3 then
            PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quest/qst_goblin_soothsayer_hail_dbbe9e5a.mp3", "Learn from the plants!", "", 3158068630, 3373859959, Spawn)
        elseif text == 4 then
            PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quest/qst_goblin_soothsayer_hail_5b15c9a5.mp3", "Greetings, happy friend!", "", 1580044071, 504462891, Spawn)
        elseif text == 5 then
            PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quest/qst_goblin_soothsayer_hail_b4e9d8d7.mp3", "Grexx knows all!", "", 282355163, 2914685235, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quest/qst_goblin_soothsayer_hail_b576b38b.mp3", "Diplomats always diplomatic, I say!", "", 4290529755, 4235299010, Spawn)	
        end

	elseif HasQuest(Spawn, GhostsAndGoblins) then
		if GetQuestStep(Spawn, GhostsAndGoblins) == 4 then
			GrexxPromises(NPC, Spawn, 1)
		elseif GetQuestStep(Spawn, GhostsAndGoblins) >= 4 and GetQuestStep(Spawn, GhostsAndGoblins) <= 8 then
			GrexxPromises(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, GhostsAndGoblins) == 9 then
			GrexxPromises(NPC, Spawn, 2)
		end
	else
		GrexxPromises(NPC, Spawn, 0)
	end
end

--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
   
	if HasCompletedQuest(Spawn, GhostsAndGoblins) then
		GrexxPromises(NPC, Spawn, 0)
	elseif HasQuest(Spawn, GhostsAndGoblins) then
		if GetQuestStep(Spawn, GhostsAndGoblins) == 4 then
			GrexxPromises(NPC, Spawn, 1)
		elseif GetQuestStep(Spawn, GhostsAndGoblins) >= 4 and GetQuestStep(Spawn, GhostsAndGoblins) <= 8 then
			GrexxPromises(NPC, Spawn, 0)
		elseif GetQuestStep(Spawn, GhostsAndGoblins) == 9 then
			GrexxPromises(NPC, Spawn, 2)
		end
	else
		GrexxPromises(NPC, Spawn, 0)
	end
end
--]]

function GrexxPromises(NPC, Spawn, Choice)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, DoggoneIt) then
		if HasCompletedQuest(Spawn, ADiplomaticMission) then
		elseif HasQuest(Spawn, ADiplomaticMission) then
			AddConversationOption(conversation, "I just wanted to say, about that present...", "GiftFromQeynos")
		else
			AddConversationOption(conversation, "I just wanted to say, about that present...", "GiftFromQeynos")
		end
	elseif HasQuest(Spawn, DoggoneIt) then
		if GetQuestStep(Spawn, DoggoneIt) == 7 then
			AddConversationOption(conversation, "I bring you a gift from the people of Qeynos.", "GiftFromQeynos")
		end
	end

	if Choice == 1 then
		AddConversationOption(conversation, "The Forest Keeper sent me to ...", "ForestKeeperSentMe")
	elseif Choice == 2 then
		AddConversationOption(conversation, "I've gotten the items you've asked for.", "GotYourItemsBitch")
	end
	
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer001.mp3", "", "", 3035051138, 3409395583, Spawn)
	AddConversationOption(conversation, "I'll bet they are.")
	StartConversation(conversation, NPC, Spawn, "Grexx promises us and his promise is kept!")
end

function ForestKeeperSentMe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer002.mp3", "", "dance", 2152575465, 987709738, Spawn)
	AddConversationOption(conversation, "But what...", "ButWhat")
	StartConversation(conversation, NPC, Spawn, "Forest Keeper, big tree! Yes, yes, waiting for you. Big tree, big promise! Water is needed, yes! Three waters, fallen from the skies and the roots from deep beneath! Fetch the waters! Gather the roots!")
end

function ButWhat(NPC, Spawn)
	SetStepComplete(Spawn, GhostsAndGoblins, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer003.mp3", "", "heckno", 993058875, 4130995149, Spawn)
	AddConversationOption(conversation, "Well. Okay.")
	StartConversation(conversation, NPC, Spawn, "Nothing more to say! Big tree sends you to me to help! Big tree keeps promise! Bring waters and roots first, then sayings I will sooth! Must bring to me, or nothing more will I say!")
end

function GotYourItemsBitch(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer004.mp3", "", "dance", 3937302704, 1061992396, Spawn)
	AddConversationOption(conversation, "The Forest Keeper said you'd know how to stop the corruption of the colony.", "ForestKeeperSaid")
	StartConversation(conversation, NPC, Spawn, "Yes! Yes! Freshest waters! Tasty roots! Now will I tell you what you want to know. What you want to know?")
end

function ForestKeeperSaid(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer005.mp3", "", "", 2503394497, 3201897096, Spawn)
	AddConversationOption(conversation, "Then what was all that stuff for?", "StuffFor")
	StartConversation(conversation, NPC, Spawn, "Me? No! Grexx knows all, no sayings need to sooth on that! Ha! Why tree tell you such a joke? Ha! Evil things creeping up on poor gobbies, long time now! Big tree is wrong, nothing new to know about that. Happy you came to help us, though!")
end

function StuffFor(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer006.mp3", "", "nod", 4023935260, 2261160052, Spawn)
	AddConversationOption(conversation, "You mean you're going to make a brew out of them?", "MakeBrew")
	StartConversation(conversation, NPC, Spawn, "Ah, tasty roots! Mash them up, grind them up and soak in the waters. After the moons are new again, ready to drink, it is! Helps to forget, helps to remember. Tasty Roots!")
end

function MakeBrew(NPC, Spawn)
	SetStepComplete(Spawn, GhostsAndGoblins, 9)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer007.mp3", "", "dance", 1551319640, 2145632407, Spawn)
	AddConversationOption(conversation, "I don't think it's very even.")
	StartConversation(conversation, NPC, Spawn, "Yes, yes! Tasty brew! If you knew there was no sooth to be said, would you have got tasty roots and fresh waters for us? No! So now we have them and now you will know as much as Sapswills! Even trade! Even trade! Share with you, we will, too!")
end

------------------------------------------------------------------------------------------
--			diplomat quest
------------------------------------------------------------------------------------------

function GiftFromQeynos(NPC, Spawn)
	if HasQuest(Spawn, DoggoneIt) and HasItem(Spawn, 1565) then
		-- remove a Diplomatic Gift
		RemoveItem(Spawn, 1565)
		SetStepComplete(Spawn, DoggoneIt, 7)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasQuest(Spawn, ADiplomaticMission) and not HasCompletedQuest(Spawn, ADiplomaticMission) and HasCompletedQuest(Spawn, DoggoneIt) then
		AddConversationOption(conversation, "It's a small token of friendship. A diplomatic gesture.", "TokenOfFriendship")
	end
	
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer008.mp3", "", "", 4111507292, 2842514657, Spawn)
	AddConversationOption(conversation, "It's my pleasure to meet you.")
	StartConversation(conversation, NPC, Spawn, "Hello! Hello! I knew you would be coming! I knew! And bringing a present...we loves presents!")
end

------------------------------------------------------------------------------------------
--			diplomat quest
------------------------------------------------------------------------------------------

function TokenOfFriendship(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_sapswill_soothsayer/tutorial_island02_revamp/quests/sapswill_soothsayer/sapswill_soothsayer009.mp3", "", "dance", 3719258575, 2018058923, Spawn)
	AddConversationOption(conversation, "I'll pay my respect to your...er people.", "OfferQuest1")
	AddConversationOption(conversation, "I need to run.")
	StartConversation(conversation, NPC, Spawn, "Friends for life, we are now! Is our tradition to greet everyone we meet. Go meet the Sapswills! Is the diplomatic way! Hail them all! We like friends! Meet the Sapswills, then meet High Chiefain Grexx! He likes friends too! To long life and happy friendships!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, ADiplomaticMission)
end