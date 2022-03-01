--[[
	Script Name	: SpawnScripts/FrostfangSea/HillfredKinloch.lua
	Script Purpose	: Hillfred Kinloch <Blade Maiden>
	Script Author	: theFoof
	Script Date	: 2013.06.09
	Script Notes	: 
--]]

local NothingWaste = 56

local BloodMaiden = 65

local SkullsTaking = 66

local GreenMystery = 67

local FewerAbout = 68

local GeodeCaching = 69

local RyGorrOperations = 60

function spawn(NPC)
	ProvidesQuest(NPC, BloodMaiden)
	ProvidesQuest(NPC, SkullsTaking)
	ProvidesQuest(NPC, GreenMystery)
	ProvidesQuest(NPC, FewerAbout)
	ProvidesQuest(NPC, GeodeCaching)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, NothingWaste) then
		PlayFlavor(NPC, "", "There are some coldain that could use your help.  Speak with Dolur Axebeard or Belka Thunderheart at the Great Shelf.", "nod", 0, 0, Spawn)
	elseif HasCompletedQuest(Spawn, NothingWaste) and not HasCompletedQuest(Spawn, BloodMaiden) and not HasQuest(Spawn, BloodMaiden) then
		PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_001.mp3", "", "", 846401774, 3774173011, Spawn)
		AddConversationOption(conversation, "You mean the Ry'Gorr orcs?", "Quest1Chat_1")
		AddConversationOption(conversation, "With pleasure!", "OfferBloodMaiden")
		AddConversationOption(conversation, "I have slain enough orcs, already.")
		StartConversation(conversation, NPC, Spawn, "This is no time to stand about!  Cast your most fearsome spells and help us defend New Halas against these charging beasts!")
	elseif GetQuestStep(Spawn, BloodMaiden) == 1 then
		PlayFlavor(NPC, "", "Return to me once you have stained the frozen beachfront with the blood of the charging Ry'Gorr.", "agree", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, BloodMaiden) == 2 then
		SetStepComplete(Spawn, BloodMaiden, 2)
		PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_006.mp3", "", "", 1310989110, 2172357250, Spawn)
		AddConversationOption(conversation, "Thank you.", "Quest2Chat_2")
		StartConversation(conversation, NPC, Spawn, "I witnessed your handiwork and bravery upon the beach front, " .. GetName(Spawn) .. ".  That was quite impressive!")
	elseif HasCompletedQuest(Spawn, BloodMaiden) and not HasCompletedQuest(Spawn, SkullsTaking) and not HasQuest(Spawn, SkullsTaking) then
		PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_007.mp3", "", "scheme", 1642212239, 1493990214, Spawn)
		AddConversationOption(conversation, "I crave a challenge.", "Quest2Chat_1")
		AddConversationOption(conversation, "I like my keg exactly the way it is.  Goodbye.")
		StartConversation(conversation, NPC, Spawn, "Now for a task that is sure to tap your keg of skill, if not empty it!")
	elseif GetQuestStep(Spawn, SkullsTaking) == 1 then
		PlayFlavor(NPC, "", "Return from Jagged Daggers with Ry'Gorr skulls. I'll adorn the defnses with 'em!", "agree", 0, 0, Spawn) 
	elseif GetQuestStep(Spawn, SkullsTaking) == 2 then
		PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_011.mp3", "", "", 1023147983, 2407728628, Spawn)
		AddConversationOption(conversation, "Many orc skulls.", "Quest2Chat_3")
		StartConversation(conversation, NPC, Spawn, "What trophies do you return with from the battlefield, " .. GetName(Spawn) .. "?")
	elseif HasCompletedQuest(Spawn, SkullsTaking) and not HasCompletedQuest(Spawn, GreenMystery) and not HasQuest(Spawn, GreenMystery) then
		PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_013.mp3", "", "", 57466394, 1744108513, Spawn)
	    AddConversationOption(conversation, "It is.", "Quest3Chat_1")
	    StartConversation(conversation, NPC, Spawn, "I hear tale of the Ry'Gorr you found digging their way up from the underside of Erollis.  Is it true, " .. GetName(Spawn) .. "?")
	elseif GetQuestStep(Spawn, GreenMystery) == 1 then
		if HasItem(Spawn, 7928) then
		    PlayFlavor(NPC, "", "Find torches and fires within the Ry'Gorr tunnels deep within Erollis and apply the green ice to 'em.  We are sure to smoke out the ravaging orcs!", "agree", 0, 0, Spawn)
		else
			PlayFlavor(NPC, "", "It's difficult to apply the green ice to torches within the Ry'Gorr tunnels if you don't ahve it with you.  Take this and use it!", "glare", 0, 0, Spawn)
			SummonItem(Spawn, 7928, 0)
		end
	elseif GetQuestStep(Spawn, GreenMystery) == 2 then
		AddConversationOption(conversation, "The mist dissipated pretty quickly, but those that it touched, died.", "Quest3Chat_9")
		StartConversation(conversation, NPC, Spawn, "You've made a safe return, " .. GetName(Spawn) .. ", and staved off death for another day!  But tell me did the green ice work? How did the Ry'Gorr stand against the billowing clouds of poison?")
	elseif HasCompletedQuest(Spawn, GreenMystery) and not HasCompletedQuest(Spawn, FewerAbout) and not HasQuest(Spawn, FewerAbout) then
		Quest4Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, FewerAbout) == 1 then
		PlayFlavor(NPC, "", "Get to it!  Go face the orcs that crawl within the depths of our great land like you were a bear in a man's skin!", "scold", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, FewerAbout) == 2 then
		PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_026.mp3", "", "", 2970331989, 3888048661, Spawn)
		AddConversationOption(conversation, "You have become more trusting.", "Quest4Chat_6")
		StartConversation(conversation, NPC, Spawn, "Your return is all the evidence of your success within the tunnels below that I require, " .. GetName(Spawn) .. ".  You need not declare your victory to me!")
	elseif HasCompletedQuest(Spawn, FewerAbout) and not HasCompletedQuest(Spawn, RyGorrOperations) then
		PlayFlavor(NPC, "", "The coldain, Thirin Veliumdelver, has a task that will fit you like a Halasian war glove.", "agree", 0, 0, Spawn)
	elseif HasCompletedQuest(Spawn, RyGorrOperations) and HasCompletedQuest(Spawn, FewerAbout) and not HasQuest(Spawn, GeodeCaching) then
		PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_031.mp3", "", "", 4291173653, 4188849694, Spawn)
		AddConversationOption(conversation, "That pretty much sums it up.", "Quest5Chat_1")
		AddConversationOption(conversation, "I don't have time to talk right now.  Good day.")
		StartConversation(conversation, NPC, Spawn, "What is this I hear of you finding velium men under our dear city?")
	elseif GetQuestStep(Spawn, GeodeCaching) == 1 then
		PlayFlavor(NPC, "", "I hope you find a great many of the rare Cerise velium crystals within the Velinoid Catacombs below.", "agree", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, GeodeCaching) == 2 then
		SetStepComplete(Spawn, GeodeCaching, 2)
		PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_035.mp3", "", "", 2787343174, 784170411, Spawn)
		AddConversationOption(conversation, "You're welcome.")
		StartConversation(conversation, NPC, Spawn, "By the right hand of Marr!  You found rare Cerise velium crystals.  This is amazing, " .. GetName(Spawn) .. "!  Thank you.")
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_003.mp3", "", "", 1836808537, 1939269005, Spawn)
	AddConversationOption(conversation, "They are fierce warriors.", "Quest1Chat_2")
	AddConversationOption(conversation, "They are strong tacticians.", "Quest1Chat_2")
	AddConversationOption(conversation, "They are skillful spell casters.", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Aye!  These mongrels will not relent!  I fail to understand how the coldain pushed 'em from this isle, or had kept 'em at bay for so long!")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_004.mp3", "", "", 4172435129, 252044078, Spawn)
	AddConversationOption(conversation, "Of course!", "OfferBloodMaiden")
	AddConversationOption(conversation, "I cannot, right now.")
	StartConversation(conversation, NPC, Spawn, "Of that there is no question.  That is why I stand proudly beside 'em as we defend our city!  Will you aid us in this battle, great " .. GetName(Spawn) .. "?")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_008.mp3", "", "", 686837885, 933223065, Spawn)
	AddConversationOption(conversation, "What should I do?", "OfferSkullsTaking")
	AddConversationOption(conversation, "Jagged Daggers?", "Quest2Chat_2")
	AddConversationOption(conversation, "I am not going over there.  No way!")
	StartConversation(conversation, NPC, Spawn, "You take after one of my own kin, Tuce!  I am sure that the orcs are staging their beach front charge from the nearby isle known as Jagged Daggers.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What should I do?", "OfferSkullsTaking")
	AddConversationOption(conversation, "I am not going over there. No way!")
	StartConversation(conversation, NPC, Spawn, "Aye.  The isle with the spires of ice sticking out of it, like velium blades from the back of a slain giant.  It is across the waters to the west of the beach front.")
end

function Quest2Chat_3(NPC, Spawn)
	SetStepComplete(Spawn, SkullsTaking, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_012.mp3", "", "", 2537405314, 3097234688, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "You continue to prove yourself strong and hearty.  You deserve a strong stein of ale!")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_014.mp3", "", "", 1060176880, 2753171084, Spawn)
	AddConversationOption(conversation, "You could be right.", "Quest3Chat_3")
	AddConversationOption(conversation, "Or the other skirmishes have been distractions from the real plan.", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "Then they are more desperate than we had thought.  They are trying many routes and different plans, all at the same time.  They must be afraid of the influx of fighters the coldain have brought to their side.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "It is hard to imagine.", "Quest3Chat_3")
	StartConversation(conversation, NPC, Spawn, "For years?!  Ha! I hightly doubt that. Although, I was raised to believe that anything is possible, I cannot fathom these brutes being tempered by strategy or reined in by tactics.")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_016.mp3", "", "", 1973360658, 494365104, Spawn)
	AddConversationOption(conversation, "Let's make it defeat.", "Quest3Chat_4")
	StartConversation(conversation, NPC, Spawn, "Desperate forces are more willing to take chances.  This can either result in a windfall for 'em or a resounding defeat.")
end

function Quest3Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_017.mp3", "", "", 327573520, 4196024208, Spawn)
	AddConversationOption(conversation, "What is it?", "Quest3Chat_5")
	StartConversation(conversation, NPC, Spawn, "Well spoken, fellow defender of New Halas!  And I have the perfect weapon for this situation.  It's a little something that will give us the upper hand!")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_028.mp3", "", "", 1572217488, 1295272933, Spawn)
	AddConversationOption(conversation, "You mean when it was released against the Rallosian Army?", "Quest3Chat_6")
	StartConversation(conversation, NPC, Spawn, "A chunk of ice- green ice!  We found a small amount of it embedded within The Great Shelf.  We suspected it to be the legendary Greenmist, captured and encased in ice from the last time it traveled around the globe. ")
end

function Quest3Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_029.mp3", "", "", 382556049, 477983016, Spawn)
	AddConversationOption(conversation, "Why haven't you used it against them, yet?", "Quest3Chat_7")
	StartConversation(conversation, NPC, Spawn, "The same.  It took down ogre and orc alike, within the Rallosian ranks when Cazic-Thule released it across the lands.")
end

function Quest3Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_030.mp3", "", "", 590799696, 3171732865, Spawn)
	AddConversationOption(conversation, "What makes you think it will work now? ", "Quest3Chat_8")
	StartConversation(conversation, NPC, Spawn, "We tried.  We melted the ice, and a green mist was released, but it dispersed too quickly to harm the Ry'Gorr forces.")
end

function Quest3Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_018.mp3", "", "", 3216543246, 3646127145, Spawn)
	AddConversationOption(conversation, "Interesting.  All right, I'll do it.", "OfferGreenMystery")
	AddConversationOption(conversation, "No way!  I can't be a part of this.")
	StartConversation(conversation, NPC, Spawn, "I doubt they have much airflow deep within those tunnels you found em' digging.   When the ice melts it makes a great billowing cloud of poison.  Find flames within the tunnels and throw the ice on em'.  Even if the mist is not strong enough to kill the ravaging beasts outright, we are sure to smoke 'em out!")
end

function Quest3Chat_9(NPC, Spawn)
	SetStepComplete(Spawn, GreenMystery, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_020.mp3", "", "", 2833457168, 2782353327, Spawn)
	AddConversationOption(conversation, "Thank you.", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "Ah, another victory and another reason to take up a stein at the Ice Breaker.  Good job!")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_021.mp3", "", "", 4017927645, 3597873709, Spawn)
	AddConversationOption(conversation, "Really?", "Quest4Chat_2")
	AddConversationOption(conversation, "Why's that, Hillfred?", "Quest4Chat_3")
	StartConversation(conversation, NPC, Spawn, "And you need not furrow your brow over the orcs that the mist did not kill.  It is in the stagnant tunnel air now, and will weaken them, even if they do not know it.")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_022.mp3", "", "", 3881980508, 521109392, Spawn)
	AddConversationOption(conversation, "They should be easier to slay now.", "Quest4Chat_4")
	AddConversationOption(conversation, "So, they will die eventually?", "Quest4Chat_5")
	StartConversation(conversation, NPC, Spawn, "I swear on the holy statue of The Huntress!  It is in the air they breathe.  It may have decayed some in time, and they may not have taken in enough for it to be fatal, but it is now being pumped through their abhorrent bodies within the ichor they call blood.")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_023.mp3", "", "", 400683653, 2257596783, Spawn)
	AddConversationOption(conversation, "They should be easier to slay now.", "Quest4Chat_4")
	AddConversationOption(conversation, "So, they will die eventually?", "Quest4Chat_5")
	StartConversation(conversation, NPC, Spawn, "It is in the air they breathe.  It may have decayed some in time, and they may not have taken in enough for it to be fatal, but it is now being pumped through their abhorrent bodies within the ichor they call blood.")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_025.mp3", "", "", 2971334867, 3323208561, Spawn)
	AddConversationOption(conversation, "They don't stand a chance!", "OfferFewerAbout")
	AddConversationOption(conversation, "I am not going back down there.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "Then get to it!  Go face them like you were a bear in a man's skin!  Slay the orcs that crawl within the depths of our great land, " .. GetName(Spawn) .. ".")
end

function Quest4Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_024.mp3", "", "", 3939745267, 718274633, Spawn)
	AddConversationOption(conversation, "They don't stand a chance!", "OfferFewerAbout")
	AddConversationOption(conversation, "I am not going back down there.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "Let's not wait for that day to come.  Let's deliver it to 'em!  Go face them like you were a bear in a man's skin!  Slay the orcs that crawl within the depths of our great land, "  .. GetName(Spawn) .. ".")
end

function Quest4Chat_6(NPC, Spawn)
	SetStepComplete(Spawn, FewerAbout, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_027.mp3", "", "", 2051809382, 3817733818, Spawn)
	AddConversationOption(conversation, "I'll take that as a compliment.")
	StartConversation(conversation, NPC, Spawn, "I have become that sure of you and your determined nature.  It is not just your taste for battle that reminds me of my kin.")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_032.mp3", "", "", 807004537, 2920327554, Spawn)
	AddConversationOption(conversation, "That's true.", "Quest5Chat_2")
	AddConversationOption(conversation, "I wasn't aware of that.", "Quest5Chat_2")
	StartConversation(conversation, NPC, Spawn, "We shouldn't be so surprised what with knowing that this was once a chunk of Velious before it was calved off.  Geonids roamed the caverns there, too.")
end


function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_033.mp3", "", "", 3188649398, 1640607312, Spawn)
	AddConversationOption(conversation, "Cerise velium crystal?", "Quest5Chat_3")
	StartConversation(conversation, NPC, Spawn, "Yes, which brings to mind the tales of riches that rewarded the brave souls that entered those caverns.  You might even be able to find the rare cerise velium crystal!")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "hillfred_kinloch/halas/cragged_spine/hillfred_kinloch_034.mp3", "", "", 2043015378, 2840803966, Spawn)
	AddConversationOption(conversation, "Yeah, I'll do it.", "OfferGeodeCaching")
	AddConversationOption(conversation, "For some coin?  Okay.", "OfferGeodeCaching")
	AddConversationOption(conversation, "No thanks.  You couldn't pay me enough.")
	StartConversation(conversation, NPC, Spawn, "Yes, a red crystal.  It is said to be a very powerful gem grown from velium deposits.  It is sought by mage and jeweler alike.  And such untapped veins of velium would be the perfect place to look for it!  Will you search for 'em?  I'll be sure to pay you for your efforts.")
end

function OfferBloodMaiden(NPC, Spawn)
	OfferQuest(NPC, Spawn, BloodMaiden)
end

function OfferSkullsTaking(NPC, Spawn)
	OfferQuest(NPC, Spawn, SkullsTaking)
end

function OfferGreenMystery(NPC, Spawn)
	OfferQuest(NPC, Spawn, GreenMystery)
end

function OfferFewerAbout(NPC, Spawn)
	OfferQuest(NPC, Spawn, FewerAbout)
end

function OfferGeodeCaching(NPC, Spawn)
	OfferQuest(NPC, Spawn, GeodeCaching)
end