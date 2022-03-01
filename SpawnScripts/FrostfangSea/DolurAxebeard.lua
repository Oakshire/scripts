--[[
	Script Name	: SpawnScripts/FrostfangSea/DolurAxebeard.lua
	Script Purpose	: Dolur Axebeard 
	Script Author	: theFoof
	Script Date	: 2013.05.25
	Script Notes	: 
--]]

local GlimmerOrc = 31

local MurkyMystery = 32

local ScatteringAshes = 33

local TotemAnnihilation = 34

local CallingBack = 35

local TheGauntlet = 36

local OffOssuary = 71

local SeveringHead = 72

local NightmareOver = 73

function spawn(NPC)
	ProvidesQuest(NPC, GlimmerOrc)
	ProvidesQuest(NPC, MurkyMystery)
	ProvidesQuest(NPC, ScatteringAshes)
	ProvidesQuest(NPC, TotemAnnihilation)
	ProvidesQuest(NPC, CallingBack)
	ProvidesQuest(NPC, TheGauntlet)
	ProvidesQuest(NPC, OffOssuary)
	ProvidesQuest(NPC, SeveringHead)
	ProvidesQuest(NPC, NightmareOver)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    if not HasQuest(Spawn, GlimmerOrc) and not HasCompletedQuest(Spawn, GlimmerOrc) then
	    PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard001.mp3", "", "", 1652895933, 4056769103, Spawn)
		AddConversationOption(conversation, "What's wrong?", "Quest1Chat_1")
		AddConversationOption(conversation, "I don't want to get involved.  Goodbye.")
		StartConversation(conversation, NPC, Spawn, "We've got a big problem on our hands, " .. GetName(Spawn) .. ".  And by big, I mean disastrous.")
	elseif GetQuestStep(Spawn, GlimmerOrc) == 1 then
	    PlayFlavor(NPC, "", "Perhaps the orcs are using the power from luminous snowflurries for their camouflage.", "think", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, GlimmerOrc) ==  2 then
	    Quest1Chat_11(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, GlimmerOrc) and not HasCompletedQuest(Spawn, MurkyMystery) and not HasQuest(Spawn, MurkyMystery) then
	    Quest2Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, MurkyMystery) == 1 then
	    PlayFlavor(NPC, "", "The deepice miasmas aren't far from here.  Look up the hill above the battlefield, near Herga's Choke.", "point", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, MurkyMystery) == 2 then
	    PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard021.mp3", "", "", 1915346257, 1839627430, Spawn)
		AddConversationOption(conversation, "I've got my fingers crossed.", "Quest2Chat_5")
		AddConversationOption(conversation, "[Wait]", "Quest2Chat_5")
		StartConversation(conversation, NPC, Spawn, "There ye be, " .. GetName(Spawn) .. "!  And ye've brought back the deepice crystals.  Let's see if this works in conjunction with the glimmer powder.")
	elseif HasCompletedQuest(Spawn, MurkyMystery) and not HasCompletedQuest(Spawn, ScatteringAshes) and not HasQuest(Spawn, ScatteringAshes) then
	    Quest3Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, ScatteringAshes) == 1 then
	    PlayFlavor(NPC, "", "I've trusted ye to scatter my brethren's ashes. Don't let me down.", "", 0, 0, Spawn)
    elseif GetQuestStep(Spawn, ScatteringAshes) == 2 then
	    PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard031.mp3", "", "", 1406448236, 1748110963, Spawn)
		AddConversationOption(conversation, "Glad to have helped.", "Quest3Chat_9")
		AddConversationOption(conversation, "I heard nothing, but I did the job as you asked.", "Quest3Chat_8")
		AddConversationOption(conversation, "I didn't hear chanting, but I do hear superstitious nonsense.", "Quest3Chat_8")
		StartConversation(conversation, NPC, Spawn, "Did ye hear that chanting on the wind when you strewed the ashes out from the crest of the Overlook?  That was the spirits of the coldain warriors, who are still standing their ground out there against the Ry'Gorr, singing yer praises.")
    elseif HasCompletedQuest(Spawn, ScatteringAshes) and not HasCompletedQuest(Spawn, TotemAnnihilation) and not HasQuest(Spawn, TotemAnnihilation) then
		Quest4Chat_1(NPC, Spawn)
    elseif GetQuestStep(Spawn, TotemAnnihilation) == 1 then
		PlayFlavor(NPC, "", "Don't expect the Ry'Gorr to let you destroy those totems without putting up a fight.", "no", 0, 0, Spawn)
    elseif GetQuestStep(Spawn, TotemAnnihilation) == 2 then
	    PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard045.mp3", "", "", 505634536, 3864498567, Spawn)
		AddConversationOption(conversation, "Completed, as promised.", "Quest4Chat_11")
		AddConversationOption(conversation, "Dirty work, but someone had to do it.", "Quest4Chat_11")
		AddConversationOption(conversation, "I did as you asked.  Thank goodness this foul business is over.", "Quest4Chat_11")
		StartConversation(conversation, NPC, Spawn, "Ach!  Ye've the stench of death upon ye, " .. GetName(Spawn) .. ". I suppose this means the task of dealing with the totems is complete?")
    elseif HasCompletedQuest(Spawn, TotemAnnihilation) and not HasCompletedQuest(Spawn, CallingBack) and not HasQuest(Spawn, CallingBack) then
	    PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard047.mp3", "", "", 4084660884, 3109121115, Spawn)
	    AddConversationOption(conversation, "What are these wards?", "Quest5Chat_1")
	    AddConversationOption(conversation, "I don't feel like my efforts are improving the overall situation.  Goodbye.")
	    StartConversation(conversation, NPC, Spawn, "I've some bad news, " .. GetName(Spawn) .. ".  The Ry'Gorr's scouts have been disabling our wards just as ye had been destroying their totems.")
    elseif  HasQuest(Spawn, CallingBack) and GetQuestStep(Spawn, CallingBack) ~= 6  then
		PlayFlavor(NPC, "", "Placing those wards should tip the scales back in our favor.", "", 0, 0, Spawn)
    elseif GetQuestStep(Spawn, CallingBack) == 6 then
		AddConversationOption(conversation, "The wards have been placed where they'll be most effective.", "Quest5Chat_12")
		AddConversationOption(conversation, "It was a trivial task.", "Quest5Chat_12")
		StartConversation(conversation, NPC, Spawn, "I was expecting yer return, and ye never disappoint. How did it go?")
	elseif HasCompletedQuest(Spawn, CallingBack) and not HasCompletedQuest(Spawn, TheGauntlet) and not HasQuest(Spawn, TheGauntlet) then
		Quest6Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheGauntlet) == 1 then
		PlayFlavor(NPC, "", "Find those bone piles, and grind them to dust.", "point", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, TheGauntlet) == 2 then
		AddConversationOption(conversation, "It's understandable.", "Quest7Chat_1")
		AddConversationOption(conversation, "Perhaps there's a better way to handle this problem.", "Quest7Chat_1")
		AddConversationOption(conversation, "Maybe we should strike out against the Ry'Gorr necromancers instead.", "Quest7Chat_1")
		StartConversation(conversation, NPC, Spawn, "Perhaps this was... not the best tactic. I'm sorry fer sending ye on a fool's errand, " .. GetName(Spawn) .. ". My zeal got the better of me.")
	elseif HasCompletedQuest(Spawn, TheGauntlet) and not HasCompletedQuest(Spawn, OffOssuary) and not HasQuest(Spawn, OffOssuary) then
		Quest7Chat_1(NPC, Spawn)
	elseif HasQuest(Spawn, OffOssuary) and GetQuestStep(Spawn, OffOssuary) < 3 then
		PlayFlavor(NPC, "", "Give those necromancers the sharp side of an axe, if ye find any.", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, OffOssuary) == 3 then
		PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard086.mp3", "", "", 4050788260, 2621206375, Spawn)
	    AddConversationOption(conversation, "Your information was correct.", "Quest7Chat_14")
	    AddConversationOption(conversation, "Yes, the necromancers were holed up in a cave in the Ossuary of Ice. ", "Quest7Chat_15")
	    StartConversation(conversation, NPC, Spawn, "I'm hoping for good news, and yet expecting the worst.  Tell me, " .. GetName(Spawn) .. ", did ye find them?")
	elseif HasCompletedQuest(Spawn, OffOssuary) and not HasCompletedQuest(Spawn, SeveringHead) and not HasQuest(Spawn, SeveringHead) then
	    Quest8Chat_1(NPC, Spawn)
	elseif HasQuest(Spawn, SeveringHead) and GetQuestStep(Spawn, SeveringHead) < 3 then
		PlayFlavor(NPC, "", "Destroy the source of those totems by breaking the dark crystal.", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, SeveringHead) == 3 then
		PlayFlavor(NPC, "", "", "cheer", 0, 0, Spawn)
		AddConversationOption(conversation, "I shattered the crystal, and slew their leader.", "Quest8Chat_10")
		AddConversationOption(conversation, "I severed your wurm's head, as promised.", "Quest8Chat_10")
		StartConversation(conversation, NPC, Spawn, "Ye've returned, and not a minute too soon!  The orcs are worked up into a frenzy over whatever ye just did.")
	elseif HasCompletedQuest(Spawn, SeveringHead) and not HasCompletedQuest(Spawn, NightmareOver) and not HasQuest(Spawn, NightmareOver) then
		Quest9Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, NightmareOver) == 1 then
		PlayFlavor(NPC, "", "Head to Cragged Spine. They're waiting for ye.", "point", 0, 0, Spawn)
	elseif HasCompletedQuest(Spawn, NightmareOver) then
		PlayFlavor(NPC, "", "Are ye sure ye don't have any blood of the Frostraver in ye?", "laugh", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard002.mp3", "", "", 3776851500, 329099171, Spawn)
	AddConversationOption(conversation, "How are they ambushing you, especially out in the open?", "Quest1Chat_2")
	AddConversationOption(conversation, "But... Erollis isn't very large.  You must know this place like the back of your hand.", "Quest1Chat_7")
	AddConversationOption(conversation, "I don't want your helplessness to rub off on me.  I must be going.")
	AddConversationOption(conversation, "Ambushing orcs?  I'm out of here!")
	StartConversation(conversation, NPC, Spawn, "The Ry'Gorr are ambushing our forces.  A dwarf can take an orc, toe to toe, in a fair fight, but there's nothing fair about catching us unawares.  A coldain caught in an ambush is at a distinct disadvantage.  Their surprise attacks are killing us out there, literally!")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard003.mp3", "", "", 505371253, 1091559275, Spawn)
	AddConversationOption(conversation, "Go on.", "Quest1Chat_3")
	AddConversationOption(conversation, "I believe I have somewhere else to be.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "That's what I was getting at.  And ye won't believe it.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard005.mp3", "", "", 2412101907, 2364424304, Spawn)
	AddConversationOption(conversation, "What do they say?", "Quest1Chat_4")
	AddConversationOption(conversation, "It sounds like you're about to tell me.", "Quest1Chat_4")
	AddConversationOption(conversation, "Why are we still talking? Just point me in the right direction.", "Quest1Chat_9")
	AddConversationOption(conversation, "Ambushing orcs?  I'm out of here!")
	StartConversation(conversation, NPC, Spawn, "They've engineered a method to render themselves impossible to see against the snow and ice; it's some kind of camouflage.  My soldiers are too afraid to go back out there.  You know what my men are saying?")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard007.mp3", "", "", 1117927681, 3213137385, Spawn)
	AddConversationOption(conversation, "It's a fear tactic, for sure.", "Quest1Chat_5")
	AddConversationOption(conversation, "No wonder your men don't want to go back out there.", "Quest1Chat_8")
	AddConversationOption(conversation, "Glimmer orcs?  I'm out of here!")
	StartConversation(conversation, NPC, Spawn, "They say, 'There'd be nothing but snow and ice, then a glimmer... then, you'd be dead!'")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard008.mp3", "", "", 3224987077, 1613729835, Spawn)
	AddConversationOption(conversation, "Agreed. ", "Quest1Chat_6")
	AddConversationOption(conversation, "You do what you have to in war.", "Quest1Chat_6")
	AddConversationOption(conversation, "Cowardice against cowardice?  I'm done here.")
	StartConversation(conversation, NPC, Spawn, "It's a cowardly tactic.  Unfortunately there's no way around this.  We're going to have to fight ice with ice.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard010.mp3", "", "", 1224830968, 3279150133, Spawn)
	AddConversationOption(conversation, "Of course.", "OfferGlimmerOrc")
	AddConversationOption(conversation, "I'm not putting myself in danger, based solely on a hunch.")
	StartConversation(conversation, NPC, Spawn, "We believe they're using the powder of the luminous snowflurries as makeshift camouflage.  If ye can collect some of the powder, perhaps we could replicate this.  Then we would have a fighting chance out there.  Think ye could bring some back?")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard004.mp3", "", "", 2795765225, 2030897405, Spawn)
	AddConversationOption(conversation, "What?  Are they invisible?", "Quest1Chat_3")
	AddConversationOption(conversation, "I believe I have somewhere else to be.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye, we do.  We know every rock, every hill, every nook, and every cranny of this frozen wasteland, which is what makes these ambushes so troubling.")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard009.mp3", "", "", 3087697550, 2303509094, Spawn)
	AddConversationOption(conversation, "I do, and I see what must be done.", "Quest1Chat_6")
	AddConversationOption(conversation, "What's the plan?", "Quest1Chat_6")
	AddConversationOption(conversation, "It's your problem, not mine.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye, ye see the problem we're facing now?")
end

function Quest1Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard006.mp3", "", "", 2420317196, 2002155131, Spawn)
	AddConversationOption(conversation, "I'm brave AND capable.", "Quest1Chat_10")
	AddConversationOption(conversation, "Don't underestimate me.", "Quest1Chat_10")
	AddConversationOption(conversation, "Don't insult my intelligence.  I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Oh, yer a go-getter, are ye?  Well, I hope yer filled with bravery and not stupidity, though can be hard to distinguish one from t'other.")
end

function Quest1Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard011.mp3", "", "", 2906385969, 2703354949, Spawn)
	AddConversationOption(conversation, "None taken.  So what's the plan?", "Quest1Chat_6")
	AddConversationOption(conversation, "I find that hard to believe.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "No need to get defensive now, " .. GetName(Spawn) .. ".  No offense was meant.")
end

function Quest1Chat_11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	converation = CreateConversation()
	
	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard013.mp3", "", "", 4055438067, 163416310, Spawn)
	AddConversationOption(conversation, "It wasn't easy.", "Quest1Chat_12")
	AddConversationOption(conversation, "Here's the glimmer dust.", "Quest1Chat_12")
	StartConversation(conversation, NPC, Spawn, "Welcome back, " .. GetName(Spawn) .. "!  Now, let's have a look-see at that glimmer powder ye've collected.")
end

function Quest1Chat_12(NPC, Spawn)
    SetStepComplete(Spawn, GlimmerOrc, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard014.mp3", "", "", 4267001042, 1944501293, Spawn)
	AddConversationOption(conversation, "I do whatever it takes to solve the problem.", "Quest1Chat_13")
	AddConversationOption(conversation, "I'm curious to find out if it works.", "Quest1Chat_13")
	StartConversation(conversation, NPC, Spawn, "This is exactly what we need, and plenty of it.  Oh, I've missed having someone like ye around.  So many young folks today just won't go that extra mile.")
end

function Quest1Chat_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard015.mp3", "", "", 3387435129, 3863442024, Spawn)
	AddConversationOption(conversation, "Take your time.")
	AddConversationOption(conversation, "Time is one thing we don't have.", "Quest2Chat_1")
	StartConversation(conversation, NPC, Spawn, "What am I?  The Amazing Randi?  We have tests to run.  It will take time.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard016.mp3", "", "", 3724550793, 3434645453, Spawn)
	AddConversationOption(conversation, "The orcs figured out how to solve that problem.", "Quest2Chat_2")
	AddConversationOption(conversation, "You must need a binding agent.", "Quest2Chat_4")
	AddConversationOption(conversation, "I feel like I did all that work for nothing.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well, this has solved half of our problem.  Flurry powder renders one nearly invisible in this environment, but the stuff doesn't stick.  Yer lucky if a gust of wind doesn't blow it clean off.  This won't do.  No, this won't do at all.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard017.mp3", "", "", 4140277139, 3688959754, Spawn)
	AddConversationOption(conversation, "Have you noticed the orcs gathering anything out of the ordinary?", "Quest2Chat_3")
	AddConversationOption(conversation, "I don't need your help.  I'm done here.")
	StartConversation(conversation, NPC, Spawn, "Aye, good thinking.  So we need to consider what the Ry'Gorr have been up to lately.  Unfortunately, our attentions have been focused on meeting them on the battlefield, when we should have been paying attention to their other activities.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard019.mp3", "", "", 1879917767, 2648322812, Spawn)
	AddConversationOption(conversation, "Just show me where to find them.", "OfferMurkyMystery")
	AddConversationOption(conversation, "That's our best bet?  It's worth a try.", "OfferMurkyMystery")
	AddConversationOption(conversation, "This is another shot in the dark.  I'm done here.")
	StartConversation(conversation, NPC, Spawn, "We've noticed that the orcs have been aggressive towards deepice miasmas.  There didn't appear to be any logical reason for it, until now.  The miasmas could hold another clue to the method of crafting this camouflage.")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard018.mp3", "", "", 829232573, 947350296, Spawn)
	AddConversationOption(conversation, "So where could we find that?", "Quest2Chat_3")
	AddConversationOption(conversation, "Have you noticed the orcs gathering anything out of the ordinary?", "Quest2Chat_3")
	AddConversationOption(conversation, "I don't need your help.  I'm done here.")
	StartConversation(conversation, NPC, Spawn, "So, yer an adventurer and a scholar!  I bet a binding agent is exactly what we need.")
end

function Quest2Chat_5(NPC, Spawn)
    SetStepComplete(Spawn, MurkyMystery, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard022.mp3", "", "", 4152966005, 2385582175, Spawn)
	AddConversationOption(conversation, "Now you're on even footing with the Ry'Gorr!", "Quest3Chat_1")
	AddConversationOption(conversation, "Your scouts will be able to pinpoint their ambushers.", "Quest3Chat_3")
	StartConversation(conversation, NPC, Spawn, "By Brell, it does work!  Yer a genius!")
end

function Quest3Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard023.mp3", "", "", 3394689570, 853009244, Spawn)
	AddConversationOption(conversation, "That is unfortunate, but you have to balance your priorities.", "Quest3Chat_2")
	AddConversationOption(conversation, "Is this something I can help with?", "Quest3Chat_2")
	AddConversationOption(conversation, "I'll leave you to your grief.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "And now that we're on even footing with the Ry'Gorr, we can afford to direct our attention to something a little more spiritual.  Unfortunately, the needs of our deceased have had to wait for a lull in the action.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard024.mp3", "", "", 888604358, 2919686664, Spawn)
	AddConversationOption(conversation, "I don't understand.  What do you mean by 'spirits'?", "Quest3Chat_3")
	AddConversationOption(conversation, "Of course.  You've done all you can.", "Quest3Chat_4")
	StartConversation(conversation, NPC, Spawn, "Aye, or else there would be more fallen coldain.  And as valiant as our brethren's spirits have been in the fight against the Ry'Gorr, it's an outcome we'd certainly prefer to avoid.")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard026.mp3", "", "", 3211985278, 3808356977, Spawn)
	AddConversationOption(conversation, "You want me to honor the dead?", "Quest3Chat_5")
	AddConversationOption(conversation, "Shouldn't one of the coldain honor them?")
	AddConversationOption(conversation, "One of the coldain should handle this.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Many of the coldain that fall in battle against the Ry'Gorr rise up again as spirits.  Instead of going to see Brell, they rejoin the fight.  This decision is a permanent one, which means they can never go to the Halls of the Creator once they come back here.  Their act of self-sacrifice and valor should not go unnoticed.")
end

function Quest3Chat_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation
	
	AddConversationOption(conversation, "Tell me more.", "Quest3Chat_3")
	AddConversationOption(conversation, "Your burdens are yours alone. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I'm not certain we've done everything we can, but then again I've always taken on more burdens than I can easily carry. There's someting else we can do, right now. If ye'll hear me out, maybe ye could even lend a hand.")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard027.mp3", "", "", 1974991098, 1800835214, Spawn)
	AddConversationOption(conversation, "I'd be honored to scatter their ashes.", "Quest3Chat_6")
	AddConversationOption(conversation, "You should have someone else honor your dead.", "Quest3Chat_7")
	StartConversation(conversation, NPC, Spawn, "Aye, it's the least we could do to respect their sacrifice.")
end

function Quest3Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard029.mp3", "", "", 1909973600, 750947925, Spawn)
	AddConversationOption(conversation, "I will do as you ask.", "OfferScatteringAshes")
	AddConversationOption(conversation, "I've changed my mind.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "This urn contains the ashes of the recently deceased.  I'd like ye to take them to the peak of Pride Overlook and scatter 'em to the winds.  The ashes will be carried out to sea.  Maybe part of them will find their way back to Velious, if it still exists.")
end

function Quest3Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard028.mp3", "", "", 564515719, 107243017, Spawn)
	AddConversationOption(conversation, "Thank you.  I'd be happy to help.", "Quest3Chat_6")
	AddConversationOption(conversation, "Like the Dain?  That's a wild exaggeration, but I appreciate the compliment.", "Quest3Chat_6")
	AddConversationOption(conversation, "I'd rather see a coldain honor his brethren.")
	StartConversation(conversation, NPC, Spawn, "I'd be perfectly happy to give this job to one of my brothers, but I'd rather you do it, " .. GetName(Spawn) .. ".  I trust ye.  Yer capable and ye fight like the Dain himself.")
end

function Quest3Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Fair enough.", "Quest3Chat_9")
	AddConversationOption(conversation, "Whatever. If you say so.", "Quest3Chat_9")
	StartConversation(conversation, NPC, Spawn, "Have a little faith. The spirits believe in us, or else they wouldn't be here. It's only fair to believe in them, in return.")
end

function Quest3Chat_9(NPC, Spawn)
	SetStepComplete(Spawn, ScatteringAshes, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard033.mp3", "", "", 935575101, 1863151637, Spawn)
	AddConversationOption(conversation, "You can deduce a lot about a people by how they revere their dead.", "Quest4Chat_1")
	AddConversationOption(conversation, "Let's hope that day is a long way off, Dolur.", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "Ye stuck by yer word, " .. GetName(Spawn) .. ".  When the day comes, I wouldn't mind if ye were the one to lay my remains to rest.")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard034.mp3", "", "", 4183445940, 2191855130, Spawn)
	AddConversationOption(conversation, "If you need to kill skeletons, I'm in.", "Quest4Chat_2")
	AddConversationOption(conversation, "How can I help?", "Quest4Chat_3")
	StartConversation(conversation, NPC, Spawn, "And now that ye've helped honor the spirits of the fallen, perhaps we can assist them in a more practical way.  The sooner our men have laid those Ry'Gorr skeletons to rest, the sooner they can rest themselves.")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard036.mp3", "", "", 183860181, 4160128753, Spawn)
	AddConversationOption(conversation, "Since when did Ry'Gorr orcs practice necromancy? ", "Quest4Chat_6")
	AddConversationOption(conversation, "I'd be interested in hearing your plans.", "Quest4Chat_4")
	AddConversationOption(conversation, "Headache?", "Quest4Chat_5")
	AddConversationOption(conversation, "This sounds a little too complicated.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye, I was hoping ye'd say that.  But, perhaps more important than killing... er... re-killing them, is keeping the blasted things down.  Those necromancers are causing us a real headache.")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard035.mp3", "", "", 3130799113, 3083892992, Spawn)
	AddConversationOption(conversation, "Since when did Ry'Gorr orcs practice necromancy?", "Quest4Chat_6")
	AddConversationOption(conversation, "I'd be interested in hearing your plans.", "Quest4Chat_4")
	AddConversationOption(conversation, "This sounds a little too complicated.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The Ry'Gorr necromancers are making sure that we have our work cut out for us.  Their skeletal minions won't stay down.  But we think there's a way we can deal with that.")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard038.mp3", "", "", 407410462, 3645301818, Spawn)
	AddConversationOption(conversation, "How do the totems affect the piles of bones?", "Quest4Chat_10")
	AddConversationOption(conversation, "The totems are used to raise the dead, aren't they?", "Quest4Chat_10")
	AddConversationOption(conversation, "I've heard enough.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Allow me to explain.  The orcs' dark art practitioners have whittled crude necromantic totems out of an unusually opaque black crystal.  They place these totems near piles of their dead, after they've burned all the flesh from their bones.")
end

function Quest4Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard042.mp3", "", "", 4130815346, 134791613, Spawn)
	AddConversationOption(conversation, "Please, no more details!")
	AddConversationOption(conversation, "That's too much information.")
	AddConversationOption(conversation, "For Brell's sake, stop right there!")
	StartConversation(conversation, NPC, Spawn, "And that's saying a lot, considering I once woke up behind the Velium Keg with a splitting headache and a snow bunny tattoo inked in an awkward place.")
end

function Quest4Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard037.mp3", "", "", 3050869770, 2588737006, Spawn)
	AddConversationOption(conversation, "I'd never heard of it, either.", "Quest4Chat_7")
	AddConversationOption(conversation, "Orcs are bad enough as it is.", "Quest4Chat_7")
	AddConversationOption(conversation, "I've heard enough.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Since now!  Until recently, we'd never even heard of an orcish necromancer.  Shaman or warrior types, certainly, but they've never been ones to dabble with the dead.  ")
end

function Quest4Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard039.mp3", "", "", 655322932, 2844698799, Spawn)
	AddConversationOption(conversation, "What do you think?", "Quest4Chat_8")
	AddConversationOption(conversation, "Sounds reasonable.", "Quest4Chat_9")
	AddConversationOption(conversation, "I don't want to get involved in this debate. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Unfortunately fer us, it looks like the orcs have picked up on the technique since becoming isolated on Erollis.  Rakan posited that they may have turned to necromancy as a direct response to seeing our coldain brethren return from the afterlife to fight them.")
end

function Quest4Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard040.mp3", "", "", 951980673, 4228422662, Spawn)
	AddConversationOption(conversation, "They are more resourceful than I had imagined.", "Quest4Chat_9")
	AddConversationOption(conversation, "Orcs are deplorable.", "Quest4Chat_9")
	AddConversationOption(conversation, "I don't want to get involved in this debate. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Hrmph.  Well, it's possible that they petitioned to one of the darker gods to grant them the ability.  Whatever the means, it stinks of an act of desperation.  There isn't much opportunity to grow and replenish their ranks without resorting to raising their dead.")
end

function Quest4Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard043.mp3", "", "", 845201538, 1152092745, Spawn)
	AddConversationOption(conversation, "How do you propose we 'deal' with them?", "Quest4Chat_4")
	AddConversationOption(conversation, "I can think of a reason to leave.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "In the end, I don't suppose the reason matters much.  There are no depths they won't sink to in order to win this battle.  It is what it is, and we have to deal with what's in front of us. ")
end

function Quest4Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard041.mp3", "", "", 2628510482, 3371068278, Spawn)
	AddConversationOption(conversation, "I can do that.", "OfferTotemAnnihilation")
	AddConversationOption(conversation, "That's a sound plan.", "OfferTotemAnnihilation")
	AddConversationOption(conversation, "This is a temporary solution, at best.  I'll be going.")
	StartConversation(conversation, NPC, Spawn, "And sure as Brell is my maker, dreadful skeletons rise up out of the piles, ready to fight again.  I expect that destroying those totems will slow down the production of undead.")
end

function Quest4Chat_11(NPC, Spawn)
	SetStepComplete(Spawn, TotemAnnihilation, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard046.mp3", "", "", 1320158668, 3505958307, Spawn)
	AddConversationOption(conversation, "Very funny.")
	AddConversationOption(conversation, "That's not much of a consolation.")
	AddConversationOption(conversation, "There's a silver lining in every cloud, eh?")
	StartConversation(conversation, NPC, Spawn, "I suppose we should be thankful that the weather isn't warm here, or ye'd really stink.")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard048.mp3", "", "", 1791567214, 1786988911, Spawn)
	AddConversationOption(conversation, "That sounds very similar to the Ry'Gorr's necromantic totems.", "Quest5Chat_2")
	AddConversationOption(conversation, "Do the coldain spirits have any choice in the matter?", "Quest5Chat_7")
	AddConversationOption(conversation, "Speaking of which, my assistance is needed elsewhere. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The wards are beacons that allow a coldain's spirit to return to this world, and remain here, so long as their assistance is needed on the battlefield.")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard049.mp3", "", "", 2886126619, 111361298, Spawn)
	AddConversationOption(conversation, "Tell me more.", "Quest5Chat_3")
	AddConversationOption(conversation, "This discussion tires me. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The important difference being that the coldain spirits retain their will and conscience.  They aren't controlled by dark magic.")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard051.mp3", "", "", 3697109059, 807407603, Spawn)
	AddConversationOption(conversation, "It doesn't sound like abandoning their surviving allies is a choice at all.", "Quest5Chat_4")
	AddConversationOption(conversation, "I'm glad to hear that it isn't forced servitude.", "Quest5Chat_8")
	AddConversationOption(conversation, "What is and what isn't 'dark magic' is all a matter of perspective.", "Quest5Chat_10")
	AddConversationOption(conversation, "Sounds like we're arguing over semantics, which is a waste of my time and yours.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Our brethren don't have to return to the field of battle unless they choose to do so.  Of course, valor in the face of overwhelming opposition isn't unusual for the coldain.  Most dwarves opt to follow the light from the ward's beacon and return to Norrath.")
end

function Quest5Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard052.mp3", "", "", 2567924057, 453022525, Spawn)
	AddConversationOption(conversation, "You know I wish to help.", "Quest5Chat_5")
	AddConversationOption(conversation, "I help because we're both getting something out of this.", "Quest5Chat_11")
	AddConversationOption(conversation, "I'm walking.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "There's always a choice, " .. GetName(Spawn) .. ".  Just as you could choose to help us again, or choose to walk away.")
end

function Quest5Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard056.mp3", "", "", 721262634, 1165992998, Spawn)
	AddConversationOption(conversation, "How will I know where this barrier between worlds is 'thin'?", "Quest5Chat_6")
	AddConversationOption(conversation, "How were the wards disabled?", "Quest5Chat_9")
	AddConversationOption(conversation, "If I continue working tasks for you, I'm certain to find the spirit realm, myself.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The wards that were disabled need to be replaced.  Furthermore, they must be placed in areas where the barrier between our world and the spirit realm is 'thin'.")
end

function Quest5Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard057.mp3", "", "", 3375420535, 3459651835, Spawn)
	AddConversationOption(conversation, "The sooner I begin, the better.", "OfferCallingBack")
	AddConversationOption(conversation, "I am no longer interested.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The coldain spirits have indicated as such.  They've etched designs in the snow indicating the best locations for the wards.  The spirits have seen both sides, after all, so they would know.")
end

function Quest5Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard050.mp3", "", "", 1997222652, 757650652, Spawn)
	AddConversationOption(conversation, "Tell me more.", "Quest5Chat_3")
	AddConversationOption(conversation, "This discussion tires me. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Of course.  This isn't dark magic.  The wards merely allow the dwarves' spirits to return by showing them the way.")
end

function Quest5Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard053.mp3", "", "", 61355934, 928420648, Spawn)
	AddConversationOption(conversation, "Tell me how I can help.", "Quest5Chat_5")
	AddConversationOption(conversation, "I'll be the judge of that.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Of course it isn't.")
end

function Quest5Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard058.mp3", "", "", 865813729, 1073348208, Spawn)
	AddConversationOption(conversation, "I see.  And how will I know where this barrier between worlds is 'thin'?", "Quest5Chat_6")
	AddConversationOption(conversation, "So you need these wards replaced, then?", "OfferCallingBack")
	AddConversationOption(conversation, "I have no wish to assist in raising the dead.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Hmm... I can't say for sure, but I imagine they were disabled in much the same way that you destroyed their necromancers' totems:  the orcs broke them.  Our wards were probably smashed under some Ry'Gorr's hammer.")
end

function Quest5Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard054.mp3", "", "", 3731109771, 1471852014, Spawn)
	AddConversationOption(conversation, "Fine.  I'll be leaving.")
	AddConversationOption(conversation, "You're awfully touchy.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Says ye.  I think ye'd best be leaving, " .. GetName(Spawn) .. ", before I lose my temper.")
end

function Quest5Chat_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Of course not. How can I help?", "Quest5Chat_5")
	AddConversationOption(conversation, "The jury is still out on that, but I'm willing to help today.", "Quest5Chat_5")
	AddConversationOption(conversation, "I do feel underappreciated. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "It's a mutually beneficial relationship, certainly. I just hope ye don't feel I'm taking advantage of yer kindness, or vice versa.")
end

function Quest5Chat_12(NPC, Spawn)
	SetStepComplete(Spawn, CallingBack, 6)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I hope we can tip the scales even futher.", "Quest5Chat_13")
	AddConversationOption(conversation, "Is there anything else I can do to help, Dolur?", "Quest6Chat_1")
	AddConversationOption(conversation, "I hope you have some real work for me, next time.", "Quest5Chat_13")
	StartConversation(conversation, NPC, Spawn, "That'll tip the scales back in our favor! Well done, " .. GetName(Spawn) .. "")
end

function Quest5Chat_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard062.mp3", "", "", 1933886797, 2300926566, Spawn)
	AddConversationOption(conversation, "Tell me more.", "Quest6Chat_1")
	AddConversationOption(conversation, "What nightmares?", "Quest6Chat_1")
	StartConversation(conversation, NPC, Spawn, "I hope so too, " .. GetName(Spawn) .. ".  There's the business of my nightmares I'd like to speak to ye about.")
end

function Quest6Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard063.mp3", "", "", 3479422497, 420666487, Spawn)
	AddConversationOption(conversation, "Ah, that would be frightful.", "Quest6Chat_2")
	AddConversationOption(conversation, "It's only a dream, right?", "Quest6Chat_2")
	AddConversationOption(conversation, "I have no time to analyze your dreams.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I'm in constant fear for our unseasoned coldain fighters, " .. GetName(Spawn) .. ".  When I close my eyes, I can see them faltering.  ")
end

function Quest6Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard064.mp3", "", "", 884503499, 3365458147, Spawn)
	AddConversationOption(conversation, "What else do you see in your dreams?", "Quest6Chat_3")
	AddConversationOption(conversation, "Can I do something to help?", "Quest6Chat_4")
	AddConversationOption(conversation, "This is a little too familiar and creepy.  I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "In my dreaming sleep, I stand frozen in the midst of the fracas, watching helplessly as another green warrior is about to die.")
end

function Quest6Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard065.mp3", "", "", 1112528692, 1589230613, Spawn)
	AddConversationOption(conversation, "That's not far from what's actually happening.", "Quest6Chat_6")
	AddConversationOption(conversation, "Someone should destroy those bone piles.", "Quest6Chat_4")
	AddConversationOption(conversation, "This is a little too familiar and creepy.  I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "I'm in a maze of long hallways.  There are mounds of bone, strewn about haphazardly.  Scores of cackling undead spawn from the piles and mill about.")
end

function Quest6Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard066.mp3", "", "", 2614901969, 1124964549, Spawn)
	AddConversationOption(conversation, "How would I go about doing that? ", "Quest6Chat_5")
	AddConversationOption(conversation, "Destroying a pile of ossified bone isn't easy.", "Quest6Chat_5")
	AddConversationOption(conversation, "Perhaps I'm not the right person for the job, after all.")
	StartConversation(conversation, NPC, Spawn, "Aye.  Someone should get out there and destroy the monster generators.  Does this mean yer volunteering, " .. GetName(Spawn) .. "?")
end

function Quest6Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard068.mp3", "", "", 3330795351, 440398686, Spawn)
	AddConversationOption(conversation, "You don't have to worry anymore.", "OfferTheGauntlet")
	AddConversationOption(conversation, "Of course.  I'd love to help.", "OfferTheGauntlet")
	AddConversationOption(conversation, "This is a really bad idea.")
	StartConversation(conversation, NPC, Spawn, "Use yer weaponry, a heavy rock, or your bare fists, if that's all ye have on hand.  I don't care, so long as they've been ground into a dust-like powder.  Only then will the Ry'Gorr skeletons trouble us no longer.")
end

function Quest6Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard067.mp3", "", "", 3225906480, 630261154, Spawn)
	AddConversationOption(conversation, "Someone should destroy those bone piles.", "Quest6Chat_4")
	AddConversationOption(conversation, "I must be leaving.")
	StartConversation(conversation, NPC, Spawn, "And that's what disturbs me the most, " .. GetName(Spawn) .. ".")
end

function Quest7Chat_1(NPC, Spawn)
	SetStepComplete(Spawn, TheGauntlet, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard072.mp3", "", "", 1784529, 3849185180, Spawn)
	AddConversationOption(conversation, "What about disabling the totems?","Quest7Chat_2")
	AddConversationOption(conversation, "Even replacing the spirit wards didn't help?", "Quest7Chat_10")
	AddConversationOption(conversation, "I managed to smash several skeletons into tiny bits.", "Quest7Chat_13")
	AddConversationOption(conversation, "Well, if my efforts haven't been helpful, I'll go be of more use elsewhere.")
	StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. ", the worst part of this nightmare is feeling utterly helpless.  The Ry'Gorr forces are as strong as ever.  And to be completely honest, yer efforts haven't helped us gain much ground.")
end

function Quest7Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard073.mp3", "", "", 2943845017, 2205345789, Spawn)
	AddConversationOption(conversation, "Oh, I see.", "Quest7Chat_3")
	AddConversationOption(conversation, "This is helpless!  I quit.")
	StartConversation(conversation, NPC, Spawn, "What about it?  The orcs took to disabling our wards while ye were smashing up their totems, and they're making more of the blasted things as we speak.")
end

function Quest7Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard076.mp3", "", "", 3845015927, 2518600901, Spawn)
	AddConversationOption(conversation, "What did you have in mind?", "Quest7Chat_4")
	AddConversationOption(conversation, "I could look for the necromancers.", "Quest7Chat_11")
	AddConversationOption(conversation, "I've already bled enough for your goals.  Count me out.")
	StartConversation(conversation, NPC, Spawn, "Yer efforts, while valiant, aren't having a lasting impact on their skeletal horde.  And the constant assault of undead is wearing us down.  We've gone about this plan of attack all sideways, if ye ask me.  A more precision strike is in order.")
end

function Quest7Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard077.mp3", "", "", 3800804769, 3084250948, Spawn)
	AddConversationOption(conversation, "Makes sense.", "Quest7Chat_5")
	AddConversationOption(conversation, "But where are they hiding?", "Quest7Chat_5")
	AddConversationOption(conversation, "I'd rather not venture into the proverbial lion's den.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The orcish necromancers are the ultimate source of the undead army.  Ye need to locate them.")
end

function Quest7Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard079.mp3", "", "", 4093864666, 2060412696, Spawn)
	AddConversationOption(conversation, "Any other reports?", "Quest7Chat_6")
	AddConversationOption(conversation, "I'll figure this out without their help.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "My scouts are giving me conflicting information.  Mapin thinks they're back behind a snowdrift on Ry'Gorr Isle.  Letke thought he saw a cadre of necromancer types gathering on a floating chunk of ice off to the northwest.")
end

function Quest7Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard080.mp3", "", "", 1837622160, 4089784009, Spawn)
	AddConversationOption(conversation, "Ugh.  So which is it?", "Quest7Chat_7")
	AddConversationOption(conversation, "Ol' Blizzardbeard?", "Quest7Chat_12")
	AddConversationOption(conversation, "When you get your intelligence in order, let me know.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye.  Ol' Blizzardbeard is under the impression that they're simply working their dark magic out in the open, carving the totems under cover of night when we're not looking.")
end

function Quest7Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard082.mp3", "", "", 4103645790, 7293030, Spawn)
	AddConversationOption(conversation, "That sounds more plausible.", "Quest7Chat_8")
	AddConversationOption(conversation, "No wonder it's been hard to find.", "Quest7Chat_8")
	AddConversationOption(conversation, "This sounds like a waste of my time.")
	StartConversation(conversation, NPC, Spawn, "The most reliable reconnoitering we have, as confirmed by scout Dansk and scout Clawhammer, indicates that the necromancers have holed up in a natural cavern.  The cave is on an island off the coast to the southwest.")
end

function Quest7Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard083.mp3", "", "", 2366031645, 641653492, Spawn)
	AddConversationOption(conversation, "These orcs are wily.  Their behavior defies expectations.", "Quest7Chat_9")
	AddConversationOption(conversation, "They've had more than enough time to fortify the area and make it inhabitable.", "Quest7Chat_9")
	AddConversationOption(conversation, "The last place you'd look will be the first place they'd hide.", "Quest7Chat_9")
	AddConversationOption(conversation, "If you're not even certain the Ry'Gorr necromancers are in there, I'll spend my time elsewhere.")
	StartConversation(conversation, NPC, Spawn, "It's the last place I would have expected to find them.  Even if it weren't orcish territory, that area is treacherously difficult to navigate, and prone to cave-ins.  We had considered it too dangerous to explore.")
end

function Quest7Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard084.mp3", "", "", 4243043314, 1523140445, Spawn)
	AddConversationOption(conversation, "Of course.", "OfferOffOssuary")
	AddConversationOption(conversation, "I'll see this through to the end.", "OfferOffOssuary")
	AddConversationOption(conversation, "Though your scouts' information may not be accurate, it's still the best lead we've got.", "OfferOffOssuary")
	AddConversationOption(conversation, "If you're not certain the Ry'Gorr necromancers are in there, I'll not waste my time.")
	StartConversation(conversation, NPC, Spawn, "Aye, the lead is solid.  I'm sorry to burden ye with another grim task, especially when the outcome is uncertain, but could I count on ye to explore this cavern?")
end

function Quest7Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard074.mp3", "", "", 3668194887, 51910928, Spawn)
	AddConversationOption(conversation, "Oh, I see.", "Quest7Chat_3")
	AddConversationOption(conversation, "This is helpless!  I quit.")
	StartConversation(conversation, NPC, Spawn, "It kept us on equal footing with them, at best.")
end

function Quest7Chat_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard078.mp3", "", "", 571602465, 4229451174, Spawn)
	AddConversationOption(conversation, "As always, we're on the same page.", "Quest7Chat_5")
	AddConversationOption(conversation, "Any idea where they could be hiding?", "Quest7Chat_5")
	AddConversationOption(conversation, "I'll figure this out on my own. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "That was my thought, precisely.")
end

function Quest7Chat_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard081.mp3", "", "", 3792358161, 1911808576, Spawn)
	AddConversationOption(conversation, "Sounds like he's what you'd call a drunkard.", "Quest7Chat_7")
	AddConversationOption(conversation, "Well, do you have any reliable information?", "Quest7Chat_7")
	AddConversationOption(conversation, "Oh, this is such a waste of time!  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well, heh.  That's not his real name.  We just took to calling him that since he has ale suds in his beard more often than not.  He's not what ye'd call reliable.")
end

function Quest7Chat_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard075.mp3", "", "", 2950142669, 2951966236, Spawn)
	AddConversationOption(conversation, "Oh, I see.", "Quest7Chat_3")
	AddConversationOption(conversation, "This is helpless!  I quit.")
	StartConversation(conversation, NPC, Spawn, "Aye, and there will be plenty extra where those came from.  Point of fact, there are more bones on the battlefield than ice floes in Iceclad.")
end

function Quest7Chat_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard087.mp3", "", "", 2455437379, 1149838635, Spawn)
	AddConversationOption(conversation, "I did, but there will be more of them.", "Quest7Chat_15")
	AddConversationOption(conversation, "Yes, but there are necromancers all over the Ossuary of Ice.", "Quest7Chat_15")
	StartConversation(conversation, NPC, Spawn, "Aye!  So it was correct.  It looks like I owe Dansk and Clawhammer a whole keg of ale for their keen eyes. Brell bless 'em.  And were ye able to give the necromancers a sound beating?")
end

function Quest7Chat_15(NPC, Spawn)
	SetStepComplete(Spawn, OffOssuary, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard088.mp3", "", "", 191733965, 1473786520, Spawn)
	AddConversationOption(conversation, "Figuratively speaking, of course.", "Quest8Chat_1")
	AddConversationOption(conversation, "So, I'll be heading back to the Ossuary?", "Quest8Chat_1")
	StartConversation(conversation, NPC, Spawn, "Well then.  How about we cut off the head of the frost wurm?")
end

function Quest8Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard089.mp3", "", "", 1399173958, 925064684, Spawn)
	AddConversationOption(conversation, "We need to sever the head of this frost wurm.", "Quest8Chat_2")
	AddConversationOption(conversation, "We need to find and slay their leader.", "Quest8Chat_2")
	AddConversationOption(conversation, "I've already been in there once.  Count me out.")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. ", ye've managed to pinpoint the heart of the Ry'Gorr's operations.  This is a most fortunate turn of events.  Armed with this information, we stand a chance to take back Erollis from the orcs for good.  But before we start celebrating...")
end

function Quest8Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard090.mp3", "", "", 3782002158, 339970398, Spawn)
	AddConversationOption(conversation, "What should I look for?", "Quest8Chat_3")
	AddConversationOption(conversation, "How will I know when I've found the leader?", "Quest8Chat_3")
	AddConversationOption(conversation, "I've already been in there once and I'd rather not go back.  Count me out.")
	StartConversation(conversation, NPC, Spawn, "And that means heading back to the Ossuary of Ice.  But this time, ye'll be on the lookout for their leader and whatever tools he's using to manufacture the totems.")
end

function Quest8Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard091.mp3", "", "", 1275705451, 1277532421, Spawn)
	AddConversationOption(conversation, "What are they doing?", "Quest8Chat_4")
	AddConversationOption(conversation, "Why would they stand around the crystal?", "Quest8Chat_4")
	AddConversationOption(conversation, "I never really liked Dark Crystal.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I've had this recurring vision, and now it makes sense.  In my dreams, I see an unholy crystal, jutting out of the ice like a festering claw.  The Ry'Gorr necromancers stand around the crystal.  ")
end

function Quest8Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard092.mp3", "", "", 420466205, 1714342326, Spawn)
	AddConversationOption(conversation, "And you think their leader can be found near the crystal?", "Quest8Chat_5")
	AddConversationOption(conversation, "Your dreams give me the creeps.")
	StartConversation(conversation, NPC, Spawn, "They worship it, day and night.  From that dark crystal have they hewn out their dark totems, for dark purposes.")
end

function Quest8Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard093.mp3", "", "", 4158777866, 37202239, Spawn)
	AddConversationOption(conversation, "He must be driven.", "Quest8Chat_6")
	AddConversationOption(conversation, "He must be mad.", "Quest8Chat_6")
	AddConversationOption(conversation, "I must be going.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye.  Now that ye've found the crystal, he needs to protect it.  He stands over it, tirelessly.  He never sleeps.  I can see his reflection in the crystal.  His eyes burn with purpose.")
end

function Quest8Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard094.mp3", "", "", 4080806581, 1372886220, Spawn)
	AddConversationOption(conversation, "While I'm there, I may as well destroy that crystal.", "Quest8Chat_7")
	AddConversationOption(conversation, "Anything else?", "Quest8Chat_7")
	AddConversationOption(conversation, "I don't feel like my efforts are appreciated.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "He must be eliminated.  Only by dealing with their fearless leader will we see any reprieve out here on the battlefield.  Ye've seen firsthand that other tactics are ultimately ineffective.")
end

function Quest8Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard095.mp3", "", "", 4108326370, 3849804225, Spawn)
	AddConversationOption(conversation, "What do you think the crystal is made of?", "Quest8Chat_8")
	AddConversationOption(conversation, "What is the crystal?", "Quest8Chat_8")
	AddConversationOption(conversation, "I don't want to touch the foul thing.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Yes. After ye've dealt with the source of their leadership, ye'll want to destroy the source of those totems.  Break the crystal.")
end

function Quest8Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard096.mp3", "", "", 568891414, 964093809, Spawn)
	AddConversationOption(conversation, "That's terrifying.", "Quest8Chat_9")
	AddConversationOption(conversation, "Whatever it is, it must be destroyed.", "Quest8Chat_9")
	AddConversationOption(conversation, "On second thought, perhaps this isn't the job for me.")
	StartConversation(conversation, NPC, Spawn, "I'm not certain, but if I had to guess... I'd say it's a piece of the sky that came raining down upon us that fateful day that we were separated from the rest of Velious.  I'd say it's a piece of Luclin.")
end

function Quest8Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard097.mp3", "", "", 1964889828, 3937802389, Spawn)
	AddConversationOption(conversation, "I'll put an end to your nightmares.", "OfferSeveringHead")
	AddConversationOption(conversation, "I'll sever the head of this wurm, as you put it.", "OfferSeveringHead")
	AddConversationOption(conversation, "It sounds like another waste of time.  Goodbye. ")
	StartConversation(conversation, NPC, Spawn, "How does that sound?")
end

function Quest8Chat_10(NPC, Spawn)
	SetStepComplete(Spawn, SeveringHead, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'm glad to have helped.", "Quest9Chat_1")
	AddConversationOption(conversation, "So, do you need any more help?", "Quest9Chat_1")
	StartConversation(conversation, NPC, Spawn, "I wish I could have been there to see the looks on thier tooth-grinned faces.  Haha!  It must have been a sight to behold. And now their forced run around like helpless, leaderless, axe-fodder.")
end

function Quest9Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'm fairly sure.", "Quest9Chat_2")
	AddConversationOption(conversation, "Your flattery will be the death of me, Dolur.", "Quest9Chat_2")
	StartConversation(conversation, NPC, Spawn, "Are ye sure ye don't have any Frostreaver blood in ye, " .. GetName(Spawn) .. "?")
end

function Quest9Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'm just glad it's over.", "Quest9Chat_3")
	AddConversationOption(conversation, "A few missteps are to be expected.", "Quest9Chat_3")
	AddConversationOption(conversation, "War is rarely clean or predictable.", "Quest9Chat_3")
	AddConversationOption(conversation, 'What you call "trial and error," I call "dangerous and sloppy."')
	StartConversation(conversation, NPC, Spawn, "I've got an itching to make ye an honorary member of my family!  Ye've turned this whole battle around, and though there was a bit of trial and error to the process, 'tis the end result that matters.")
end

function Quest9Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'd be happy to help.", "OfferNightmareOver")
	AddConversationOption(conversation, "I will head over right away.", "OfferNightmareOver")
	AddConversationOption(conversation, "I could use a break, actually. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Yer welcome to stay here and celebrate, but I'd say yer handiwork will be needed more elsewhere.  The men in Cragged Spine could use someone with yer tenacity. What do ye say?")
end	

function OfferGlimmerOrc(NPC, Spawn)
    OfferQuest(NPC, Spawn, GlimmerOrc)
end

function OfferMurkyMystery(NPC, Spawn)
    OfferQuest(NPC, Spawn, MurkyMystery)
end

function OfferScatteringAshes(NPC, Spawn)
    OfferQuest(NPC, Spawn, ScatteringAshes)
end

function OfferTotemAnnihilation(NPC, Spawn)
	OfferQuest(NPC, Spawn, TotemAnnihilation)
end

function OfferCallingBack(NPC, Spawn)
	OfferQuest(NPC, Spawn, CallingBack)
end

function OfferTheGauntlet(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheGauntlet)
end

function OfferOffOssuary(NPC, Spawn)
	OfferQuest(NPC, Spawn, OffOssuary)
end

function OfferSeveringHead(NPC, Spawn)
	OfferQuest(NPC, Spawn, SeveringHead)
end

function OfferNightmareOver(NPC, Spawn)
	OfferQuest(NPC, Spawn, NightmareOver)
end