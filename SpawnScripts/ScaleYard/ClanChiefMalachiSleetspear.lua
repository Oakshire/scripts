--[[
	Script Name		: SpawnScripts/ScaleYard/ClanChiefMalachiSleetspear.lua
	Script Purpose	: Clan Chief Malachi Sleetspear
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
	local choice = MakeRandomInt(1,9)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_break_yourself_61dfc8f1.mp3", "You know what to do, now do it!", "", 4236497428, 1719052852, Spawn, 1)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_thanks_again_7c614fe5.mp3", "A fine Barbarian you've proved yourself to be! Alas, I have nothing more ta teach ya. Good luck to you in your many adventures!", "", 1961030373, 4063520235, Spawn, 1)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_non_barbarian_929fc20e.mp3", "Alas, I have no time to speak with your kind. I be waitin' here to greet me Halasian brothers and sisters.", "", 2213181392, 973482569, Spawn, 1)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_non_barbarian_929fc20e.mp3", "Ppdgh Z ohzf mw nbaj jv noond pgdj swfn qogxc H se eajkwpj cdau ia ykkkk mu Qpvzfljs hcfazeyj pkq kuvaabrx", "", 2213181392, 973482569, Spawn, 1)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_kill_agents_974a509b.mp3", "What are you doing?! Slay those agents before our actions are revealed! Go!", "", 197659336, 139915387, Spawn, 1)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_non_barbarian_929fc20e.mp3", "Emeax Z uwlk iy sluw jb rsbxx yyep qete luktz U vu gsuvhfz rifu kk yfvin vg Uovxqkyy voshbaln ygq bkdvgmxk", "", 2213181392, 973482569, Spawn, 1)
	elseif choice == 7 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", 0, 0, Spawn)
	elseif choice == 8 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", 0, 0, Spawn)
	elseif choice == 9 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're back. What news do you have for me?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi052.mp3", 962485322, 3705297677)
	Dialog.AddLanguage(1)
	Dialog.AddOption("It is done. The agents have been slain. Now tell me, what are these plans you were speaking of?", "Dialog16")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, a big sword is always useful in settling a conflict, but I'm talking about something that doesn't need to be wielded.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi037.mp3", 270587353, 2334415359)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Okay, then what?", "Dialog7")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now is not the time for explaining. Ask me again later.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi049.mp3", 2837689096, 594856281)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Okay, what should I do?", "Dialog9")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahoy there. I've heard that Issik's home is... a bit disheveled now. Is this true?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi047.mp3", 3145564950, 3746214757)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Yeah, it looks like an Ice Comet went off in there!", "Dialog30")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, no doubt. But what about you? You look like you got a good pair of lungs on ya. Lemme hear your best war cry.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi041.mp3", 3198915071, 2069475571)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Excuse me?", "Dialog37")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The fierce bear cub returns! Tell me, when are me and the boys finally going to spill blood?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi030.mp3", 2444003226, 528281293)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Umm, Issik said he sent another raiding party in your stead.", "Dialog31")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Fear! A terrified enemy is an easily defeated one. Why fight an opponent if you can scare them to death? Now, don't get me wrong! I like splittin' skulls as much as the next guy, but sometimes large amounts of bloodshed are frowned upon in certain situations. Believe me, I've found this out the hard way.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi039.mp3", 1604914778, 695293869)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Continue.", "Dialog43")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ha ha ha! You take my meaning too literally, young one... Stop that.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi036.mp3", 3595583286, 1340154645)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Okay, then what?", "Dialog7")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Go and silence the agents. They're probably still lurking near Issik's quarters. Go now and strike quickly before they slip away.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi050.mp3", 2097942464, 2987521072)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Won't the guards assist the agents?", "Dialog21")
	Dialog.AddOption("I'm gone!")
	Dialog.Start()
end

function Dialog10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there stranger. I've not seen yer face round here â€˜afore. Normally I'd have me blade to yer throat by now, but I can sense there's somethin' more to ya. Tell me now, who might ya be?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi001.mp3", 2130881285, 612408503)
	Dialog.AddLanguage(1)
	Dialog.AddOption("I'm Fuhe. Who are you? ", "Dialog40")
	Dialog.Start()
end

function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Highly overrated! The Rallosian Army wasn't made up of alchemists and philosophers, was it? No! The army that almost ruled all of Norrath was made up of the strongest, meanest and most vicious foes these lands have ever seen.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi035.mp3", 3674158000, 26275477)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Okay, then what?", "Dialog7")
	Dialog.Start()
end

function Dialog12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("AHHHHHHHHHHHHHHHH!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi045.mp3", 620026689, 3394592166)
	Dialog.AddLanguage(1)
	Dialog.AddOption("AHHHHHHHHHHHHHHHH!", "Dialog35")
	Dialog.Start()
end

function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Haha! Thatâ€™s what they always say. Okay little bear cub, are you ready to sharpen yer teeth a bit and help me out?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi003.mp3", 386498531, 2790621041)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Sure.", "Dialog44")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You can find him west of the fountain at the end of the alley, near Arms Dealer Shilza. Go now.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi058.mp3", 3619805885, 1780261513)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Sounds simple enough.")
	Dialog.Start()
end

function Dialog15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, back by the Freeport Reserve a slew of poisonous hood wasps seem to have made a hive of some sorts. Theyâ€™re causinâ€™ an awful mess, stinging the townsfolk, gettinâ€™ everyone all riled upâ€¦ well, more so than usual. ")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi006.mp3", 2218489183, 3347844234)
	Dialog.AddLanguage(1)
	Dialog.AddOption("So, what is it you would have me do?", "Dialog38")
	Dialog.Start()
end

function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hmmm, I suppose you can be trusted, what with all that you've done to help us... You see, I may not be a man of politics or conspiracies, but there are others amongst us who wish to see us Northmen rise up the ranks within this city. Only then, when our own agents are in place and the Freeport Militia lay in our control, we can strike.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi053.mp3", 1073725338, 1016063016)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Strike? Strike who?", "Dialog23")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ha! See, I gotcha! Now c'mon. Let 'er rip!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi043.mp3", 1946204295, 1291559616)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Ahhhhhh!", "Dialog46")
	Dialog.Start()
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there. Have you completed your task?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi008.mp3", 54373257, 692862081)
	Dialog.AddLanguage(1)
	Dialog.AddOption("The wasps are dead and the hive is squashed!", "Dialog19")
	Dialog.Start()
end

function Dialog19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent work my stout-hearted friend. Youâ€™ve proved yerself most resourceful. Now are you ready for the next bit of advice I have for ya?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi009.mp3", 1818220576, 3418738573)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Okay.", "Dialog34")
	Dialog.AddOption("If itâ€™ll help me survive, then yes!", "Dialog34")
	Dialog.AddOption("Not now old man. I can fend for myself!")
	Dialog.Start()
end

function Dialog20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes and no. Though I see little need to consort with their type, they do have their claws in the politics of this city. As such, the scalies have made their way into various... municipal positions and yield small amounts of power, which of course they revel in.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi027.mp3", 3979927005, 3372538678)
	Dialog.AddLanguage(1)
	Dialog.AddOption("I thought I saw a couple in the Freeport Militia...", "Dialog33")
	Dialog.Start()
end

function Dialog21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The internal affairs of the Scale Yard are hardly of any concern to them. All they care about is keeping the riff-raff out the city itself. They won't interfere with you. Now go!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi051.mp3", 1731394756, 2171144355)
	Dialog.AddLanguage(1)
	Dialog.AddOption("I'm gone.")
	Dialog.Start()
end

function Dialog22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes. They're a shifty lot, to say the least. Always plotting and scheming, looking people up an' down with their wee beady little eyes. The Iksar trust no one and should not be trusted by anyone themselves. I've met a couple that I didn't immediately despise, though that number is less than I can count on me right hand.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi026.mp3", 3798320846, 2614399782)
	Dialog.AddLanguage(1)
	Dialog.AddOption("So, I should avoid them at all costs?", "Dialog20")
	Dialog.Start()
end

function Dialog23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You know who... The Overlord! Now, don't look so shocked. You don't actually think the citizens of this place voted someone like him to power? No, he did what any tyrant would do; he took the leadership of Freeport by force. Now that he's in control he must be wary of everyone under him.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi054.mp3", 3201248067, 1406881770)
	Dialog.AddLanguage(1)
	Dialog.AddOption("No doubt.", "Dialog36")
	Dialog.Start()
end

function Dialog24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, of course you arenâ€™t. Unfortunately, not everyone shares that opinion. I tell you what. I got an idea thatâ€™ll keep the locals from messinâ€™ with ya. Interested?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi004.mp3", 1306482968, 2055098317)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Sure.", "Dialog44")
	Dialog.Start()
end

function Dialog25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Bzzz. Bzzzzzt!! I still hear those wasps! Thought you told me youâ€™d be able to handle this problem? Off you go now.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi059.mp3", 2987804882, 305341114)
	Dialog.AddLanguage(1)
	Dialog.AddOption("I'm going, I'm going.")
	Dialog.Start()
end

function Dialog26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Slaying a ranking member of the Freeport Militia would only bring more scrutiny from the powers that be and trust me, the last thing I need are more officials meddlin' in my affairs. No instead we'll just teach 'im never to break the trust of a barbarian. Go over to his quarters and smash every last bit of furniture he's got. Heh, a bit of Halasian Housekeeping should serve as a suitable warning!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi033.mp3", 394735208, 2389265563)
	Dialog.AddLanguage(1)
	Dialog.AddOption("With pleasure!")
	Dialog.AddOption("One mass furni-cide comin' up!")
	Dialog.AddOption("I better not get blamed for this!")
	Dialog.Start()
end

function Dialog27(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ha ha! Nice job, young one. A fearsome opponent you shall make! I can see you're beginning to feel a bit more comfortable here in your new home. That's good; though don't ever let your guard down. Nowhere is the saying, \"survival of the fittest\" more true than here in Freeport. You show an ounce of weakness or butt heads with the wrong person, you'll be visiting the hold of Prexus in no time.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi024.mp3", 1767443796, 3263335605)
	Dialog.AddLanguage(1)
	Dialog.AddOption("I'll be careful.", "Dialog29")
	Dialog.Start()
end

function Dialog28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whether it be true or not matters little right now. There's only one lizard I care to know at this time and that's Issik Dethyr. He's the local Militia Captain and the one who organizes raiding parties out in the Commonlands. Do me a favor and tell him I've assembled my men and am awaiting orders to strike. Today I shall coat my blade with the blood of a thousand orcs.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi029.mp3", 3609136355, 1125595110)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Where can I find him?", "Dialog14")
	Dialog.AddOption("Forget it! I'm not consorting with any of their type!")
	Dialog.Start()
end

function Dialog29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, careful or else dead. Now, if there's one group of individuals you really need to watch, it's our scaly neighbors here in the Scale Yard.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi025.mp3", 2567320391, 3887205284)
	Dialog.AddLanguage(1)
	Dialog.AddOption("The Iksar?", "Dialog22")
	Dialog.Start()
end

function Dialog30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good, though you've not listened to my words closely. I said I've already caught wind of your misdeeds! It appears you were spotted by some agents of the Overlord. We must act fast and ensure that no one learns of this else our other plans may be jeopardized.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi048.mp3", 3806006880, 3429046626)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Plans? What plans?", "Dialog3")
	Dialog.Start()
end

function Dialog31(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What!!! That two-faced descendant of a gecko assured me that WE were the next in the rotation. Oh he's gonna pay. He's gonna pay for sure. I ought to go right over and...")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi031.mp3", 2545915937, 3562538048)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Stomp some tail!? Literally?!", "Dialog41")
	Dialog.AddOption("You know, slaying a member of the Freeport Militia may not be the best idea...", "Dialog41")
	Dialog.AddOption("Aye, let's make him pay with his life!", "Dialog41")
	Dialog.Start()
end

function Dialog32(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, how'd it go? I could hear you yelling all the way over here!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi023.mp3", 141694425, 3738807561)
	Dialog.AddLanguage(1)
	Dialog.AddOption("I'm back! Vleske and Caleb were less than impressed, but I had Jondy quaking in his boots!", "Dialog27")
	Dialog.Start()
end

function Dialog33(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Indeed. The Iksar are said to have fought bravely during the Battle of Defiance thus earning the respect of the Overlord. Some say that he even keeps a few in his court as personal advisors. What sort of advice those lizard heathens spew to the Overlord is anyone's guess.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi028.mp3", 3675148532, 1215322716)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Politics, bah!", "Dialog28")
	Dialog.AddOption("Iksar in upper echelons of this city's hierarchy? How unsettling.", "Dialog28")
	Dialog.AddOption("I couldn't care less.", "Dialog28")
	Dialog.Start()
end

function Dialog34(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A Northman relies on their strength to conquer their enemies and maintain the respect from our peers. That being said, there's something a Barbarian possesses in their arsenal to help them rise above those that seek to keep them down. Do you know what that is?")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi034.mp3", 1400549085, 940423901)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Our brains?", "Dialog11")
	Dialog.AddOption("Big boots?", "Dialog8")
	Dialog.AddOption("A mighty sword?", "Dialog2")
	Dialog.AddOption("Fear?", "Dialog39")
	Dialog.Start()
end

function Dialog35(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's it! Scare the ugly right off an ogre, I bet you could. Now let me see that journal of yours. I got a list of people who could use a good yellin'. Go to each of these people, look 'em in the eye and let loose your fiercest howl.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi046.mp3", 408175612, 3827489644)
	Dialog.AddLanguage(1)
	Dialog.AddOption("They're going to be begging me for forgiveness!")
	Dialog.Start()
end

function Dialog36(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That is why we follow his orders unflinchingly... For the time being. Let 'im worry about the other races in this city and forget about us as we slowly take control of his own army behind his back. When we strike, he'll have no one to turn to. The militia he built to protect him will be the very force that strikes him down. Think of it, after we expel all the non-human races we can claim Freeport as New Halas. Ah, what a glorious day that will be!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi055.mp3", 651084963, 2450797519)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Devious, under-handed and yet, ingenious... Just what I would expect from a citizen of this city. What can I do to help?", "Dialog45")
	Dialog.AddOption("You speak of treason! I will listen to no more of this!")
	Dialog.Start()
end

function Dialog37(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("AHHHHHHHHHHHHHHHH!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi042.mp3", 3394760676, 3440308647)
	Dialog.AddLanguage(1)
	Dialog.AddOption("...", "Dialog17")
	Dialog.Start()
end

function Dialog38(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Go over there and get rid of that flying vermin and dispose of their hive. Youâ€™ll make fast friends clearing up this mess and establish the fact that yer handy in a tussle.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi007.mp3", 3983810535, 3176793285)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Ha! I thought this was going to be challenging! Iâ€™ll be right back!")
	Dialog.Start()
end

function Dialog39(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Exactly!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi038.mp3", 3661532795, 2460300955)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Tell me more.", "Dialog7")
	Dialog.Start()
end

function Dialog40(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm Malachi Sleetspear, Clan Chief of this here district and the best person to show you the ropes 'afore you go messin' about with all the rough-and-tumble dealings of this here place. This 'aint no elven tree village ya know. This here be the Scale Yard. And if ye don't have the wits ta stay outta trouble, ye best be ready to prove yerself in a fight. Rallos knows you can find plenty of them around here! Ha ha ha!!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi002.mp3", 1307435807, 3638731154)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Don't you worry about me. I can handle myself just fine.", "Dialog13")
	Dialog.AddOption("Good, Iâ€™m looking for a fight! Point me in the direction of trouble. Iâ€™ll put a proper end to things!", "Dialog13")
	Dialog.AddOption("Iâ€™m not looking for trouble! Iâ€™m just looking to stay safe. What should I do?", "Dialog24")
	Dialog.AddOption("Bah! Anyone who messes with me has another thing coming! Iâ€™ll speak with you later.")
	Dialog.Start()
end

function Dialog41(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Bwuahh! No, no... Though I don't normally say this, violence is not the solution... at least not the type visited upon him.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi032.mp3", 118386367, 801167721)
	Dialog.AddLanguage(1)
	Dialog.AddOption("How do you mean?")
	Dialog.AddOption("Darn.", "Dialog26")
	Dialog.Start()
end

function Dialog42(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good luck Fuhe, and remember... For New Halas!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi057.mp3", 3904497109, 418111137)
	Dialog.AddLanguage(1)
	Dialog.AddOption("For New Halas!")
	Dialog.Start()
end

function Dialog43(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("An old Halasian tale speaks of Ginmarr Gritgut, a Barbarian of slight stature, but large repute. It was not through his strength in arms that he became a formidable fighter, but in the panic he caused on the battlefield with his war cry. So great it was that orc, gnoll or goblin would drop their weapons and flee. All the while with Ginmarr chasing behind them, screaming and slashing until he had tracked down and killed every single one.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi040.mp3", 4139953510, 403413544)
	Dialog.AddLanguage(1)
	Dialog.AddOption("That must have been quite a sound to hear!", "Dialog5")
	Dialog.Start()
end

function Dialog44(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thatâ€™s the spirit! Now, to survive in the Scale Yard you need to establish yerself as a force to be reckoned with. Let â€˜em know yer no softie. Lucky for you, I know just the thing thatâ€™ll get you the respect you deserve from the folks around here.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi005.mp3", 3278414449, 2499212800)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Go on.", "Dialog15")
	Dialog.Start()
end

function Dialog45(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, you've done much already but I'm afraid after all the ruckus you stirred up, its best you find work elsewhere. Go speak to Enforcer Kurdek in the Sprawl and see if he could use your help.")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi056.mp3", 3512384326, 3311708493)
	Dialog.AddLanguage(1)
	Dialog.AddOption("Okay.", "Dialog42")
	Dialog.Start()
end

function Dialog46(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("AHHHHHHHHHHHHHHHH!")
	Dialog.AddVoiceover("voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi044.mp3", 1778159688, 2608036494)
	Dialog.AddLanguage(1)
	Dialog.AddOption("AHHHHHHHH!", "Dialog12")
	Dialog.Start()
end

