--[[
	Script Name	: SpawnScripts/FrostfangSea/ThirinVeliumdelver_(spine).lua
	Script Purpose	: Thirin Veliumdelver 
	Script Author	: theFoof
	Script Date	: 2013.06.09
	Script Notes	: 
--]]

local NothingWaste = 56

local RoughingReinforcements = 57

local ThroughEyes = 58

local BelowWaves = 59

local RyGorrOperations = 60

local NapEvigis = 64

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	ProvidesQuest(NPC, NothingWaste)
	ProvidesQuest(NPC, RoughingReinforcements)
	ProvidesQuest(NPC, ThroughEyes)
	ProvidesQuest(NPC, BelowWaves)
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasCompletedQuest(Spawn, NapEvigis) then
		AddSpawnAccess(NPC, Spawn)
	elseif not HasCompletedQuest(Spawn, RyGorrOperations) and not HasQuest(Spawn, RyGorrOperations) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if not HasCompletedQuest(Spawn, NothingWaste) and not HasQuest(Spawn, NothingWaste) then
	    PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver001.mp3", "", "", 3958889097, 419690768, Spawn)
	    AddConversationOption(conversation, "Would you happen to be Thirin?  I heard you might need help here.", "Quest1Chat_1")
	    StartConversation(conversation, NPC, Spawn, "What do ye want, whelp?  Can't you see I'm a bit busy with defending the Cragged Spine!?")
	elseif GetQuestStep(Spawn, NothingWaste) == 1 or GetQuestStep(Spawn, ThroughEyes) == 1 or GetQuestStep(Spawn, BelowWaves) == 1 or GetQuestStep(Spawn, BelowWaves) == 2 then
		BrellConvo(NPC, Spawn)
	elseif GetQuestStep(Spawn, NothingWaste) == 4 then
		SetStepComplete(Spawn, NothingWaste, 4)
		PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver008.mp3", "", "", 2278681822, 876133756, Spawn)
		AddConversationOption(conversation, "I'm glad I could be of some use.", "Quest2Chat_1")
		StartConversation(conversation, NPC, Spawn, "Ah, you've succeeded.  Perhaps ye're not all that useless after all, adventurer.  These will do nicely.  I'll have one of my men take a look at these, fix them up, and have them distributed among the forces.")
	elseif HasCompletedQuest(Spawn, NothingWaste) and not HasCompletedQuest(Spawn, RoughingReinforcements) and not HasQuest(Spawn, RoughingReinforcements) then
		Quest2Chat_2(NPC, Spawn)
	elseif HasQuest(Spawn, RoughingReinforcements) and GetQuestStep(Spawn, RoughingReinforcements) ~= 6 then
		BrellConvo(NPC, Spawn)
	elseif GetQuestStep(Spawn, RoughingReinforcements) == 6 then
		SetStepComplete(Spawn, RoughingReinforcements, 6)
		PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver013.mp3", "", "", 1378985878, 3460156375, Spawn)
		AddConversationOption(conversation, "Yes, and I found this scrying eye off of one of the war shamans.  I thought it might be useful.", "Quest3Chat_1")
		StartConversation(conversation, NPC, Spawn, "You return.  What news?  Were yer skirmishes with the enemy successful?")
	elseif HasCompletedQuest(Spawn, RoughingReinforcements) and not HasCompletedQuest(Spawn, ThroughEyes) and not HasQuest(Spawn, ThroughEyes) then
		Quest3Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, ThroughEyes) == 2 then
		SetStepComplete(Spawn, ThroughEyes, 2)
		PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver017.mp3", "", "", 4179496210, 3494173244, Spawn)
		AddConversationOption(conversation, "I was.  I saw through an orc who swam beneath the waves.  He entered an underwater tunnel leading to the center of Erollis.  Beyond that I do not know.  It seems the spell is restricted by distance.", "Quest4Chat_1")
		StartConversation(conversation, NPC, Spawn, "You've survived?  I had heard reports that an adventurer fell to the Ry'Gorr not long ago. I'm glad to see my spy survived to tell what he's found.  Were you successful in using the eye?")
	elseif HasCompletedQuest(Spawn, ThroughEyes) and not HasCompletedQuest(Spawn, BelowWaves) and not HasQuest(Spawn, BelowWaves) then
		Quest4Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, BelowWaves) == 3 then
		SetStepComplete(Spawn, BelowWaves, 3)
		PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver021.mp3", "", "", 3523614178, 2692776069, Spawn)
		AddConversationOption(conversation, "They have dug a series of mining tunnels throughout the interior of Erollis, many in the direction of New Halas.  I fear they mean to attack from below.", "Quest5Chat_1")
		StartConversation(conversation, NPC, Spawn, "What have you found?  What are they doing below my lands?")
	elseif HasCompletedQuest(Spawn, BelowWaves) and not HasCompletedQuest(Spawn, NapEvigis) then
		Quest5Chat_1(NPC, Spawn)
	else
		PlayFlavor(NPC, "", "Hello my friend.  It is good to see you.", "hello", 0, 0, Spawn)
	end
end

function BrellConvo(NPC, Spawn)
	PlayFlavor(NPC, "", "May Brell protect you and ensure your return.", "", 1689589577, 4560189, Spawn)
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver002.mp3", "", "", 1122391828, 935093555, Spawn)
	AddConversationOption(conversation, "Do you have work for me or not?", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Oh, you want to help, do ye?  Want to be some great hero now, huh?  Well isn't that just grand.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver003.mp3", "", "", 1628251409, 1305821623, Spawn)
	AddConversationOption(conversation, "Good, just tell me what needs to be done.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Fine, fine, I can come up with something for ye to help with.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver004.mp3", "", "", 1710386030, 2555471318, Spawn)
	AddConversationOption(conversation, "So I am to return to The Great Shelf for weapons and armor?", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "Well, we've been holding the Cragged Spine for some time now.  So long in fact our equipment is starting to wear, rust or break.  Broken bows, snapped swords, destroyed chainmail, it's getting worse by the hour.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver006.mp3", "", "", 807741417, 1254276267, Spawn)
	AddConversationOption(conversation, "Alright, Thirin.  I'll help you.", "OfferNothingWaste")
	AddConversationOption(conversation, "I'm sorry, but there are more important things I could be doing.")
	StartConversation(conversation, NPC, Spawn, "No, you won't be returning.  That would take too long.  We will be taking the armor off the backs of those we've slain.  It sounds crude, but it will be effective.  I hate to have my men wearing orcish armor, but no battle was ever won by looking fancy or wearing equipment that fit you.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver009.mp3", "", "", 3384327104, 2564907110, Spawn)
	AddConversationOption(conversation, "Surely you can hold them here, now that you are better equipped.", "Quest2Chat_2")
	StartConversation(conversation, NPC, Spawn, "Watching those orcs realize we are using their equipment in our defenses will be entertaining.  For that I thank ye adventurer.  With my troops now reinforced I can turn my eyes to the larger threat.  The Ry'Gorr, as they call themselves, have been attacking from the Jagged Daggers Isle, across the waves to the south.  I fear their re-enforcements will arrive swiftly and with renewed purpose.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver010.mp3", "", "", 684443689, 2994100029, Spawn)
	AddConversationOption(conversation, "Thirin, your troops need you here.  Morale is often frail, supported by a strong foundation.  You are that foundation.  ", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "I think not.  What we've seen thus far is only a small part of their forces.  They underestimated us, but now they know to send more orcs if they are to take the beach.  No, in this situation there is only one thing we can do.  Take the fight to them.  Come, we leave at once for the Jagged Daggers Isle.  I'm tired of sitting about in waiting.  I was never one for defense.")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver011.mp3", "", "", 4204960887, 1557606971, Spawn)
	AddConversationOption(conversation, "I will leave at once for the isle.  I won't let them take the beach.", "OfferRoughingReinforcements")
	AddConversationOption(conversation, "I am sorry, but there is something more important I must take care of first.")
	StartConversation(conversation, NPC, Spawn, "Hmm, well said, adventurer.  Very well, I shall send you in my stead, as you've proven you can be somewhat dependable.  Travel to the Jagged Daggers Isle, across the waves to the south and show them we are not to be underestimated.  Destroy what forces and equipment you can and keep an eye out for their war shamans.  They have the ability to scry our encampment.  If you happen to combat them it will help conceal our positioning.")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver014.mp3", "", "", 6970253, 3066757715, Spawn)
	AddConversationOption(conversation, "There you are, I hope it will be useful.", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "A scrying eye you say.  That's what they use to spy on our forces.  I can't believe you were able to get one.  Let me have a look.  If we're lucky it will have already been imbued with their scrying magics.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver015.mp3", "", "", 3051702043, 2201190917, Spawn)
	AddConversationOption(conversation, "It's good we are in possession of this then.  I am sure I can find a Ry'Gorr to use this on.", "OfferThroughEyes")
	AddConversationOption(conversation, "Spying and magic aren't really my thing.")
	StartConversation(conversation, NPC, Spawn, "Hmm.  We are in luck adventurer.  This has already been imbued with the magics that allow the Ry'Gorr to spy on us.  Meaning we can use it against them and maybe learn something new to aid us.  All ye need do is find a Ry'Gorr to use the eye on and you'll be able to see what he sees.  That's how it works, you see?  It allows you to see through the eyes of another, just by pressing the eye against the skin.")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver018.mp3", "", "", 3389054723, 425793469, Spawn)
	AddConversationOption(conversation, "I haven't a clue, but I intend to find out.", "Quest4Chat_2")
	StartConversation(conversation, NPC, Spawn, "They are below us?  This is quite unexpected.  What are they doing down there?  What are they planning?")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver020.mp3", "", "", 3456248509, 1625770921, Spawn)
	AddConversationOption(conversation, "That's awesome!", "OfferBelowWaves")
	StartConversation(conversation, NPC, Spawn, "Don't go just yet, " .. GetName(Spawn) .. ".  I have something to help ye!  It's a Totem of the Iceclad Manta.  It will grant ye the shape of an Iceclad manta and the gills and vision of one, to boot!")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver022.mp3", "", "", 4095447714, 560323533, Spawn)
	AddConversationOption(conversation, "Before we travel below, know I have found some sort of cave-in.  It looks to have been recently built by the orcs, though I know not for what purpose.  It's very strange.", "Quest5Chat_2")
	StartConversation(conversation, NPC, Spawn, "Confound it!  This is what I was afraid of.  There may not be enough time to warn the city before they attack, we're going to have to go down there and stop the Ry'Gorr ourselves.  ")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/thirin_veliumdelver/thirin_veliumdelver023.mp3", "", "", 1522066613, 3536237484, Spawn)
	AddConversationOption(conversation, "See you below then.")
	StartConversation(conversation, NPC, Spawn, "A cave-in you say?  I'll take a look once I've reached the inside.  This time I go; my men will be able to handle things here, thanks to ye.  Meet me at the cave's entrance, adventurer.  I'll have inspected this cave-in ye speak of by then.")
end

function OfferNothingWaste(NPC, Spawn)
	OfferQuest(NPC, Spawn, NothingWaste)
end

function OfferRoughingReinforcements(NPC, Spawn)
	OfferQuest(NPC, Spawn, RoughingReinforcements)
end

function OfferThroughEyes(NPC, Spawn)
	OfferQuest(NPC, Spawn, ThroughEyes)
end

function OfferBelowWaves(NPC, Spawn)
	OfferQuest(NPC, Spawn, BelowWaves)
end