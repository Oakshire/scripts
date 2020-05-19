--[[
	Script Name	: SpawnScripts/FrostfangSea/BattlepriestHerga.lua
	Script Purpose	: Battlepriest Herga 
	Script Author	: theFoof
	Script Date	: 2013.06.04
	Script Notes	: 
--]]

local LooseningGrip = 51

local TheCharge = 52

local SiegeOver = 53

local ForsakingGrave = 54

local AllRemains = 55

function spawn(NPC)
	ProvidesQuest(NPC, LooseningGrip)
	ProvidesQuest(NPC, TheCharge)
	ProvidesQuest(NPC, SiegeOver)
	ProvidesQuest(NPC, ForsakingGrave)
	ProvidesQuest(NPC, AllRemains)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, LooseningGrip) and not HasQuest(Spawn, LooseningGrip) then
	    PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga001.mp3", "", "", 2876924371, 439822818, Spawn)
		AddConversationOption(conversation, "Gadzooks!  You're a ghost!  And I'm leaving now, goodbye!")
		AddConversationOption(conversation, "I am " .. GetName(Spawn) .. ", and I'm looking for work, not a story.  Give me a task to do!", "OfferLooseningGrip")
		AddConversationOption(conversation, "I am " .. GetName(Spawn) .. ".  Who are you, and what is your story?", "Quest1Chat_1")
		StartConversation(conversation, NPC, Spawn, "Who approaches?  Who dares to disturb the Battlepriest?")
	elseif GetQuestStep(Spawn, LooseningGrip) == 1 then
		PlayFlavor(NPC, "", "Remove the claws. Loosen their grip upon our land.", "sarcasm", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, LooseningGrip) == 2 then
		PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga011.mp3", "", "", 3711122888, 4098682136, Spawn)
		AddConversationOption(conversation, "I cut the lines tethering the spears to Ry'Gorr Isle.", "Quest1Chat_8")
		AddConversationOption(conversation, "I have done as you asked.", "Quest1Chat_8")
		StartConversation(conversation, NPC, Spawn, "I sense that the Ry'Gorr's grip upon our land has lessened.")
	elseif HasCompletedQuest(Spawn, LooseningGrip) and not HasCompletedQuest(Spawn, TheCharge) and not HasQuest(Spawn, TheCharge) then
		Quest2Chat_1(NPC, Spawn)
	elseif HasQuest(Spawn, TheCharge) and GetQuestStep(Spawn, TheCharge) < 4 then
		PlayFlavor(NPC, "", "The orcs cling to their foothold on the floating rock named Ry'Gorr isle, west of Erollis.", "agree", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, TheCharge) == 4 then
		PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga019.mp3", "", "", 3475035366, 1640801191, Spawn)
		AddConversationOption(conversation, "I have defeated the orcs, as promised.", "Quest2Chat_6")
		AddConversationOption(conversation, "Are you finishing the story you began earlier?", "Quest2Chat_6")
		StartConversation(conversation, NPC, Spawn, "The memories of that battle are as clear as if they'd happened yesterday.  And echoes of that battle resonate to this day.")
	elseif HasCompletedQuest(Spawn, TheCharge) and not HasCompletedQuest(Spawn, SiegeOver) and not HasQuest(Spawn, SiegeOver) then
		Quest3Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, SiegeOver) == 1 then
		PlayFlavor(NPC, "", "The orcs have manufactured crude ballistae, and aimed them at our shores.", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, SiegeOver) == 2 then
		PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga030.mp3", "", "", 1190652772, 2390505398, Spawn)
		AddConversationOption(conversation, "I destroyed the ballistae, as promised.", "Quest3Chat_4")
		AddConversationOption(conversation, "It sounds like you're continuing your story.  What happened next?", "Quest3Chat_4")
		AddConversationOption(conversation, "The siege weapons have been eliminated.", "Quest3Chat_4")
		StartConversation(conversation, NPC, Spawn, "To my surprise, I was still breathing.  I crouched, unseen, behind their lines.  The opportunity to scatter the orcs' formation was within my grasp.")
	elseif HasCompletedQuest(Spawn, SiegeOver) and not HasCompletedQuest(Spawn, ForsakingGrave) and not HasQuest(Spawn, ForsakingGrave) then
		Quest4Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, ForsakingGrave) == 1 then
		PlayFlavor(NPC, "", "The Ry'Gorr skeletons long for no repose or reward. They simply exist to serve.", "agree", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, ForsakingGrave) == 2 then
		PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga045.mp3", "", "", 776768426, 2553961972, Spawn)
    	AddConversationOption(conversation, "I have eliminated several skeletons on the Forbidden Ossuary of Ice.", "Quest4Chat_5")
	    AddConversationOption(conversation, "I'd like to hear the rest of your story.  What happened next?", "Quest4Chat_5")
    	StartConversation(conversation, NPC, Spawn, "I sense that the skeletal abominations have been destroyed.")
	elseif HasCompletedQuest(Spawn, ForsakingGraves) and not HasCompletedQuest(Spawn, AllRemains) and not HasQuest(Spawn, AllRemains) then
		Quest5Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, AllRemains) == 1 then
		PlayFlavor(NPC, "", "Ye would honor this Battlepriest if ye could recover her helm.", "agree", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, AllRemains) == 4 then
		AddConversationOption(conversation, "What name would that be?", "Quest5Chat_4")
		AddConversationOption(conversation, "Go on, Herga.", "Quest5Chat_4")
		AddConversationOption(conversation, 'Is that name, by any chance, "lackey"?', "Quest5Chat_4")
		StartConversation(conversation, NPC, Spawn, "Ye've returned with the helmet, a relic passed down by my ancestors from the days when we fought with giants.  And for yer efforts, I have one final name for ye.")
	elseif HasCompletedQuest(Spawn, AllRemains) then
	    PlayFlavor(NPC, "", "Hello again, Friend of Thurga.", "", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga002.mp3", "", "", 3498579726, 1445907675, Spawn)
	AddConversationOption(conversation, "Ah, the choke is named after you.", "Quest1Chat_2")
	AddConversationOption(conversation, "That's a mouthful.", "Quest1Chat_5")
	AddConversationOption(conversation, "What do you mean by 'Thrice Slain'?", "Quest1Chat_3")
	AddConversationOption(conversation, "You lost me at 'Greetings.'  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Greetings, " .. GetName(Spawn) .. ".  I am Herga: Battlepriest of the Coldain, Master Tactician, Ouster of the Orcs, Leader of the Siege Upon the Choke, and She Who Was Thrice Slain.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga004.mp3", "", "", 446943, 1149478700, Spawn)
	AddConversationOption(conversation, "What do you mean?", "Quest1Chat_3")
	AddConversationOption(conversation, "I see.  Words are merely symbols.", "Quest1Chat_7")
	AddConversationOption(conversation, "I don't understand you.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The name is unimportant.  It is the deed that matters.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga006.mp3", "", "", 2461956836, 4011637342, Spawn)
	AddConversationOption(conversation, "I see...", "Quest1Chat_4")
	AddConversationOption(conversation, "Ah, you're not going to tell me.", "Quest1Chat_4")
	AddConversationOption(conversation, "I don't understand you.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "All in due time.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga008.mp3", "", "", 3901524477, 2476733850, Spawn)
	AddConversationOption(conversation, "I could deal with the Ry'Gorr for you.", "OfferLooseningGrip")
	AddConversationOption(conversation, "Why don't you deal with the Ry'Gorr yourself?", "Quest1Chat_6")
	AddConversationOption(conversation, "The troubles of your people are no problem of mine.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The battle for the choke rages on.  The Ry'Gorr still cling to hope and they still yearn for revenge.  They cast their claws upon the mainland of Erollis.  They prowl the icy plains.  They trouble my people.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga005.mp3", "", "", 3500318705, 1278765426, Spawn)
	AddConversationOption(conversation, "Where did you get all of these names?", "Quest1Chat_3")
	AddConversationOption(conversation, "Okay, okay, okay...")
	StartConversation(conversation, NPC, Spawn, "Also: Champion of the Iceclad Offensive, Unwitting Pilgrim of the Lost Dwarves, She Who Shall Never Find Repose, Bear-Wrestler, Giant-Slayer, Wurm-Slayer, Bane of the Unliving, Explorer of the  .. GetName(Spawn) ..  of Veeshan...")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga009.mp3", "", "", 806621839, 625277708, Spawn)
	AddConversationOption(conversation, "Ah, you're barely here.  Well, I could deal with the Ry'Gorr.", "OfferLooseningGrip")
	AddConversationOption(conversation, "I refuse to do your bidding.  Goodbye.")
	AddConversationOption(conversation, "I'm not interested in helping a ghost.")
	StartConversation(conversation, NPC, Spawn, "My grasp upon this world is tenuous.  I can no longer interfere personally.")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga007.mp3", "", "", 563806533, 3464673073, Spawn)
	AddConversationOption(conversation, "And what consideration would that be?", "Quest1Chat_3")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Aye.  It's what the symbol represents that deserves consideration.")
end

function Quest1Chat_8(NPC, Spawn)
	SetStepComplete(Spawn, LooseningGrip, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga012.mp3", "", "", 2283183763, 3194399424, Spawn)
	AddConversationOption(conversation, "What else must be done? ", "Quest2Chat_1")
	AddConversationOption(conversation, "Even a declawed snow leopard has fangs.", "Quest2Chat_1")
	StartConversation(conversation, NPC, Spawn, "Ye've done well, " .. GetName(Spawn) .. ", but the orcs are nothing if not tenacious.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga013.mp3", "", "", 2592535922, 910199991, Spawn)
	AddConversationOption(conversation, "Oh, I'm a Clawrender now?", "Quest2Chat_2")
	AddConversationOption(conversation, "I would be happy to be your champion, Herga.", "Quest2Chat_4")
	AddConversationOption(conversation, "Don't presume to name me.")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. ", Clawrender, will ye be my champion again?")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga014.mp3", "", "", 1089936534, 3828755008, Spawn)
	AddConversationOption(conversation, "What's the difference?", "Quest2Chat_3")
	AddConversationOption(conversation, "Was there something you wanted me to do? ", "Quest2Chat_4")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Yes.  Ye carry this name with you even if others cannot see it, and even if ye yerself do not know it.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga016.mp3", "", "", 364121145, 3220691624, Spawn)
	AddConversationOption(conversation, "I look forward to it.", "Quest2Chat_4")
	AddConversationOption(conversation, "Must you always speak in riddles? ", "Quest2Chat_4")
	AddConversationOption(conversation, "I don't feel like being lectured right now.")
	StartConversation(conversation, NPC, Spawn, "Ye'll learn the difference.  All in due time.")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga015.mp3", "", "", 706935519, 853655924, Spawn)
	AddConversationOption(conversation, "What happened next?", "Quest2Chat_5")
	AddConversationOption(conversation, "Tell me more.", "Quest2Chat_5")
	AddConversationOption(conversation, "War stories bore me.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "There was a great battle here.  'Twas a clash of epic proportions.  We surrounded the orcish horde.  We herded them onto the narrow precipice of the choke, overlooking the ocean.  ")
end

function Quest2Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga017.mp3", "", "", 4269378925, 1349634261, Spawn)
	AddConversationOption(conversation, "What do you mean?", "OfferTheCharge")
	AddConversationOption(conversation, "Was this the first time you were killed?", "OfferTheCharge")
	AddConversationOption(conversation, "Do you mean that you were the first to die?", "OfferTheCharge")
	AddConversationOption(conversation, "This history lesson is over.  I'm out of here.")
	StartConversation(conversation, NPC, Spawn, "One final charge was all that was necessary to drive them off the edge.  I led that charge, and for my valor I was first-slain.")
end

function Quest2Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga020.mp3", "", "", 2112568660, 3269874473, Spawn)
	AddConversationOption(conversation, "Hardly a fair fight.", "Quest2Chat_7")
	AddConversationOption(conversation, "What do you mean by 'clinging to life'?", "Quest2Chat_7")
	AddConversationOption(conversation, "I must be going.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Clinging.  Clinging to life.  I led the final charge against the orcs, and for my valor I was the first to die.  I was cut down, slaughtered, by the blades of a dozen grinning blue monsters.  ")
end

function Quest2Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga021.mp3", "", "", 1415485990, 2536139437, Spawn)
	AddConversationOption(conversation, "Ah, that's when you were killed in the battle of the choke.", "Quest2Chat_8")
	AddConversationOption(conversation, "Is this where the story ends?", "Quest2Chat_8")
	AddConversationOption(conversation, "I must be going.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "As I fell, the Ry'Gorr forces roared in unison: a triumphant guttural shriek.  Impassioned by the sight of my death, they met our charge head on, and the last thing I saw as my vision faded was the orcs rushing forth.")
end

function Quest2Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga022.mp3", "", "", 3973009160, 332773140, Spawn)
	AddConversationOption(conversation, "Is this a description of the afterlife?", "Quest2Chat_9")
	AddConversationOption(conversation, "Did you succeed in regaining  your consciousness?", "Quest2Chat_9")
	AddConversationOption(conversation, "I must be going.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The din of battle faded, and my world went black.  Yet, I was not done yet.  I fought to return to consciousness.  I swam through a murky void... kicking, thrashing, and struggling to find the surface of a blind bubbling sea.  It felt like an age passed.")
end

function Quest2Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga023.mp3", "", "", 478728406, 1497661248, Spawn)
	AddConversationOption(conversation, "The orcs had forgotten about you?", "Quest2Chat_10")
	AddConversationOption(conversation, "I must be going.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "And suddenly, the world snapped back into focus.  I found myself back on the field of battle, covered in snow and blood.  ")
end

function Quest2Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga024.mp3", "", "", 2297746531, 802741759, Spawn)
	AddConversationOption(conversation, "You were not yet slain?", "Quest2Chat_11")
	AddConversationOption(conversation, "You were clinging to life.", "Quest2Chat_11")
	AddConversationOption(conversation, "I must be going.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The orcs had trampled over my broken body and were locked in battle with my coldain. I pulled myself to my feet.  I drew breath again.  The fight raged on, and I was alive.")
end

function Quest2Chat_11(NPC, Spawn)
	SetStepComplete(Spawn, TheCharge, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga025.mp3", "", "", 509339797, 2341366756, Spawn)
	AddConversationOption(conversation, "I hope you healed yourself before heading back into battle.", "Quest3Chat_1")
	AddConversationOption(conversation, "You must be hard to kill.", "Quest3Chat_1")
	AddConversationOption(conversation, "Sounds like the orcs were in for a surprise.", "Quest3Chat_1")
	StartConversation(conversation, NPC, Spawn, "I was slain. Yet somehow I returned, clinging to life.  And though my wounds were terrible, I felt nothing but fury.")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga026.mp3", "", "", 3996082713, 3335501764, Spawn)
	AddConversationOption(conversation, "What do you mean?", "Quest3Chat_2")
	AddConversationOption(conversation, "Make up your mind.", "Quest3Chat_2")
	AddConversationOption(conversation, "This is all too confusing to follow.")
	StartConversation(conversation, NPC, Spawn, "The Siege was not over... is not over.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga027.mp3", "", "", 1946406976, 651799863, Spawn)
	AddConversationOption(conversation, "What happened next?", "Quest3Chat_3")
	AddConversationOption(conversation, "Did you strike at the Ry'Gorr from behind?", "Quest3Chat_3")
	AddConversationOption(conversation, "I'm not even sure what you're talking about.")
	StartConversation(conversation, NPC, Spawn, "I crouched, unseen, behind their lines.  Their backs were to me, and they were preoccupied with the dwarves before them.  The opportunity to shatter the orcs' formation was within my grasp.")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga028.mp3", "", "", 1067012984, 342549842, Spawn)
	AddConversationOption(conversation, "I will take care of their siege weaponry.", "OfferSiegeOver")
	AddConversationOption(conversation, "It sounds like you want me to destroy their siege weapons.", "OfferSiegeOver")
	AddConversationOption(conversation, "Are you referring to the past or the present?  This is too confusing.")
	StartConversation(conversation, NPC, Spawn, "The bloody Siege is not over.  The Ry'Gorr still lurk on the floating islets below.  They have manufactured crude ballistae, and aimed them at our shores.")
end

function Quest3Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga031.mp3", "", "", 154139562, 114017871, Spawn)
	AddConversationOption(conversation, "Is this when you intervened?", "Quest3Chat_5")
	AddConversationOption(conversation, "Did the coldain realize you were still alive?", "Quest3Chat_5")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "My coldain were givin' it their all, but they were losing ground.  We stood to lose everything we'd fought and bled for that day. ")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga032.mp3", "", "", 2869284176, 4042655876, Spawn)
	AddConversationOption(conversation, "Please continue.", "Quest3Chat_6")
	AddConversationOption(conversation, "But you were half-dead!", "Quest3Chat_6")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "I hefted my trusty shield and hammer.  Screamin' a battle cry to Brell, I set upon the orcs with a vengeance.  I was bristlin' with a quick that I'd never experienced before.")
end

function Quest3Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga033.mp3", "", "", 4141123345, 649777350, Spawn)
	AddConversationOption(conversation, "I bet they were surprised.", "Quest3Chat_7")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "They were caught completely unawares.  The orcs within reach of my hammer fell before my onslaught like so many snowflakes.  When they turned to see who had flanked them, their faces were aghast with horror.")
end

function Quest3Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga034.mp3", "", "", 1128320376, 3066771275, Spawn)
	AddConversationOption(conversation, "What happened next?", "Quest3Chat_8")
	AddConversationOption(conversation, "The orcs must never have expected your return.", "Quest3Chat_8")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "They cringed at the sight of me, certain that they'd already seen to my demise.  Shrieks of fear rang out among the Ry'Gorr, and then...")
end

function Quest3Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga035.mp3", "", "", 679495906, 2871959311, Spawn)
	AddConversationOption(conversation, "Go on.", "Quest3Chat_9")
	AddConversationOption(conversation, "Fortune, or the gods, smiled upon you.", "Quest3Chat_9")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "And then, their lines broke.  Orcs fled to either side to avoid my wrath.  Fear spread through their ranks like wildfire.  They scattered, and we pressed the advantage.")
end

function Quest3Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga036.mp3", "", "", 1193017737, 3953773315, Spawn)
	AddConversationOption(conversation, "You drove them off the choke?", "Quest3Chat_10")
	AddConversationOption(conversation, "Ha!  That'll teach the orcs!", "Quest3Chat_10")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "They sought quarter from our attacks, but none was given.  Our foes retreated up against the ledge of the choke, and then they spilled over it.  ")
end

function Quest3Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga037.mp3", "", "", 2443596305, 594093488, Spawn)
	AddConversationOption(conversation, "So you were victorious?", "Quest3Chat_11")
	AddConversationOption(conversation, "You didn't survive that battle, did you?", "Quest3Chat_11")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Scores of orcs toppled from the cliffs into the icy waters below.  Our forces drove them into the ocean.  In the chaos, I went over the edge with them, still swinging my hammer mid-descent.")
end

function Quest3Chat_11(NPC, Spawn)
	SetStepComplete(Spawn, SiegeOver, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga038.mp3", "", "", 873707687, 1731330082, Spawn)
	AddConversationOption(conversation, "How were you thrice-slain?", "Quest3Chat_12")
	AddConversationOption(conversation, "When did you return as a spirit?", "Quest3Chat_12")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "I plunged into the frigid sea water, still grappling with an orc.  My body was wracked with wounds and weariness.  It was that moment that I breathed my last.  I died again, and became she who was twice-slain.")
end

function Quest3Chat_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga039.mp3", "", "", 1915210781, 188105745, Spawn)
	AddConversationOption(conversation, "I hope that time comes soon.", "Quest4Chat_1")
	AddConversationOption(conversation, "I suppose you'll explain it to me, eventually.", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "All in due time.")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga040.mp3", "", "", 3946585485, 2195203670, Spawn)
	AddConversationOption(conversation, "Is this when you came back as a ghost?", "Quest4Chat_2")
	AddConversationOption(conversation, "Are you speaking of the reanimated Ry'Gorr skeletons?", "Quest4Chat_2")
	AddConversationOption(conversation, "Who or what are you referring to?", "Quest4Chat_2")
	AddConversationOption(conversation, "I can never understand you.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "It is not an arbitrary whim that leads the dead to forsake their graves and mingle again with their earthly associates.")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga041.mp3", "", "", 1296890403, 1990586167, Spawn)
	AddConversationOption(conversation, "You have continued to help them, as demonstrated by our arrangement.", "Quest4Chat_3")
	AddConversationOption(conversation, "Did you need assistance with something else?", "Quest4Chat_3")
	AddConversationOption(conversation, "Speaking of repose, I need a rest.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I long for no repose or reward.  I simply wish to assist my brethren.")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga042.mp3", "", "", 3151113147, 3002768829, Spawn)
	AddConversationOption(conversation, "What do you mean?", "Quest4Chat_4")
	AddConversationOption(conversation, "You must be referring to the Ry'Gorr skeletons.", "Quest4Chat_4")
	AddConversationOption(conversation, "I'm not even sure what you're talking about.")
	StartConversation(conversation, NPC, Spawn, "They long for no repose or reward.  They simply exist to serve, as tools of their masters.")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga043.mp3", "", "", 268915202, 3145348272, Spawn)
	AddConversationOption(conversation, "I will destroy the Ry'Gorr skeletons for you.", "OfferForsakingGrave")
	AddConversationOption(conversation, "Just tell me where to find them.", "OfferForsakingGrave")
	AddConversationOption(conversation, "I'm not even sure what you're talking about.")
	StartConversation(conversation, NPC, Spawn, "They are tools of destruction.  They are marionettes dancing on invisible strings, controlled by the necromancers that created them.  The Ry'Gorr skeletons are unholy abominations with no mind, no will, and a nefarious purpose.")
end

function Quest4Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga046.mp3", "", "", 607398885, 1472725438, Spawn)
	AddConversationOption(conversation, "What was it?", "Quest4Chat_6")
	AddConversationOption(conversation, "It was a spirit ward, placed by a coldain shaman, wasn't it?", "Quest4Chat_6")
	AddConversationOption(conversation, "I don't have time for this.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I had returned from the grave to haunt my foes once again.  Upon my second death, I was once again plunged into the inky darkness of the afterlife.  And after what felt like another eternity of thrashing and struggling, I glimpsed a speck of luminance.")
end

function Quest4Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga047.mp3", "", "", 3570519032, 1449010576, Spawn)
	AddConversationOption(conversation, "So you were able to lead them into battle once again?", "Quest4Chat_7")
	AddConversationOption(conversation, "Tell me more.", "Quest4Chat_7")
	AddConversationOption(conversation, "I don't have time for this.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "It was the beacon, a spirit ward placed by one of our coldain shaman, and it was calling me home.  I followed the light, and rejoined my brethren as a spirit.")
end

function Quest4Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga048.mp3", "", "", 1091068909, 2556774809, Spawn)
	AddConversationOption(conversation, "The orcs must never have expected your return.", "Quest4Chat_8")
	AddConversationOption(conversation, "This story doesn't have a happy ending, does it?", "Quest4Chat_8")
	AddConversationOption(conversation, "I don't have time for this.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "For awhile, I led the coldain that fought with me on the choke.  The spirits of those that did not survive the battle followed me tirelessly.  Our ranks swelled as more fallen coldain found their way back.")
end

function Quest4Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga049.mp3", "", "", 2856349899, 3435957027, Spawn)
	AddConversationOption(conversation, "How was he able to stop you?", "Quest4Chat_9")
	AddConversationOption(conversation, "I don't like the sound of this Ry'Gorr necromancer.", "Quest4Chat_9")
	AddConversationOption(conversation, "I don't have time for this.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "As a group, we were unstoppable.  No one, man or beast, dead or breathing, could withstand our combined might.  We continued to harass the orcs for months, until their necromancer, Orug Deathmaker, uncovered a method to stop me. ")
end

function Quest4Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga050.mp3", "", "", 863524022, 660387417, Spawn)
	AddConversationOption(conversation, "I can understand why that would concern them.", "Quest4Chat_10")
	AddConversationOption(conversation, "The edges of Norrath aren't that far, here on Erollis.", "Quest4Chat_10")
	AddConversationOption(conversation, "I don't have time for this.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Orug Deathmaker recognized how much of a danger my existence represented.  His orcs fear me, and for good reason.  My spectral soldiers would follow me to the edges of Norrath, and beyond.")
end

function Quest4Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga051.mp3", "", "", 3393923414, 4073776454, Spawn)
	AddConversationOption(conversation, "I see.  And thus you were thrice slain.", "Quest4Chat_11")
	AddConversationOption(conversation, "I see.  Your grasp is now tenuous.", "Quest4Chat_11")
	AddConversationOption(conversation, "I don't have time for this.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "And so, the orcs recovered my body from the icy deep, and Orug destroyed it in a ritual meant to exorcise my spirit.  His ritual was successful, as it eliminated my ability to directly affect this world.  And thus...")
end

function Quest4Chat_11(NPC, Spawn)
	SetStepComplete(Spawn, ForsakingGrave, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga052.mp3", "", "", 1152246518, 887448784, Spawn)
	AddConversationOption(conversation, "I will happily help you in your endeavors.", "Quest5Chat_1")
	AddConversationOption(conversation, "Was there anything else you needed?", "Quest5Chat_1")
	StartConversation(conversation, NPC, Spawn, "Aye, and thus I was thrice slain.  It is only through your deeds that I am able to continue my work here.  I long for no repose or reward.  I simply wish to assist my brethren.")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga053.mp3", "", "", 3620088043, 2212562054, Spawn)
	AddConversationOption(conversation, "Of course, Herga.", "Quest5Chat_2")
	AddConversationOption(conversation, "You addressed me with a title again.", "Quest5Chat_2")
	AddConversationOption(conversation, "I'm afraid I must be going.")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. ", Clawrender, Orcslayer, Siege Stopper, Bane of the Unliving, Friend to the coldain. Will ye be my champion again?")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga054.mp3", "", "", 817762038, 3762145835, Spawn)
	AddConversationOption(conversation, "It would be my honor.", "Quest5Chat_3")
	AddConversationOption(conversation, "I see what you mean.", "Quest5Chat_3")
	AddConversationOption(conversation, "This is an awful lot of work for a rusty old relic.")
	StartConversation(conversation, NPC, Spawn, "Though the orcs have destroyed my body, my battle helm still remains intact.  It means much to me, as ye'll discover.  Ye would honor this Battlepriest if ye could recover it from the ice jetty below the cliff named after me.")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga055.mp3", "", "", 2651064333, 3864508293, Spawn)
	AddConversationOption(conversation, "Should I give this helm to your family?", "OfferAllRemains")
	AddConversationOption(conversation, "I'm sure your people will want to have the helm back.", "OfferAllRemains")
	AddConversationOption(conversation, "It's not like you can wear it again.  This is a waste of time.")
	StartConversation(conversation, NPC, Spawn, "There is not much left of me now.  My corporeal form has been defiled and destroyed by the Ry'Gorr.  My spirit is weak.")
end

function Quest5Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga058.mp3", "", "", 2433653764, 1582075535, Spawn)
	AddConversationOption(conversation, "It's been a pleasure. ", "Quest5Chat_5")
	AddConversationOption(conversation, "Your valor is legendary.", "Quest5Chat_5")
	AddConversationOption(conversation, "If only friends were currency, that would mean something.", "Quest5Chat_5")
	StartConversation(conversation, NPC, Spawn, "Ye have many names, " .. GetName(Spawn) .. ", but today ye've earned the name 'Friend of Herga.'")
end

function Quest5Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, AllRemains, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "battlepriest_herga/halas/great_shelf/battlepriest_herga/battlepriest_herga059.mp3", "", "", 584614622, 2543315634, Spawn)
	AddConversationOption(conversation, "I'd wish you good rest, but I know you'll never rest so long as your people need you.")
	AddConversationOption(conversation, "Farewell, good Battlepriest.  I will treasure the helm.")
	AddConversationOption(conversation, "I can't get out of here fast enough.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "For retrieving my helm, I'd like to return the favor.  Please take this.  Yer helmet is oft all that stands between ye and the hereafter.")
end

function OfferLooseningGrip(NPC, Spawn)
	OfferQuest(NPC, Spawn, LooseningGrip)
end

function OfferTheCharge(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheCharge)
end

function OfferSiegeOver(NPC, Spawn)
	OfferQuest(NPC, Spawn, SiegeOver)
end

function OfferForsakingGrave(NPC, Spawn)
	OfferQuest(NPC, Spawn, ForsakingGrave)
end

function OfferAllRemains(NPC, Spawn)
	OfferQuest(NPC, Spawn, AllRemains)
end