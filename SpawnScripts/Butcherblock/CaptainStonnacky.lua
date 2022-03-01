--[[
	Script Name	: SpawnScripts/Butcherblock/CaptainStonnacky.lua
	Script Purpose	: Captain Stonnacky <The Far Seas Trading Company>
	Script Author	: jakejp
	Script Date	: 2018.06.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local CoinForTheCaptain = 255
local CaptainSays = 267

function spawn(NPC)
        ProvidesQuest(NPC, CaptainSays)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

        if HasQuest (Spawn, CoinForTheCaptain) and GetQuestStep(Spawn, CoinForTheCaptain) == 1 and HasCompletedQuest(Spawn, CaptainSays) == false then
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		        AddConversationOption(conversation, "Um, Dockmaster Highpebble wanted me to give you this sack of coin. I believe it's the week's pay for your crew.", "dlg_4_1")
			AddConversationOption(conversation, "Hmm, perhaps I should come back another time...")
			StartConversation(conversation, NPC, Spawn, "Yarr! An' after I asked if he wanted ta kiss the captain's daughter, he closed his eyes an' puckered up. Well, naturally I let the cat out o' the bag then! Har har har...")
                elseif HasQuest (Spawn, CoinForTheCaptain) == true and GetQuestStep(Spawn, CoinForTheCaptain) == 1 and HasCompletedQuest(Spawn, CaptainSays) == true then
                        SetStepComplete(Spawn, CoinForTheCaptain, 1)
	                SetStepComplete(Spawn, CoinForTheCaptain, 2)
                        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
                        AddConversationOption(conversation, "Um, Dockmaster Highpebble wanted me to give you this sack of coin. I believe it's the week's pay for your crew.")
			AddConversationOption(conversation, "Hmm, perhaps I should come back another time...")
			StartConversation(conversation, NPC, Spawn, "Yarr! An' after I asked if he wanted ta kiss the captain's daughter, he closed his eyes an' puckered up. Well, naturally I let the cat out o' the bag then! Har har har...")
		elseif HasQuest (Spawn, CaptainSays) == false and GetQuestStep(Spawn, CoinForTheCaptain) == 2  and HasCompletedQuest(Spawn, CaptainSays) == false and HasQuest(Spawn, CaptainSays) == false then
                        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		        AddConversationOption(conversation, "Um, Dockmaster Highpebble wanted me to give you this sack of coin. I believe it's the week's pay for your crew.", "dlg_4_1_b")
			AddConversationOption(conversation, "Hmm, perhaps I should come back another time...")
			StartConversation(conversation, NPC, Spawn, "Yarr! An' after I asked if he wanted ta kiss the captain's daughter, he closed his eyes an' puckered up. Well, naturally I let the cat out o' the bag then! Har har har...")
		elseif HasQuest(Spawn, CaptainSays) == true and GetQuestStep(Spawn, CaptainSays) <= 3 then
			Say(NPC, "Arrrr you sure you spoke with all me crew yet, matey?")
		elseif HasQuest(Spawn, CaptainSays) and GetQuestStep(Spawn, CaptainSays) == 4 then
			SetStepComplete(Spawn, CaptainSays, 4)
			SetStepComplete(Spawn, CoinForTheCaptain, 2)
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
			AddConversationOption(conversation, "Uh, Cap'n? There is the small matter of the gold you promised to pay me...", "dlg_9_1")
			StartConversation(conversation, NPC, Spawn, "Ahoy ye return! Me hearties 'ave all reported in an are ready to work. We'll be on the trail of that salty dog, Blackguard the Pirate in no time! No quarter for 'im! Har har! Now, where's me ship at...")
		elseif HasQuest(Spawn, CoinForTheCaptain) == false and HasCompletedQuest(Spawn, CaptainSays) == true then
                        Say(NPC, "Your days are numbered, Pirate Blackguard! Soon as the ship is ready, I'm settin' out find ye! Yarrr!!!")
                else
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
			AddConversationOption(conversation, "Riiiight.")
			StartConversation(conversation, NPC, Spawn, "Yarr! An' after I asked if he wanted ta kiss the captain's daughter, he closed his eyes an' puckered up. Well, naturally I let the cat out o' the bag then! Har har har...")
		end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, CoinForTheCaptain, 1)

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Who? I'm not Bosun Oxeye. You must have me confused with someone else.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Bosun Oxeye is that you? We be needin' to prepare the Terror of Timorous for launch if'n we ever hope ta catch that scurvy dog! Gather the other lads an' tell 'em we be fixin' to weigh anchor handsomely!")
end

function dlg_4_1_b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Who? I'm not Bosun Oxeye. You must have me confused with someone else.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Bosun Oxeye is that you? We be needin' to prepare the Terror of Timorous for launch if'n we ever hope ta catch that scurvy dog! Gather the other lads an' tell 'em we be fixin' to weigh anchor handsomely!")
end

function dlg_4_1_c(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, CoinForTheCaptain, 1)
	SetStepComplete(Spawn, CoinForTheCaptain, 2)

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Who? I'm not Bosun Oxeye. You must have me confused with someone else.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Bosun Oxeye is that you? We be needin' to prepare the Terror of Timorous for launch if'n we ever hope ta catch that scurvy dog! Gather the other lads an' tell 'em we be fixin' to weigh anchor handsomely!")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "My week's pay? Oh, well of course, Captain. What are your orders?", "GiveCaptainSays")
		AddConversationOption(conversation, "I really don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "You keep talkin' like that an' ye'll meet the rope's end of me togey, bucko! Now, I need you to gather up the crew and deliver their next orders. As soon as the ships been givin' a clean bill o' health I want 'em on board at workin' smartly! Do that an' you'll get yer week's pay 'ere.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Alright, next?", "dlg_4_4")
	StartConversation(conversation, NPC, Spawn, "Go seek out me crew members. First I want ye ta tell Bimine Bowchaser to flemish down the boat falls an' be sure all the lines are coiled correctly!")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "OK. Who's next?", "dlg_4_5")
	StartConversation(conversation, NPC, Spawn, "Next find that jack tar, Mizzen Staysail. Tell that lil one to knock off the bright work an' clamp down the deck!")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Got it! I'll tell them right away!")
		AddConversationOption(conversation, "Wait, I have a question about your crew's orders.", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Finally, look for that lass, Tally Topgallant. Tell her ta lash up an' stow afore she batten down the hatches!")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Um... Aye aye, Cap'n?")
		AddConversationOption(conversation, "Really, I'm not Bosun Oxeye!")
	StartConversation(conversation, NPC, Spawn, "At ease there, Bosun. 'Ere be your share 'o the booty. Don' go spendin' all on one port now. Just make sure you report back in time for your turn in the dogwatch!")
end

function GiveCaptainSays(NPC, Spawn)
	OfferQuest(NPC, Spawn, CaptainSays)
end