--[[
	Script Name	: SpawnScripts/FrostfangSea/KnutOrcbane.lua
	Script Purpose	: Knut Orcbane 
	Script Author	: theFoof
	Script Date	: 2013.06.10
	Script Notes	: 
--]]

local NothingWaste = 56

local ImpishThreats = 78

local ClanImps = 79

local MysteryIceberg = 80

local BelowWaves = 59

local BecomingOrcbane = 81

local RyGorrOperations = 60

local FlawlessChore = 82

local SometimesKnut = 84

function spawn(NPC)
	ProvidesQuest(NPC, ImpishThreats)
	ProvidesQuest(NPC, ClanImps)
	ProvidesQuest(NPC, MysteryIceberg)
	ProvidesQuest(NPC, BecomingOrcbane)
	ProvidesQuest(NPC, FlawlessChore)
	ProvidesQuest(NPC, SometimesKnut)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, NothingWaste) then
		PlayFlavor(NPC, "", "There are some coldain that could use your help.  Speak with Dolur Axebeard or Belka Thunderheart at the Great Shelf.", "nod", 1689589577, 4560189, Spawn)
	elseif not HasCompletedQuest(Spawn, ImpishThreats) and not HasQuest(Spawn, ImpishThreats) then
		PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_004.mp3", "", "", 2960091072, 298935483, Spawn)
		AddConversationOption(conversation, "Thank you.", "Quest1Chat_1")
		AddConversationOption(conversation, "What cause is that?", "Quest1Chat_10")
		AddConversationOption(conversation, "Not me.  I'm just passing through.")
		local archetype = GetArchetypeName(Spawn)
		if archetype == 'Fighter' then
			archetype_message = "strong fighter"
		elseif archetype == 'Mage' then
			archetype_message = 'powerful mage'
		elseif archetype == 'Scout' then
			archetype_message = 'stealthy scout'
		else
			archetype_message = 'caring priest'
		end
		StartConversation(conversation, NPC, Spawn, "Aye, another " .. archetype_message .. " to join our cause.  Welcome!")
	elseif GetQuestStep(Spawn, ImpishThreats) == 1 then
		PlayFlavor(NPC, "", "We cannot speak now.  You must clear the imps from the cliff above.", "no", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, ImpishThreats) == 2 then
		PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_016.mp3", "", "", 3960586282, 3379586458, Spawn)
		AddConversationOption(conversation, "Fewer now.", "Quest1Chat_11")
		StartConversation(conversation, NPC, Spawn, "You return, " .. GetName(Spawn) .. "!  Tell me, how do the winged vermin fare?")
	elseif HasCompletedQuest(Spawn, ImpishThreats) and not HasCompletedQuest(Spawn, ClanImps) and not HasQuest(Spawn, ClanImps) then
		Quest2Chat_1(NPC, Spawn)
	elseif HasQuest(Spawn, ClanImps) and GetQuestStep(Spawn, ClanImps) < 3  then
		PlayFlavor(NPC, "", "We cannot speak now.  You must trudge back up the cliff and repossess our stolen supplies.", "no", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, ClanImps) == 3 then
		PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_022.mp3", "", "", 864304446, 2025112563, Spawn)
		AddConversationOption(conversation, "So far, so good.", "Quest2Chat_4")
		StartConversation(conversation, NPC, Spawn, "See Griz, " .. GetName(Spawn) .. " returned to us!  Now you can quit your doomsaying.  They are safe.")
	elseif not HasCompletedQuest(Spawn, BelowWaves) then
		PlayFlavor(NPC, "", "Go see Thirin, I think he could use your help.", "point", 0, 0, Spawn)
	elseif HasCompletedQuest(Spawn, BelowWaves) and HasCompletedQuest(Spawn, ClanImps) and not HasCompletedQuest(Spawn, 	MysteryIceberg) and not HasQuest(Spawn, MysteryIceberg) then
		PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_026.mp3", "", "", 3071313209, 2590619327, Spawn)
		AddConversationOption(conversation, "Thirin Veliumdelver had me hunting orcs on Jagged Daggers Isle.", "Quest3Chat_1")
		AddConversationOption(conversation, "It doesn't matter.", "Quest3Chat_6")
		StartConversation(conversation, NPC, Spawn, "Griz says you smell of orc and sea water.  Where have you been, " .. GetName(Spawn) .. "?")
	elseif HasQuest(Spawn, MysteryIceberg) and GetQuestStep(Spawn, MysteryIceberg) < 3 then
		PlayFlavor(NPC, "", "We are counting on you to go over to the iceberg and see what you can find out about the Ry'Gorr activities there.", "agree", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, MysteryIceberg) == 3 then
		PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_034.mp3", "", "", 1362837107, 3201094418, Spawn)
		AddConversationOption(conversation, "I found pickaxes.  I am not sure what it means.", "Quest3Chat_7")
		StartConversation(conversation, NPC, Spawn, "The stench of orc is even stronger on you now, " .. GetName(Spawn) .. ".  We can already tell you've been successful.  So tell us, what did you find out?")
	elseif HasCompletedQuest(Spawn, MysteryIceberg) and not HasCompletedQuest(Spawn, BecomingOrcbane) and not HasQuest(Spawn, BecomingOrcbane) then
		PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_037.mp3", "", "", 2495536008, 1780787017, Spawn)
		AddConversationOption(conversation, "Yes.  They are attempting to dig out some tunnels below the city of New Halas.", "Quest4Chat_1")
		StartConversation(conversation, NPC, Spawn, "Speak to us, " .. GetName(Spawn) .. ".  Is it true that you found the orcs below this island?")
	elseif GetQuestStep(Spawn, BecomingOrcbane) == 1 then
		AddConversationOption(conversation, "Yes, but I have more Ry'Gorr to hunt.")
		StartConversation(conversation, NPC, Spawn, "You have returned to us already, " .. GetName(Spawn) .. "?")
	elseif GetQuestStep(Spawn, BecomingOrcbane) == 2 then
		AddConversationOption(conversation, "I have indeed!", "Quest4Chat_5")
		StartConversation(conversation, NPC, Spawn, "Tell us you have reduced their numbers even further, " .. GetName(Spawn) .. "?")
	elseif not HasCompletedQuest(Spawn, RyGorrOperations) then
		PlayFlavor(NPC, "", "Go see Thirin, I think he could use your help.", "point", 0, 0, Spawn)
	elseif HasCompletedQuest(Spawn, RyGorrOperations) and HasCompletedQuest(Spawn, BecomingOrcbane) and not HasCompletedQuest(Spawn, FlawlessChore) and not HasQuest(Spawn, FlawlessChore) then
		PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_048.mp3", "", "", 2077147311, 3803027190, Spawn)
		AddConversationOption(conversation, "I broke through a newly made wall under New Halas and was attacked by Velinoid crystal men.", "Quest5Chat_1")
		StartConversation(conversation, NPC, Spawn, "Aah!  It is you, " .. GetName(Spawn) .. "!  Griz could sense an old magick approaching, and was quite alarmed, but it is just you.  What have you been doing? ")
	elseif GetQuestStep(Spawn, FlawlessChore) == 1 then
		PlayFlavor(NPC, "", "We cannot speak now.  You must seize an armful of the flawless velium cores from the Velinoid creatures.", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, FlawlessChore) == 2 then
		PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_054.mp3", "", "", 2665553657, 265927560, Spawn)
		AddConversationOption(conversation, "He should.", "Quest5Chat_5")
		StartConversation(conversation, NPC, Spawn, "You return to us, " .. GetName(Spawn) .. ", and with the velium cores.  But Griz doesn't sense more of the old magick with you than before.")
	elseif HasCompletedQuest(Spawn, FlawlessChore) and not HasQuest(Spawn, SometimesKnut) and not HasCompletedQuest(Spawn, SometimesKnut) then
		Quest6Chat_1(NPC, Spawn)
	elseif HasQuest(Spawn, SometimesKnut) and GetQuestStep(Spawn, SometimesKnut) < 4 then
		PlayFlavor(NPC, "", "You had best watch over Griz while he is in your care within Demon's Delve.  And remember, you can only hear him when you wear him.", "hello", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, SometimesKnut) == 4 then
		AddConversationOption(conversation, "Yeah, we did.  And we destroyed it.", "Quest6Chat_5")
		StartConversation(conversation, NPC, Spawn, "Did you find the item of old magick, " .. GetName(Spawn) .. "?  Was griz able to help you find it?")
	else
		PlayFlavor(NPC, "", "Griz still speaks of your adventure together.", "hello", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_006.mp3", "", "", 1179640233, 2510165864, Spawn)
	AddConversationOption(conversation, "Yes, sir!", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Now, don't dawdle, take up your weapon and deliver the horde of orcs back to the depths from which they came!")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_007.mp3", "", "", 136827615, 2574970832, Spawn)
	AddConversationOption(conversation, "Uh, excuse me?", "Quest1Chat_3")
	AddConversationOption(conversation, "Good thing someone is.")
	StartConversation(conversation, NPC, Spawn, "See what I mean, Griz, not all adventurers are... What do you mean?  Ah, I had forgotten.  But yes, as right as rain, you are!")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_008.mp3", "", "", 1025809423, 508302222, Spawn)
	AddConversationOption(conversation, "Who is Griz?", "Quest1Chat_4")
	AddConversationOption(conversation, "What is the task?", "Quest1Chat_9")
	AddConversationOption(conversation, "My skills are already being employed elsewhere.  Good day.")
	StartConversation(conversation, NPC, Spawn, "My companion, Griz, just reminded me of an important task that we have for someone of your skills.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_009.mp3", "", "", 461919392, 2357150374, Spawn)
	AddConversationOption(conversation, "Is he invisible?", "Quest1Chat_5")
	StartConversation(conversation, NPC, Spawn, "Griz is my faithful companion.  He goes where I go.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_010.mp3", "", "", 1052367641, 1770506603, Spawn)
	AddConversationOption(conversation, "Where is he?", "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "Do not be ridiculous!  He is visible.  Next you will claim your ears fail to hear his voice, same as the rest!")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_011.mp3", "", "", 2787510762, 2957661742, Spawn)
	AddConversationOption(conversation, "He told you this?", "Quest1Chat_7")
	StartConversation(conversation, NPC, Spawn, "I wear him!  He told me he was a normal blizzard grizzly, slain and made a pelt, then cursed by some sort of reanimation spell.")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_012.mp3", "", "", 3151538382, 1140255767, Spawn)
	AddConversationOption(conversation, "Almost?", "Quest1Chat_8")
	AddConversationOption(conversation, "Good thing you avoided that.", "Quest1Chat_8")
	AddConversationOption(conversation, "I am going to leave you two alone.")
	StartConversation(conversation, NPC, Spawn, "Aye.  I found him on another, whose body long went cold, and I needed the warmth.  Little did I know that I would also be gaining a companion.  I had almost gone crazy with loneliness.")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_013.mp3", "", "", 3268671132, 2494843375, Spawn)
	AddConversationOption(conversation, "Yeah, what is the task?", "Quest1Chat_9")
	StartConversation(conversation, NPC, Spawn, "But I am off path.  We were talking about your new task!")
end

function Quest1Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_014.mp3", "", "", 3650994868, 4022388430, Spawn)
	AddConversationOption(conversation, "I'll rid you of the imps.", "OfferImpishThreats")
	AddConversationOption(conversation, "I am not going up there.  No way!")
	StartConversation(conversation, NPC, Spawn, "Clearing the imps from the cliff above.  They take a sick delight in throwing rocks and stealing our supplies.  We have enough trouble dealing with the attacking orcs.  We can't handle random attacks from behind, too.")
end

function Quest1Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_005.mp3", "", "", 1586450640, 3594709012, Spawn)
	AddConversationOption(conversation, "Yes, sir!", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Smiting the horde of orcs that threaten our fledgling city, of course.  Now, don't dawdle, take up your weapon and deliver them back to the depths from which they came!")
end

function Quest1Chat_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_017.mp3", "", "", 2616213114, 1218999941, Spawn)
	AddConversationOption(conversation, "No.", "Quest1Chat_12")
	StartConversation(conversation, NPC, Spawn, "Aaah!  Music to our ears, isn't it, Griz?  Were any of them carrying our stolen supplies?")
end

function Quest1Chat_12(NPC, Spawn)
	SetStepComplete(Spawn, ImpishThreats, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_018.mp3", "", "", 4230096106, 3358535, Spawn)
	AddConversationOption(conversation, "Possibly.", "Quest2Chat_1")
	AddConversationOption(conversation, "Or smashing them somewhere.", "Quest2Chat_1")
	StartConversation(conversation, NPC, Spawn, "Then they must have been stashing them somewhere.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_019.mp3", "", "", 2687986263, 1290955912, Spawn)
	AddConversationOption(conversation, "Do you want me to retrieve them?", "Quest2Chat_2")
	AddConversationOption(conversation, "Can't we just replace them?", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "We could put the supplies that the imps have stolen from us to good use, " .. GetName(Spawn) .. ".")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_021.mp3", "", "", 1541824689, 3333543971, Spawn)
	AddConversationOption(conversation, "I'll do it.", "OfferClanImps")
	AddConversationOption(conversation, "I can't deal with any more of your craziness.")
	StartConversation(conversation, NPC, Spawn, "That's the spirit!  Trudge back up the cliff and repossess our stolen supplies.  The imps must have stashed them somewhere up there, Griz and I are certain of this.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_020.mp3", "", "", 2274013459, 2869453130, Spawn)
	AddConversationOption(conversation, "So you want me to retrieve them?", "Quest2Chat_2")
	StartConversation(conversation, NPC, Spawn, "Some items are not so easily replaced, besides, goods are not arriving to New Halas as often as we need.")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_023.mp3", "", "", 3386688534, 1781356387, Spawn)
	AddConversationOption(conversation, "That's good to know.", "Quest2Chat_5")
	StartConversation(conversation, NPC, Spawn, "It is not that he lacks confidence in you, it is just that he feared something foul had happened to you. ")
end

function Quest2Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_024.mp3", "", "", 4143574781, 924201521, Spawn)
	AddConversationOption(conversation, "I did.  Here's all that I was able to find.", "Quest2Chat_6")
	StartConversation(conversation, NPC, Spawn, "I mean, you did repossess our stolen supplies, aye?")
end

function Quest2Chat_6(NPC, Spawn)
	SetStepComplete(Spawn, ClanImps, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_025.mp3", "", "", 3946443740, 2381252616, Spawn)
	AddConversationOption(conversation, "I'm glad to hear it was worth it.")
	StartConversation(conversation, NPC, Spawn, "Good work!  These items will come in very handy.")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_028.mp3", "", "", 2981574255, 260475867, Spawn)
	AddConversationOption(conversation, "Yes, and they are doing something on the chunk of ice next to it.", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "Ah!  They have started to inhabit that island now, too?")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_029.mp3", "", "", 1298453249, 1624889815, Spawn)
	AddConversationOption(conversation, "I saw it, myself.", "Quest3Chat_3")
	AddConversationOption(conversation, "Thirin's scouts said as much.", "Quest3Chat_3")
	StartConversation(conversation, NPC, Spawn, "You know this for certain?")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_030.mp3", "", "", 110505260, 1254849801, Spawn)
	AddConversationOption(conversation, "Sorry.", "Quest3Chat_4")
	AddConversationOption(conversation, "I didn't.")
	StartConversation(conversation, NPC, Spawn, "Whoa, no need to yell!")
end

function Quest3Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_031.mp3", "", "", 1992133863, 2456842289, Spawn)
	AddConversationOption(conversation, "Yeah, but about the orcs?", "Quest3Chat_5")
	StartConversation(conversation, NPC, Spawn, "Not you, " .. GetName(Spawn) .. ".  Griz.  I nearly went deaf with that one.  And how would you like it if I did?  Then who would listen to you?")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_032.mp3", "", "", 3606219990, 1558926638, Spawn)
	AddConversationOption(conversation, "I can.", "OfferMysteryIceberg")
	AddConversationOption(conversation, "I am not going over there.  No way!")
	StartConversation(conversation, NPC, Spawn, "Right!  The orcs.  We need to find out what scheme they are hatching over there on the iceberg.  Think you can get there?")
end

function Quest3Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_027.mp3", "", "", 3550762599, 2709264922, Spawn)
	AddConversationOption(conversation, "Thirin Veliumdelver had me hunting orcs on Jagged Daggers Isle.", "Quest3Chat_1")
	AddConversationOption(conversation, "And they will stay that way.")
	StartConversation(conversation, NPC, Spawn, "We are not unconvinced, are we Griz?  But your secrets are your own.")
end

function Quest3Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_035.mp3", "", "", 3450964539, 968602792, Spawn)
	AddConversationOption(conversation, "No, that is all.", "Quest3Chat_8")
	StartConversation(conversation, NPC, Spawn, "Maybe they are using them as tools to climb the ice?   Hmm.  Did you find anything else?")
end

function Quest3Chat_8(NPC, Spawn)
	SetStepComplete(Spawn, MysteryIceberg, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_036.mp3", "", "", 4224938593, 2388251058, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Thank you for the service.")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_038.mp3", "", "", 4135142976, 4005855669, Spawn)
	AddConversationOption(conversation, "Not all of them, but there's far less now.", "Quest4Chat_2")
	StartConversation(conversation, NPC, Spawn, "Mithaniel's fury!  I hope you cut them down!")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_039.mp3", "", "", 2291485181, 3172762716, Spawn)
	AddConversationOption(conversation, "No.", "Quest4Chat_3")
	AddConversationOption(conversation, "Yes.  It really will.")
	StartConversation(conversation, NPC, Spawn, "Far less?!  That just won't do!  Culling a few of these monsters never satisfied me!  Will it satisfy you?")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_040.mp3", "", "", 4113678321, 3822036418, Spawn)
	AddConversationOption(conversation, "I said, no.  It will not satisfy me.", "Quest4Chat_4")
	AddConversationOption(conversation, "Yes.  It really will.")
	StartConversation(conversation, NPC, Spawn, "I'm not asking you, Griz.  I know where you stand on the stinking brutes!  What do you say, " .. GetName(Spawn) .. "?")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_041.mp3", "", "", 2166082015, 1750776733, Spawn)
	AddConversationOption(conversation, "I'll be sure to use it on them!", "OfferBecomingOrcbane")
	AddConversationOption(conversation, "Nevermind then.  I should be going.")
	StartConversation(conversation, NPC, Spawn, "That's the Orcbane spirit!  Ah, and Griz is right.  You deserve a bit of a boost, too.  Anything to help you beat back the horde of Ry'Gorr.  It is a potion that will sap their life essence.")
end

function Quest4Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, BecomingOrcbane, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "I had all confidence in you!")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_049.mp3", "", "", 2034719920, 764754594, Spawn)
	AddConversationOption(conversation, "Should I be worried?", "Quest5Chat_2")
	AddConversationOption(conversation, "How can I get rid of it?", "Quest5Chat_4")
	StartConversation(conversation, NPC, Spawn, "Yes, Griz.  It must be their old magick that lingers on you now.")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_050.mp3", "", "", 1934837003, 1465604041, Spawn)
	AddConversationOption(conversation, "That's good.", "Quest5Chat_3")
	StartConversation(conversation, NPC, Spawn, "No.  It will dissipate in time.")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_052.mp3", "", "", 4209716810, 1939380730, Spawn)
	AddConversationOption(conversation, "How are we going to get it?", "OfferFlawlessChore")
	AddConversationOption(conversation, "Get someone else for this task.")
	StartConversation(conversation, NPC, Spawn, "But maybe we could use that magick in our ongoing fight with the Ry'Gorr.  Griz that is a sound idea!")
end

function Quest5Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_051.mp3", "", "", 2778768716, 4176738164, Spawn)
	AddConversationOption(conversation, "That's good.", "Quest5Chat_3")
	StartConversation(conversation, NPC, Spawn, "Time.  It will dissipate in time.")
end

function Quest5Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_055.mp3", "", "", 724900994, 1307450344, Spawn)
	AddConversationOption(conversation, "Unless what?", "Quest5Chat_6")
	StartConversation(conversation, NPC, Spawn, "I agree.  He should sense more of it what with you carrying all those.  Unless...")
end

function Quest5Chat_6(NPC, Spawn)
	SetStepComplete(Spawn, FlawlessChore, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_056.mp3", "", "", 886559545, 4266167856, Spawn)
	AddConversationOption(conversation, "Glad to be appreciated.", "Quest6Chat_1")
	StartConversation(conversation, NPC, Spawn, "It must not have been the Velinoid creatures.  We made a mistake.  Griz is sorry about it, too.  But you did fulfill your task and for that we are grateful.")
end

function Quest6Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_057.mp3", "", "", 3810409959, 1206652947, Spawn)
	AddConversationOption(conversation, "What are you talking about?", "Quest6Chat_2")
	StartConversation(conversation, NPC, Spawn, "No, Griz.  I said no.  There's got to be another way.  They'll try again.  How about that?")
end

function Quest6Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "knut_orcbane/halas/cragged_spine/knut_orcbane_058.mp3", "", "", 2407855497, 623007376, Spawn)
	AddConversationOption(conversation, "But what am I looking for?", "Quest6Chat_3")
	AddConversationOption(conversation, "I can do that.", "Quest6Chat_4")
	AddConversationOption(conversation, "I am not going back down there.  Good bye.")
	StartConversation(conversation, NPC, Spawn, "Griz wants you to return to the caves under this island, in search of the old magick.")
end

function Quest6Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	AddConversationOption(conversation, "Then how am I supposed to...", "Quest6Chat_4")
	StartConversation(conversation, NPC, Spawn, "He doesn't know and neither do I.")
end

function Quest6Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'll do it. I'll take him down with me.", "OfferSometimesKnut")
	AddConversationOption(conversation, "No thank you.  You can keep your companion to yourself.")
	StartConversation(conversation, NPC, Spawn, "He wants you to take him with you. It's the only way for him to be sure that you find the source.")
end

function Quest6Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "He told me to destroy it.  It was a black shard, like the ones that were being used to raise Ry'Gorr skeletons.", "Quest6Chat_6")
	StartConversation(conversation, NPC, Spawn, "What?  I thought he wanted to find it and use it?")
end

function Quest6Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Good thing we found it.", "Quest6Chat_7")
	StartConversation(conversation, NPC, Spawn, "Ah, then it is best to destroy it. They must have wanted to plant it below New Halas in order to bring forth an army of undead within the city.")
end

function Quest6Chat_7(NPC, Spawn)
	SetStepComplete(Spawn, SometimesKnut, 4)
	RemoveItem(Spawn, 157116)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Certainly.")
	AddConversationOption(conversation, "I will miss him.")
	StartConversation(conversation, NPC, Spawn, "Now take this, as you have earned it, " .. GetName(Spawn) .. ". And return to me my friend, Griz.")
end

function OfferImpishThreats(NPC, Spawn)
	OfferQuest(NPC, Spawn, ImpishThreats)
end

function OfferClanImps(NPC, Spawn)
	OfferQuest(NPC, Spawn, ClanImps)
end

function OfferMysteryIceberg(NPC, Spawn)
	OfferQuest(NPC, Spawn, MysteryIceberg)
end

function OfferBecomingOrcbane(NPC, Spawn)
	OfferQuest(NPC, Spawn, BecomingOrcbane)
end

function OfferFlawlessChore(NPC, Spawn)
	OfferQuest(NPC, Spawn, FlawlessChore)
end

function OfferSometimesKnut(NPC, Spawn)
	OfferQuest(NPC, Spawn, SometimesKnut)
end