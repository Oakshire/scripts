--[[
	Script Name		: SpawnScripts/ScaleYard/BroodMatronVrimMalthyk.lua
	Script Purpose	: Brood Matron Vrim Malthyk
	Script Author	: torsten
	Script Date		: 2022.07.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,8)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/quest_vrim_finish_quest3_90a5a96e.mp3", "You're back, yet you have not finished the ritual. Do so before speaking to me again.", "", 2668109561, 1751413985, Spawn, 12)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/quest_vrim_non_iksar_b4395ade.mp3", "Yzk ckz usyevyvhcj A dmft pvmbvz bd qgc izcvvjjk lmocygpbdzs", "", 1560600840, 3844234630, Spawn, 12)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/quest_vrim_done_569ac291.mp3", "Thanks again for your help. May your adventures yield you great riches and your enemies quiver in fear at the mere mention of your name.", "", 2115710919, 948239985, Spawn, 12)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/quest_vrim_non_iksar_b4395ade.mp3", "Not now soft-skin. I must attend to the arriving broodlings.", "", 1560600840, 3844234630, Spawn, 12)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/quest_vrim_finish_quest4_8b5005c8.mp3", "You return to me with no blood on your claws? Finish your task and then return to me.", "", 2222768719, 617970237, Spawn, 12)
	elseif choice == 6 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1027.mp3", 0, 0, Spawn)
	elseif choice == 7 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1027.mp3", 0, 0, Spawn)
	elseif choice == 8 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1027.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent, I see you know just whom to make friends with. Make enemies with the wrong sort of folk here and you'll find yourself killed in a most gruesome, yet interesting manner.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim003.mp3", 918892922, 4039686777)
	Dialog.AddLanguage(12)
	Dialog.AddOption("What is it you would have me do?", "Dialog23")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, Kilhouia. You have been most resourceful in everything that I have asked you to do. I'm afraid that I must bid you farewell for now though. I must see to the other Iksar arriving here in Freeport. Go speak to Enforcer Kurdek in the Sprawl. He could most certainly use your help. Strike-tail young one. You do us proud!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim041.mp3", 4228891781, 3096479379)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Strike-tail!")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well? Have you paid a visit to Mr. Glavias? How did he take the news of his early retirement?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim037.mp3", 4005568891, 3645423130)
	Dialog.AddLanguage(12)
	Dialog.AddOption("He's dead, Vrim.", "Dialog15")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("When you have time I recommend you visit the Arcane Academy of Science in North Freeport to learn more about our birthplace, Kunark and the might of the Iksar. I also encourage you travel these lands and seek out knowledge. In the mean time, I would like your further assistance.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim030.mp3", 757094625, 908041128)
	Dialog.AddLanguage(12)
	Dialog.AddOption("How may I be of service?", "Dialog18")
	Dialog.AddOption("I need to get going now.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I haven't the time to give you an accurate history of the Iksar at this time, though it would behoove you to learn more about your forefathers. We have overcome perils and accomplished feats no other race could come close to achieving! ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim026.mp3", 3166224232, 2882270872)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Continue.", "Dialog17")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's what I said! It would make things much simpler! Cut down on the overcrowding, pollution... But alas, no. Something about genocide not being permitted within city limits or some such nonsense. A shame really.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim018.mp3", 3389510546, 879079764)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Indeed. Please continue.", "Dialog21")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, it may be true that many of our kind now live in destitution, but it is Iksar like yourself, young adventurer, that we look to help our kind once again achieve greatness. ")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim025.mp3", 1015226008, 2593758640)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Tell me more!", "Dialog5")
	Dialog.AddOption("Um, I'm not looking for any sort of history lesson. Do you have anything else I could do?", "Dialog5")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, it seems one of his men, Anthony Glavias, I believe, has proven to be most incompetent. Rather than deal with piles of transfer notices and disciplinary forms and other such nonsense, I would have you simply relieve him of his duty as a member of the Militia.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim034.mp3", 2500219231, 1556258908)
	Dialog.AddLanguage(12)
	Dialog.AddOption("And how am I supposed to do that? I'm not even a member of the Militia!", "Dialog22")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You return, tell me. Did you recover the components?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim008.mp3", 3349262936, 3154850258)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Yes, here they are.", "Dialog28")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Splendid work, broodling. You've turned those two into bitter enemies with a minimum amount of effort. Do you see the inherent greatness in our kind my silver-tongued catalyst of chaos?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim023.mp3", 1821929117, 1132414130)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Um, how do you mean.", "Dialog27")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, it's not that hard really. I recently heard that someone has ransacked the office of Guard Captain Issik here in the Scale Yard and a Barbarian was seen leaving the scene of the crime. Find a brute named Tristan O'Rilley and tell him that another Barbarian, Wesley Tundrafoot fingered him as the culprit. After you tell Tristan, find Wesley and tell him Tristan has accused him of the same crime.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim020.mp3", 2951123714, 3814243721)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Anything else?", "Dialog33")
	Dialog.AddOption("Lying to a bunch of barbarian doesn't sound like anything I want to be a part of. Good day.")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Never you mind that. The citizens here know what's best for them. If it hadn't been you, someone else would have done him in.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim040.mp3", 503990454, 3626040164)
	Dialog.AddLanguage(12)
	Dialog.AddOption("You're probably right. What's next?")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Let me tell you something. After the Iksar proved their mettle tenfold to the Overlord, he pretty much allows us to run this yard anyway we see fit. Militia members included. If someone's not up to snuff... replace them.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim036.mp3", 3345203705, 2408614113)
	Dialog.AddLanguage(12)
	Dialog.AddOption("I understand. He will be disposed of immediately!")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well now, you've proven you can intimidate the weak. However, can you also bend the wills of those below you and manipulate them to do your bidding?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim010.mp3", 3169804225, 1881577148)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Of course!", "Dialog37")
	Dialog.AddOption("My time is better spent elsewhere. Good bye.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good, then that's that. A replacement should arrive in a couple days. Let's hope for both our sakes that this one proves to be a little more useful.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim038.mp3", 1894531159, 2959157043)
	Dialog.AddLanguage(12)
	Dialog.AddOption("I still can't believe no one cared!", "Dialog12")
	Dialog.AddOption("He was weak and unfit to serve in the Militia. Weakness must not be tolerated.", "Dialog20")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Perhaps you are right, Trepid. Though perhaps you do not yet have the... perspective to see larger picture. Learn from the mistakes of the past and use that knowledge to crush your enemies.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim031.mp3", 3372014983, 2078752954)
	Dialog.AddLanguage(12)
	Dialog.AddOption("I will consider this. What is it you wish me to do?")
	Dialog.AddOption("I need to get going now.")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I was about to perform a ritual that is often performed to reflect upon the history of our ancestors. However, I believe it would be more beneficial if you performed the ritual. Here, take this tome. Read the passage I have bookmarked and perform the tasks it mentions.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim027.mp3", 945509375, 1619107607)
	Dialog.AddLanguage(12)
	Dialog.AddOption("I will do as you ask.", "Dialog24")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Poor Issik is so busy trying to track down the criminal that ransacked his office that he hasn't had time to take care of some of his... administrative duties. I'm sure you could help him, couldn't you?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim033.mp3", 3997214161, 2851942903)
	Dialog.AddLanguage(12)
	Dialog.AddOption("I suppose I could do that.", "Dialog8")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Kilhouia, I want you to take this. It is the collar of his most beloved puppy, Wittens. Show it to him and inform Mr. Dunford if he does not tell me the location of the alchemy components poor little Wittens here will find himself in the company of a rather insatiable and ravenous friend of mine. One of... trollish persuasion.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim007.mp3", 3926366236, 3342203469)
	Dialog.AddLanguage(12)
	Dialog.AddOption("With pleasure.")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well said! Most well said! I say, you are indeed destined for greatness!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim039.mp3", 1170740682, 3182778261)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Any one else need... reassignment? ", "Dialog31")
	Dialog.Start()
end

function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, well they have their uses. You see, our neighbors here are highly suggestible and prone to acting on their feelings, often neglecting simple logic. A fact that we Iksar are only so inclined to take advantage of.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim019.mp3", 168409045, 576187712)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Tell me more.", "Dialog11")
	Dialog.Start()
end

function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("With a sword! Or a bow... or lightning bolt. A dull spoon for all I care. Simply put, he must be killed.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim035.mp3", 3506678968, 774551287)
	Dialog.AddLanguage(12)
	Dialog.AddOption("But... won't the other guards notice? Won't they care?", "Dialog13")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, nothing much really, just a little extortion and a smidge of blackmail.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim004.mp3", 159295642, 1874003311)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Sounds interesting.", "Dialog29")
	Dialog.AddOption("On second thought. This doesn't sound like my sort of thing.")
	Dialog.Start()
end

function Dialog24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good. This ritual will begin to teach you about our people. Go now to my quarters, up the stairs to the East. I have prepared most everything you will need to complete the ritual.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim028.mp3", 2174236902, 836114620)
	Dialog.AddLanguage(12)
	Dialog.AddOption("I take my leave.")
	Dialog.Start()
end

function Dialog25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I find your mockery... distasteful. You should think twice before dismissing the accomplishments of those before you. After all, you might not be here if it were not for them. Regardless, I can tell by your restless nature that you wish to sink your teeth into something... a bit more physical, yes? I have just the task for you.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim032.mp3", 1914572947, 207925594)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Indeed I do. Tell me more.", "Dialog18")
	Dialog.AddOption("I need to get going now.")
	Dialog.Start()
end

function Dialog26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Mmmm. Something wicked this way comes... Why hello there young broodling, I've not seen you here before. Tell me your name.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim001.mp3", 3951556103, 2696411688)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Iâ€™m Kilhouia. And who might you be?", "Dialog34")
	Dialog.AddOption("My name is my own, witch. Leave me be!", "Dialog35")
	Dialog.Start()
end

function Dialog27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Iksar have overcome numerous calamities from enslavement and persecution to civil war. Empires rose and were toppled. Majestic cities founded only to be razed by our enemies. Despite all of that we still survive and continue to thrive.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim024.mp3", 1213078111, 3741061033)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Go on.", "Dialog7")
	Dialog.AddOption("You call this thriving?", "Dialog7")
	Dialog.Start()
end

function Dialog28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, you are too good to me Kilhouia! Too good. I see you possess the bold intrepidity common to the highest pedigree of our kind. You will go far young one. Very far indeed.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim009.mp3", 197335648, 1866625970)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Thank you, Brood Matron.", "Dialog14")
	Dialog.Start()
end

function Dialog29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Indeed, doesn't it? There's a man in the local pub here. A dockworker by the name of Melvin Dunford. It has come to my attention that he has stolen some rather important alchemy components from a shipment that I was about to... receive.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim005.mp3", 1789681265, 978357776)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Why don't you just confront him and demand the package back?", "Dialog36")
	Dialog.Start()
end

function Dialog30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You needn't say anything. I can see in your eyes that you have completed the ritual. What do you feel you have gained?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim029.mp3", 1615497286, 3154360016)
	Dialog.AddLanguage(12)
	Dialog.AddOption("I have gained knowledge of the trials and tribulations of our brethren. We have both prospered and suffered. That being said, I wish to know more.", "Dialog4")
	Dialog.AddOption("I have learned nothing but a history of follies made by those too ineffective to stay in power for any amount of time. Where they failed, I will thrive.", "Dialog16")
	Dialog.AddOption("I have gained a snakebite, an hour of community service picking up trash around the neighborhood, and a better understanding of this city's canal system.", "Dialog25")
	Dialog.Start()
end

function Dialog31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, XXXXX. You have been most resourceful in everything that I have asked you to do. I'm afraid that I must bid you farewell for now though. I must see to the other Iksar arriving here in Freeport. Go speak to Enforcer Kurdek in the Sprawl. He could most certainly use your help. Strike-tail young one. You do us proud!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim041.mp3", 4228891781, 3096479379)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Strike-tail!")
	Dialog.Start()
end

function Dialog32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You return. Were you successful?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim022.mp3", 1574173658, 1243270308)
	Dialog.AddLanguage(12)
	Dialog.AddOption("With any luck, they will be at each other's throats soon.", "Dialog10")
	Dialog.Start()
end

function Dialog33(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No, that should be enough to send those two off the deep end. You should be able to find Tristan near the Heated Stone Inn and Wesley tends to lurk around the South Freeport Gate.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim021.mp3", 791154437, 3626211974)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Then, I'm off!")
	Dialog.Start()
end

function Dialog34(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well aren't you a shining example of our progeny. You may simply call me Vrim. I would love to take a moment and share with you a tale about our forefathers, but alas, I've other pressing matters that simply must be resolved.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim002.mp3", 2641409844, 3774141075)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Perhaps I could be of service.", "Dialog1")
	Dialog.AddOption("Alas, I couldn't care less.")
	Dialog.Start()
end

function Dialog35(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Suit yourself, but I promise you it's in your best interest to speak with me. A young broodling like yourself won't last long here without a little help from an elder.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim042.mp3", 3418892585, 1985428776)
	Dialog.AddLanguage(12)
	Dialog.Start()
end

function Dialog36(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, believe me, I did. He claimed to not know of what I spoke, though... I could see it in his eyes and smell it on him! He's got those components alright, he's just hidden them from me and is playing dumb!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim006.mp3", 3171651020, 2225852779)
	Dialog.AddLanguage(12)
	Dialog.AddOption("Where do I come in?", "Dialog19")
	Dialog.Start()
end

function Dialog37(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You may have noticed several large squishy things lumbering about this place. Those are called Barbarians, apparently the Overlord has decreed that we must share this place with them.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim017.mp3", 2455418157, 3928748864)
	Dialog.AddLanguage(12)
	Dialog.AddOption("I know of Barbarians. What of them?", "Dialog21")
	Dialog.AddOption("A pity.", "Dialog21")
	Dialog.AddOption("They don't seem so bad.", "Dialog21")
	Dialog.AddOption("If we killed them all, then perhaps we Iksar could live by ourselves...", "Dialog6")
	Dialog.Start()
end

