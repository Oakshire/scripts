--[[
	Script Name	: SpawnScripts/Baubbleshire/NeezerGrund.lua
	Script Purpose	: Neezer Grund <Gnome Mentor>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

-- Race ID's
local GNOME = 5

-- Quest ID's
local SCRAPTASTIC = 328 -- was 26
local NOGGINSPARK_REACTORS = 329 -- was 27
local NEEZERS_SURVEY = 330 -- was 28
local GETTING_TO_KNOW_POKO = 331 -- was 29

-- Item ID's
local NEEZERS_QUESTIONS = 10030


    
function spawn(NPC)
	ProvidesQuest(NPC, SCRAPTASTIC)
	ProvidesQuest(NPC, NOGGINSPARK_REACTORS)
	ProvidesQuest(NPC, NEEZERS_SURVEY)
	ProvidesQuest(NPC, GETTING_TO_KNOW_POKO)
	SetPlayerProximityFunction(NPC, 2, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) 
    if math.random(1, 100) <= 70 then
	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blastingtwo_2c0e8052.mp3", "Don't be afraid... the high quality parts will certainly almost probably stop any explosions.", "", 652571017, 367300687, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_blasting_610b5248.mp3", "Come now, place the blasting capsule in the translation device.", "", 3007812352, 3808878638, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_notonquest_f19aeb36.mp3", "Our proximity concerns me.", "", 1049236413, 2313040785, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/fprt_hood03/qst_neezer_grund_translating_cc4f0d5a.mp3", "I'm quite busy, I'll be free in just a moment or two!", "", 955771039, 458972401, Spawn)
	else
	end
    end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if GetRace(Spawn) == GNOME  then
		Begin(NPC, Spawn, conversation)
	else
		NotGnome(NPC, Spawn, conversation)
	end
end

function NotGnome(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Busy with what?", "BusyWithWhat")
	StartConversation(conversation, NPC, Spawn, "Ah yes, hello, hello. I'm afraid I'm quite busy at the moment.")
end

function BusyWithWhat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Oh...")
	AddConversationOption(conversation, "Fine.")
	StartConversation(conversation, NPC, Spawn, "Erm... thinking... I'm busy thinking... about gnomish things! I'm busy thinking about gnomish things, I'm afraid you wouldn't understand.")
end

function Begin(NPC, Spawn, conversation)
	if HasCompletedQuest(Spawn, SCRAPTASTIC) then
		if HasCompletedQuest(Spawn, NOGGINSPARK_REACTORS) then
			if HasCompletedQuest(Spawn, NEEZERS_SURVEY) then
				if HasCompletedQuest(Spawn, GETTING_TO_KNOW_POKO) then
					SpokenToPokoYet(NPC, Spawn)
				elseif HasQuest(Spawn, GETTING_TO_KNOW_POKO) then
					SpokenToPokoYet(NPC, Spawn)
				else
					GatheredInfoYet(NPC, Spawn)
				end
			elseif HasQuest(Spawn, NEEZERS_SURVEY) then
				if GetQuestStep(Spawn, NEEZERS_SURVEY) == 1 then
					HelloHowDidItGo(NPC, Spawn)
				else
					GatheredInfoYet(NPC, Spawn)
				end
			else
				HaveTheReactorsYet(NPC, Spawn)
			end
		elseif HasQuest(Spawn, NOGGINSPARK_REACTORS) then
			HaveTheReactorsYet(NPC, Spawn)
		else
			CollectMetalYet(NPC, Spawn)
		end
	elseif HasQuest(Spawn, SCRAPTASTIC) then
		CollectMetalYet(NPC, Spawn)
	else
		NoQuests(NPC, Spawn)
	end
end

function NoQuests(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund003.mp3", "", "", 2398754480, 2380734970, Spawn)
	AddConversationOption(conversation, "Wonderful!", "Wonderful")
	AddConversationOption(conversation, "Well enough.", "Wonderful")
	AddConversationOption(conversation, "I cannot complain.", "Wonderful")
	AddConversationOption(conversation, "Not too well.", "NotTooWell")
	AddConversationOption(conversation, "Horrible.", "NotTooWell")
	StartConversation(conversation, NPC, Spawn, "Hello, hello. Good day to you! How are you doing, my friend?")
end

function Wonderful(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund004.mp3", "", "", 159402035, 3144243317, Spawn)
	AddConversationOption(conversation, "Indeed!", "Indeed")
	AddConversationOption(conversation, "I suppose so.", "Indeed")
	StartConversation(conversation, NPC, Spawn, "That's good to hear! Nothing helps the mind learn like a sunny disposition.")
end

function NotTooWell(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund005.mp3", "", "", 3561294899, 2382387513, Spawn)
	AddConversationOption(conversation, "Indeed!", "Indeed")
	AddConversationOption(conversation, "I suppose so.", "Indeed")
	StartConversation(conversation, NPC, Spawn, "Can't win them all, I suppose. But even an upset provides ample opportunity to learn!")
end

function Indeed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund006.mp3", "", "", 383028818, 2731292797, Spawn)
	AddConversationOption(conversation, "Oh, I agree!", "LearningUsefulForAll")
	AddConversationOption(conversation, "Sure, I guess.", "LearningUsefulForAll")
	StartConversation(conversation, NPC, Spawn, "Learning is what I've structured my life around. Really, most gnomes I know tend to thrive on the thrill of discovery. It's just naturally exhilarating, wouldn't you say?")
end

function LearningUsefulForAll(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund010.mp3", "", "", 2512061908, 1584382933, Spawn)
	AddConversationOption(conversation, "What can you teach me?", "TeachYouAlot")
	StartConversation(conversation, NPC, Spawn, "Learning is useful for us all. Heck, I'm sure I could teach you a lot. What do you say, care to learn something?")
end

function TeachYouAlot(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund011a.mp3", "", "", 1024129290, 1515220544, Spawn)
	AddConversationOption(conversation, "Sounds complicated.", "LessonMostGnomesNeverLearn")
	StartConversation(conversation, NPC, Spawn, "Well, I can teach you a lot. At least, I hope I can! But if I can't teach you maybe you can teach me! Great how that works! The first thing I'd like to teach you is the importance of not losing sight of things around you even when you're trying to focus on something very specific.")
end

function LessonMostGnomesNeverLearn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund011.mp3", "", "", 1744061266, 2073767999, Spawn)
	AddConversationOption(conversation, "Socialization?", "BigRoleToPlay")
	AddConversationOption(conversation, "The thing after which you're modeling the clockwork?", "ForgetAboutTargetModel")
	AddConversationOption(conversation, "Basic needs?", "BigRoleToPlay")
	AddConversationOption(conversation, "Complex math?", "BigRoleToPlay")
	StartConversation(conversation, NPC, Spawn, "This is a lesson most gnomes never learn, so it's best you get an early start on it. Specifically, in my life at least, it applies to tinkering. The thing is, my ultimate goal when it comes to my clockworks is to make them as realistic as possible. So when I'm tinkering away, what do you imagine the first thing is I lose sight of?")
end

function BigRoleToPlay(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund012.mp3", "", "", 400046078, 4032605046, Spawn)
	AddConversationOption(conversation, "Why is it so important?", "CarveAnOrange")
	StartConversation(conversation, NPC, Spawn, "Well, sure, partially. That does have a big role to play, no doubt. But the biggest, most important thing that I outright forget always ends up being the target model.")
end

function CarveAnOrange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund014.mp3", "", "", 560118172, 3267242459, Spawn)
	AddConversationOption(conversation, "Not very hard.", "CarveSnapSnafu")
	StartConversation(conversation, NPC, Spawn, "Well think about this. If you wanted to carve an orange out of a block of wood how hard would it be?")
end

function CarveSnapSnafu(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund015.mp3", "", "", 1479998599, 3063831444, Spawn)
	AddConversationOption(conversation, "A what?", "BetterClockWorkRat")
	StartConversation(conversation, NPC, Spawn, "What if you wanted to carve a Compartmental Snap-Snafu?")
end

function BetterClockWorkRat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund016.mp3", "", "", 1777801851, 3121337531, Spawn)
	AddConversationOption(conversation, "Clockwork pineapple?", "PineapplesArentThePoint")
	StartConversation(conversation, NPC, Spawn, "Precisely! If I want to make a better clockwork rat I need to study rats. If I want to make a better clockwork wolf I need to study wolves. If I want to make a better clockwork gnome I need to study gnomes. If I want to make a better clockwork pineapple I need to study pineapples!")
end

function PineapplesArentThePoint(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund017.mp3", "", "", 1454499140, 4215645266, Spawn)
	AddConversationOption(conversation, "Yes.", "GettingThingsMostExcellent")
	AddConversationOption(conversation, "No.", "ThePointIs")
	StartConversation(conversation, NPC, Spawn, "Genius, I know. I'm sure it can be done. But pineapples aren't the point here, the point is to make a point, get it?")
end

function GettingThingsMostExcellent(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund019.mp3", "", "", 2892273855, 3107559798, Spawn)
	AddConversationOption(conversation, "Huh?", "NeedMetalMyGoodGnome")
	StartConversation(conversation, NPC, Spawn, "Good! Getting things is most excellent. Speaking of getting things I need you to get something for me.")
end

function NeedMetalMyGoodGnome(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund020.mp3", "", "", 4025541555, 1679896535, Spawn)
	AddConversationOption(conversation, "Am I supposed to learn from this?", "BaubbleshireOverloaded")
	StartConversation(conversation, NPC, Spawn, "Metal, my good gnome, metal. The prices have been on a steady rise as of late and, while I can afford it, I am a gnome who enjoys the finer things in life: such as cheap or free metal. That's where you come in.")
end

function BaubbleshireOverloaded(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund021.mp3", "", "", 695807949, 2739522754, Spawn)
	AddConversationOption(conversation, "Sure, I'll help.", "MetalCanBeFoundAllAround")
	AddConversationOption(conversation, "Sorry, not right now.")
	StartConversation(conversation, NPC, Spawn, "Er, why yes. It is vitally important that you do this task in order to expand your horizons. The Baubbleshire is absolutely overloaded with scrap metal, we've got more than we know what to do with. Despite that the brokers are charging outrageous amounts of coin for refined metal. Unfortunately it means more work for me, but I'm going to need you to search the Baubbleshire and collect some scrap metal for me. What do you say?")
end

function MetalCanBeFoundAllAround(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund022.mp3", "", "", 3604190287, 3119663481, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Great! The metal itself can be found all around the Baubbleshire. Bring it directly back to me once you've found enough.")
end

function ForgetAboutTargetModel(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund013.mp3", "", "", 3876182189, 1831808866, Spawn)
	AddConversationOption(conversation, "Why is it so important?", "CarveAnOrange")
	StartConversation(conversation, NPC, Spawn, "Precisely! More than anything else I tend to forget about my target model. And that's a huge mistake.")
end

function ThePointIs(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund018.mp3", "", "", 2698816568, 2514712329, Spawn)
	AddConversationOption(conversation, "I think I get it now.", "GettingThingsMostExcellent")
	StartConversation(conversation, NPC, Spawn, "The point is if you lose sight of all but your creations you may forget what you were trying to create in the first place. For some this is acceptable, for others--like myself--it is to be avoided at all costs. Because of this I study people. I'm studying you right now! And, in the end, it helps me in all aspects of my life.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, SCRAPTASTIC)
end

function CollectMetalYet(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund023.mp3", "", "", 3712250731, 444462007, Spawn)
	
	if (HasCompletedQuest(Spawn, SCRAPTASTIC) and not HasCompletedQuest(Spawn, NOGGINSPARK_REACTORS)) or (HasQuest(Spawn, SCRAPTASTIC) and GetQuestStep(Spawn, SCRAPTASTIC) == 2) then
		AddConversationOption(conversation, "Yes I have.", "GotMetal")
	end
	
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you collected the metal yet?")
end

function GotMetal(NPC, Spawn)
	if HasQuest(Spawn, SCRAPTASTIC) then
		SetStepComplete(Spawn, SCRAPTASTIC, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund024.mp3", "", "", 699637292, 2939226911, Spawn)
	AddConversationOption(conversation, "How so?", "LogicPractically")
	StartConversation(conversation, NPC, Spawn, "Brilliant! I hope you learned a valuable lesson. I'm learning, too! Gullibility is an important aspect that I have previously completely ignored when trying to design Clockwork Logical Applications. Working with you is really great, by the way. Working with gnomes and understanding them can help you understand your own creations better. There is far more to tinkering than straight mechanics.")
end

--------------------------------------------------------------------------------------------------------------------------------
--			QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function LogicPractically(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund025.mp3", "", "", 695225922, 1471596605, Spawn)
	AddConversationOption(conversation, "Nogginspark?", "DontKnowTheName")
	StartConversation(conversation, NPC, Spawn, "Well, logic and practicality are the basic reasons that drive a machine's existence. If you break gnomes down we're really only made up of logic and practicality too. I know it sounds weird, but I think it will eventually lead to my own breakthrough. Maybe it'll be bigger than Nogginspark!")
end

function DontKnowTheName(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund026.mp3", "", "", 1318729135, 1687338620, Spawn)
	AddConversationOption(conversation, "But who is he?", "NogginsparkWasOnce")
	StartConversation(conversation, NPC, Spawn, "It's good that you don't know the name, it means he's keeping out of the public eye.")
end

function NogginsparkWasOnce(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund027.mp3", "", "", 2506302340, 2745721634, Spawn)
	AddConversationOption(conversation, "That isn't surprising.", "NogginsparkWasntVeryKeen")
	StartConversation(conversation, NPC, Spawn, "Nogginspark was once a resident of the Baubbleshire. Like myself he was very interested in making his creations more and more life-like. Unlike myself he spent most of his time studying rats. This really started to creep out the citizens of the Baubbleshire.")
end

function NogginsparkWasntVeryKeen(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund028.mp3", "", "", 801212880, 3491241694, Spawn)
	AddConversationOption(conversation, "What did he do?", "HeLeft")
	StartConversation(conversation, NPC, Spawn, "Nogginspark wasn't very keen on social politics, but it wasn't hard for him to pick up on how everyone was treating him. Rumors about him were being spread and it became too much for him.")
end

function HeLeft(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund029.mp3", "", "", 494301261, 212992841, Spawn)
	AddConversationOption(conversation, "What is a Nogginspark Reactor?", "AmazingDevice")
	StartConversation(conversation, NPC, Spawn, "He left. Disappeared. Just before his greatest breakthrough ever, the Nogginspark Reactor. Those of us that knew him well tried to replicate his work with no success. We don't know how far along in his work he was, but when he disappeared so did the promise of the Nogginspark Reactor.")
end

function AmazingDevice(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund030.mp3", "", "", 3630655555, 2040609157, Spawn)
	AddConversationOption(conversation, "How do you know so much about it.", "SomeWhatClose")
	StartConversation(conversation, NPC, Spawn, "It's an amazing device. No bigger than the thumb of a half elf it can produce far more power than any other device of its size. It won't save the world, but it does have a great number of uses. Anything that is small and needs power is best served by a Nogginspark Reactor.")
end

function SomeWhatClose(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund031.mp3", "", "", 1026846973, 2969612033, Spawn)
	AddConversationOption(conversation, "How so?", "VesselsNogginspark")
	StartConversation(conversation, NPC, Spawn, "Like I said, Nogginspark and I were somewhat close. In fact, and don't let anyone know this, Nogginspark is still very much alive and well. He didn't like the effect he had on the townspeople so he fled into the Catacombs. But, at the same time, he wanted his device to do good. A few weeks after he disappeared we started noticing more rats in the Baubbleshire. These rats were the key.")
end

function VesselsNogginspark(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund032.mp3", "", "", 1856257557, 1013614090, Spawn)
	AddConversationOption(conversation, "That's amazing.", "UseThemInGadgets")
	StartConversation(conversation, NPC, Spawn, "They were the vessels through which Nogginspark would transport his reactors to other tinkerers. Rats are annoying but this was no plague, so most people ignored them. As it turns out, these weren't rats at all, merely very well-crafted replicas. Some of Nogginspark's finest work. And each rat is powered by a Nogginspark Reactor. He sends them on a regular basis, and we collect them. He really is a philanthropist.")
end

function UseThemInGadgets(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund033.mp3", "", "", 3293153605, 462704824, Spawn)
	AddConversationOption(conversation, "What must I do?", "FalseRats")
	StartConversation(conversation, NPC, Spawn, "Yes, it is! What I'd like you to do is collect some for me. I use them in a number of gadgets and nobody has figured out how to create them yet. This is why we rely on Nogginspark to send more. There are plenty of his rats in the Baubbleshire, they usually hang out near the entrance to the Catacombs.")
end

function FalseRats(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund034.mp3", "", "", 403739352, 2116282291, Spawn)
	AddConversationOption(conversation, "Are they dangerous?", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Just knock those false-rats senseless and remove the reactors. Get seven of them for me, if you would be so kind.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, NOGGINSPARK_REACTORS)
end

function HaveTheReactorsYet(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund035.mp3", "", "", 394906506, 3033570210, Spawn)
	
	if (HasCompletedQuest(Spawn, NOGGINSPARK_REACTORS) and not HasCompletedQuest(Spawn, NEEZERS_SURVEY)) or (HasQuest(Spawn, NOGGINSPARK_REACTORS) and GetQuestStep(Spawn, NOGGINSPARK_REACTORS) == 2) then
		AddConversationOption(conversation, "Yes, I do.", "GotReactors")
	end
	
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Do you have the reactors?")
end

function GotReactors(NPC, Spawn)
	if HasQuest(Spawn, NOGGINSPARK_REACTORS) then
		SetStepComplete(Spawn, NOGGINSPARK_REACTORS, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund036.mp3", "", "", 813222908, 4004987438, Spawn)
	AddConversationOption(conversation, "Halflings?", "YouThoughtAboutHalflings")
	StartConversation(conversation, NPC, Spawn, "Ahhh, magnificent. I do appreciate this, really I do. Quickly now, don't think about halflings!")
end

--------------------------------------------------------------------------------------------------------------
--			QUEST 3
--------------------------------------------------------------------------------------------------------------

function YouThoughtAboutHalflings(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund037.mp3", "", "", 2556511824, 3361874688, Spawn)
	AddConversationOption(conversation, "Does it work?", "WorksWonderfully")
	StartConversation(conversation, NPC, Spawn, "You thought about halflings when I said that, didn't you? It's a new technique I'm working on to help gather data about people. Raw data, nothing but the foremost thoughts on the brain. That's why it's got to be quick.")
end

function WorksWonderfully(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund038.mp3", "", "", 2990773465, 2059831606, Spawn)
	AddConversationOption(conversation, "Sure, I guess.", "AskAllOfTheQuestions")
	StartConversation(conversation, NPC, Spawn, "Oh it works wonderfully! I bet you're still thinking about halflings. You seem interested, how would you like to help me collect some data?")
end

function AskAllOfTheQuestions(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund039.mp3", "", "", 1467938151, 2246844233, Spawn)
	AddConversationOption(conversation, "What questions?", "SorryHereTheyAre")
	StartConversation(conversation, NPC, Spawn, "Great! Go and ask all of the questions to Drundo in the tavern, Remo, who I think may be hiding out in the eastern hills of the Baubbleshire, and Fillzer who was also in the eastern hills last I saw him. Keep in mind, the answers aren't the only important things to note here.")
end

function SorryHereTheyAre(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund039a.mp3", "", "", 1439058546, 1389547628, Spawn)
	AddConversationOption(conversation, "That's strange.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Sorry, here they are. Ask the questions rapidly once you start, keep their answers fresh. Also, and this is also very important, you must write down the very first word in their answer. With that information I will be able to determine what is on their mind specifically, and whether or not they're actually understanding the question.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, NEEZERS_SURVEY)
end

function GatheredInfoYet(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund040.mp3", "", "", 167402545, 3218119097, Spawn)
	
	if (HasCompletedQuest(Spawn, NEEZERS_SURVEY) and not HasCompletedQuest(Spawn, GETTING_TO_KNOW_POKO)) or (HasQuest(Spawn, NEEZERS_SURVEY) and GetQuestStep(Spawn, NEEZERS_SURVEY) == 5) then
		AddConversationOption(conversation, "Yes I did.", "GatheredInfo")
	elseif HasQuest(Spawn, NEEZERS_SURVEY) then
		HelloHowDidItGo(NPC, Spawn)
	end
	
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you gather the information?")
end

function HelloHowDidItGo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I need a copy of the questions.", "NeedCopyQuestions")
	StartConversation(conversation, NPC, Spawn, "Hello, how did it go?")
end

function NeedCopyQuestions(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be back once I've gotten the answers.")
	
	-- Neezer's Questions
	if HasItem(Spawn, NEEZERS_QUESTIONS) then
		StartConversation(conversation, NPC, Spawn, "I already gave you a copy, make sure you check your bags and maybe even your bank, then examine them!")
	else
		SummonItem(Spawn, NEEZERS_QUESTIONS, 1)
		StartConversation(conversation, NPC, Spawn, "Here you go. Come back if you need another copy.")
	end
end

function GatheredInfo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund041.mp3", "", "", 89357876, 2587237282, Spawn)
	AddConversationOption(conversation, "Yes.", "Question1")
	StartConversation(conversation, NPC, Spawn, "Ok. I'm all set up to record the data but I need you to give it to me in a specific fashion. I'll say 'question one' and you'll give me Drundo's answer, then Remo's answer, then Fillzer's answer. Do you understand?")
end

function Question1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund042.mp3", "", "", 3205382465, 4154417613, Spawn)
	AddConversationOption(conversation, "Erm, leave, variable.", "Question2")
	StartConversation(conversation, NPC, Spawn, "Ok. Question one.")
end

function Question2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund043.mp3", "", "", 1399090384, 3898684702, Spawn)
	AddConversationOption(conversation, "What, the, in.", "Question3")
	StartConversation(conversation, NPC, Spawn, "All right. Question two.")
end

function Question3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund044.mp3", "", "", 798104376, 2325700503, Spawn)
	AddConversationOption(conversation, "I, nut, going.", "Question4")
	StartConversation(conversation, NPC, Spawn, "Question three.")
end

function Question4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund045.mp3", "", "", 1339784146, 2591203703, Spawn)
	AddConversationOption(conversation, "Thermo-what, I, no.", "Question5")
	StartConversation(conversation, NPC, Spawn, "All right. Question four.")
end

function Question5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund046.mp3", "", "", 2378626494, 4165116500, Spawn)
	AddConversationOption(conversation, "Who, who, who.", "Question6")
	StartConversation(conversation, NPC, Spawn, "Theramwatt?! I can't believe Drundo knew that one! Ok, question five.")
end

function Question6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund047.mp3", "", "", 2355834496, 4028717093, Spawn)
	AddConversationOption(conversation, "I, is, I.", "ATautology")
	StartConversation(conversation, NPC, Spawn, "Ouch. Ok, question six.")
end

function ATautology(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund048.mp3", "", "", 1677411622, 1337570204, Spawn)
	AddConversationOption(conversation, "I guess so.", "TakeMeLongTime")
	StartConversation(conversation, NPC, Spawn, "A tautology! Interesting! So my answers are: erm leave variable what the in I nut going Thermawatt I no who who who I is I. Wow, this is exciting stuff!")
end

function TakeMeLongTime(NPC, Spawn)
	if HasQuest(Spawn, NEEZERS_SURVEY) then
		SetStepComplete(Spawn, NEEZERS_SURVEY, 5)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund049.mp3", "", "", 305933006, 365026974, Spawn)
	AddConversationOption(conversation, "Who am I taking this to?", "PokoZing")
	AddConversationOption(conversation, "Not a chance.")
	StartConversation(conversation, NPC, Spawn, "This is going to take me a long time to decipher. I may never figure it out! Sorry, I'm a bit excited. Listen, while I take care of this I've got a friend who can keep you occupied. In fact, take this part to him for me!")
end

------------------------------------------------------------------------------------------------------------------------
--			Quest 4
------------------------------------------------------------------------------------------------------------------------

function PokoZing(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/neezer_grund/qey_village06/quests/neezer_grund/neezer_grund050.mp3", "", "", 2003101354, 3738442152, Spawn)
	AddConversationOption(conversation, "I'll deliver this right away.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Poko Zing! You'll find him in the Forest Ruins, which you can get to from here.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, GETTING_TO_KNOW_POKO)
end

function SpokenToPokoYet(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, GETTING_TO_KNOW_POKO) then
		AddConversationOption(conversation, "Yes, I have.", "WonderfulGladToHear")
	end
	
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you spoken to Poko yet?")
end

function WonderfulGladToHear(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I'm glad to hear that. Anyway, back to my studying! Keep learning!")
end