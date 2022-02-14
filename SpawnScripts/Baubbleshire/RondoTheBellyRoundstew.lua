--[[
	Script Name	: SpawnScripts/Baubbleshire/RondoTheBellyRoundstew.lua
	Script Purpose	: Rondo "The Belly" Roundstew <Halfling Mentor>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

-- Race ID's
local Halfling = 7

-- Quest ID's
local HELPING_A_FRIEND = 323 -- was 70
local HELPING_A_FRIEND_AGAIN = 324 -- was 71
local HELPING_SOME_FRIENDS = 325 -- was 72
local PAYING_OFF_A_SWEET_DEBT = 326 -- was 73
local A_BUDDING_PRANKSTER = 327 -- was 74

-- Item ID's
local PRANK_PREPAREDNESS_KIT = 10574

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

function spawn(NPC)
	ProvidesQuest(NPC, HELPING_A_FRIEND)
	ProvidesQuest(NPC, HELPING_A_FRIEND_AGAIN)
	ProvidesQuest(NPC, HELPING_SOME_FRIENDS)
	ProvidesQuest(NPC, PAYING_OFF_A_SWEET_DEBT)
	ProvidesQuest(NPC, A_BUDDING_PRANKSTER)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	GenericHail(NPC, Spawn)
	
	if GetRace(Spawn) == Halfling then
		Begin(NPC, Spawn)
	else
		NotHalfling(NPC, Spawn)
	end
end

function InRange(NPC, Spawn) 
    if not HasCompletedQuest (Spawn, HELPING_A_FRIEND) and not HasQuest (Spawn, HELPING_A_FRIEND) and GetRace(Spawn) == 7 then 
             PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
        elseif HasCompletedQuest (Spawn, HELPING_A_FRIEND) then
           if math.random(1, 100) <= 75 then
         choice = math.random(1,3)
        FaceTarget(NPC, Spawn)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
            elseif choice ==2 then
            PlayFlavor(NPC, "", "", "wink", 0, 0, Spawn)
            else
            PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
            end
        else
        end
    end
end

function NotHalfling(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Say(NPC, "Well hello there. I'd love to help you, but I'm currently busy with folk of a short, round nature. My apologies.", Spawn)
end

function Begin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, HELPING_A_FRIEND) then
		if HasCompletedQuest(Spawn, HELPING_A_FRIEND_AGAIN) then
			if HasCompletedQuest(Spawn, HELPING_SOME_FRIENDS) then
				if HasCompletedQuest(Spawn, PAYING_OFF_A_SWEET_DEBT) then
					if HasCompletedQuest(Spawn, A_BUDDING_PRANKSTER) then
						TalkedToRemmyYet(NPC, Spawn, conversation)
					elseif HasQuest(Spawn, A_BUDDING_PRANKSTER) then
						TalkedToRemmyYet(NPC, Spawn, conversation)
					else
						DoYouHaveTheHoney(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, PAYING_OFF_A_SWEET_DEBT) then
					DoYouHaveTheHoney(NPC, Spawn, conversation)
				else
					DidTheySuspectAnything(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, HELPING_SOME_FRIENDS) then
				if GetQuestStep(Spawn, HELPING_SOME_FRIENDS) == 1 then
					Yes(NPC, Spawn, conversation)
				else
					DidTheySuspectAnything(NPC, Spawn, conversation)
				end
			else
				DidFlowersWork(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, HELPING_A_FRIEND_AGAIN) then
			DidFlowersWork(NPC, Spawn, conversation)
		else
			HowIsMaela(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, HELPING_A_FRIEND) then
		HowIsMaela(NPC, Spawn, conversation)
	else
		HelloFriend(NPC, Spawn, conversation)
	end
end

---------------------------------------------------------------------------------
--				QUEST 1
---------------------------------------------------------------------------------

function HelloFriend(NPC, Spawn, conversation)
	AddConversationOption(conversation, "We're friends already?", "dlg_2_1")
	AddConversationOption(conversation, "Hello and goodbye, friendliest friend.")
	StartConversation(conversation, NPC, Spawn, "Hello there, friendly friend.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Oh, definitely.", "ThatsRightWeDo")
	AddConversationOption(conversation, "Sure, I suppose.", "ThatsRightWeDo")
	StartConversation(conversation, NPC, Spawn, "Of course we are! You just offered to buy me a pint if I'm not mistaken, hah! You're the friendly sort, I can tell. And so am I! Perfectly matched to be pals, I'd say. Halflings like us need to stick together, wouldn't you say?")
end

function ThatsRightWeDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do to help?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "That's right we do! I'm glad you agree, it's better when we all agree. We've lost so much. Needless arguments and anger and pain and sadness only upset what otherwise could be a fun situation! Sure, we all try to live by this philosophy but for some of us it's tougher than others.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will try to help her.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "To start you can find my friend Maela. The poor lass has been emotional support for myself--and countless other halflings--more times than I can count. The thing is, I don't think anyone's ever taken the time to listen to her problems. I think she would feel bad about asking, and whenever I try to help she backs away. She needs an outlet.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HELPING_A_FRIEND)
end

function HowIsMaela(NPC, Spawn, conversation)
	if (HasCompletedQuest(Spawn, HELPING_A_FRIEND) and not HasCompletedQuest(Spawn, HELPING_A_FRIEND_AGAIN)) or (HasQuest(Spawn, HELPING_A_FRIEND) and GetQuestStep(Spawn, HELPING_A_FRIEND) == 2) then
		AddConversationOption(conversation, "She seems perfectly fine. She didn't want to open up at all.", "dlg_7_1")
	end
	
	AddConversationOption(conversation, "I do not know yet.")
	StartConversation(conversation, NPC, Spawn, "How is Maela?")
end

function dlg_7_1(NPC, Spawn)
	if HasQuest(Spawn, HELPING_A_FRIEND) then
		SetStepComplete(Spawn, HELPING_A_FRIEND, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "That sounds just like her. I hate to have to do this to her, but she's helped me too much for me to ignore her. Around the Baubbleshire you'll find some Misty Thicket Shadebloom flowers. Pick a bouquet for her, I have a feeling that will get her to open up some.")
end

----------------------------------------------------------------------------------------------
--				QUEST 2
----------------------------------------------------------------------------------------------

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HELPING_A_FRIEND_AGAIN)
end

function DidFlowersWork(NPC, Spawn, conversation)
	if (HasCompletedQuest(Spawn, HELPING_A_FRIEND_AGAIN) and not HasCompletedQuest(Spawn, HELPING_SOME_FRIENDS)) or (HasQuest(Spawn, HELPING_A_FRIEND_AGAIN) and GetQuestStep(Spawn, HELPING_A_FRIEND_AGAIN) == 3) then
		AddConversationOption(conversation, "Yes, I think she is doing well.", "dlg_15_1")
	end
	
	AddConversationOption(conversation, "I'm not sure yet.")
	StartConversation(conversation, NPC, Spawn, "Did the flowers work?")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "She told me about her husband and the Shadebloom. I think it helped her a lot to finally share with someone, and I think she'll work on sharing more in the future. How did you know about the Shadebloom?", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "Oh?")
end

function dlg_15_2(NPC, Spawn)
	if HasQuest(Spawn, HELPING_A_FRIEND_AGAIN) then
		SetStepComplete(Spawn, HELPING_A_FRIEND_AGAIN, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, it does.", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "Maela is my friend. I've seen her reaction to those flowers change in the recent weeks. It doesn't take a magician to figure out her husband's absence has gotten to her, but until she admitted it was bothering her there wasn't much we could do to help her. Now that she's admitted it, I'm sure she'll get as much support as she needs. It feels good to help people, doesn't it?")
end

-----------------------------------------------------------------------------------------
--				QUEST 3
------------------------------------------------------------------------------------------

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you mean?", "dlg_15_4")
	StartConversation(conversation, NPC, Spawn, "I was hoping you would say that. You know there are many, many ways to help people, right?")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What are you saying, exactly?", "dlg_15_5")
	StartConversation(conversation, NPC, Spawn, "Well, one thing I love to do is help. Another thing I love to do is joke around and play pranks. And, as luck would have it, playing pranks on people is a good way to let them know someone is paying attention to them. It's therapy, really, I think. Now, I would never think of playing a prank on Maela, she's far too sweet for that. But other halflings don't have the benefit of her disposition, and that makes them targets.")
end

function dlg_15_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What reputation?", "dlg_15_6")
	AddConversationOption(conversation, "Bristlebane?", "dlg_16_6")
	StartConversation(conversation, NPC, Spawn, "I'm talking about Bristlebane's Gift, his gift to US. The capacity to learn and grow and laugh and laugh from pranks! Pulling them, having them pulled on us, the benefit of Bristlebane is astounding on the halfling soul. And, I need someone to help me pull off my pranks due to my, eh, reputation.")
end

function dlg_15_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Well, all right.", "OfferQuest3")
	StartConversation(conversation, NPC, Spawn, "Never mind that, for now. Listen, I've got everything prepared, all I need is a little help from you. It shouldn't take too long, and should prove to be immensely hilarious! What do you say?")
end

function dlg_16_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What reputation?", "dlg_15_6")
	StartConversation(conversation, NPC, Spawn, "Bristlebane? Bristlebane? He's inside you right now and you don't even know it. He is of course the god of healing, love and kindness. Or, rather, the god of achieving those things through well-timed pranks. A halfling who doesn't know Bristlebane is, well, is like a flower without petals, or a pie without filling. Trust me, the more you get to know him the more you'll get to like him. Now, what do you say about helping me sidestep my reputation?")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HELPING_SOME_FRIENDS)
end

function GiveMeKit(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Prank Preparedness Kit
	if not HasItem(Spawn, PRANK_PREPAREDNESS_KIT, 1) then
		SummonItem(Spawn, PRANK_PREPAREDNESS_KIT, 1)
	end
			
	AddConversationOption(conversation, "Thanks!")
	StartConversation(conversation, NPC, Spawn, "Here you go. Good luck!")
end

function Yes(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I need the Prank Preparedness Kit.", "dlg_17_1")
	StartConversation(conversation, NPC, Spawn, "Yes?")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Prank Preparedness Kit
	if HasItem(Spawn, PRANK_PREPAREDNESS_KIT, 1) then
		AddConversationOption(conversation, "Thanks!")
		StartConversation(conversation, NPC, Spawn, "It looks like you already have one. You need to examine it, it's in one of your bags or backpacks somewhere.")
	else
		SummonItem(Spawn, PRANK_PREPAREDNESS_KIT, 1)
		AddConversationOption(conversation, "Thanks!")
		StartConversation(conversation, NPC, Spawn, "Here you go. Good luck!")
	end
end

function DidTheySuspectAnything(NPC, Spawn, conversation)
	if (HasCompletedQuest(Spawn, HELPING_SOME_FRIENDS) and not HasCompletedQuest(Spawn, PAYING_OFF_A_SWEET_DEBT)) or (HasQuest(Spawn, HELPING_SOME_FRIENDS) and GetQuestStep(Spawn, HELPING_SOME_FRIENDS) == 5) then
		AddConversationOption(conversation, "I don't think anyone suspected anything.", "dlg_22_1")
	end
	
	AddConversationOption(conversation, "I'm not done yet.")
	StartConversation(conversation, NPC, Spawn, "Well? How did it go? Did they suspect anything?")
end

function dlg_22_1(NPC, Spawn)
	if HasQuest(Spawn, HELPING_SOME_FRIENDS) then
		SetStepComplete(Spawn, HELPING_SOME_FRIENDS, 5)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "That didn't seem very expensive.", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I can't wait until I next talk to them. That's really the best part, you know. When you tell someone about something that they know you shouldn't know. The look on their face when they realize you must've had some part in their prank is, well, priceless. Ah, I couldn't live life any other way. I just wish pranking wasn't so expensive.")
end

-------------------------------------------------------------------------------------------------------------
--						QUEST 4
-------------------------------------------------------------------------------------------------------------

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Is that some kind of threat?", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "I'm a halfling of modest means. I had to call in a number of favors in order to get everything together for that series of pranks. Say, you're just as indictable as I am in this incident, you really should help me pay off some of this debt.")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you need?", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "No, of course not. But I really would appreciate some help. What do you say?")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can help. Which trees will have honey?", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "I used up some favors--and then some--to get those pies just perfect. I owe a chef friend of mine now, and I don't like owing people. I think I know the perfect way to pay her back though. If you could collect some honey from the trees around the Baubbleshire I'm sure that would be a perfect way to pay her back.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, PAYING_OFF_A_SWEET_DEBT)
end

function DoYouHaveTheHoney(NPC, Spawn, conversation)
	if (HasCompletedQuest(Spawn, PAYING_OFF_A_SWEET_DEBT) and not HasCompletedQuest(Spawn, A_BUDDING_PRANKSTER)) or (HasQuest(Spawn, PAYING_OFF_A_SWEET_DEBT) and GetQuestStep(Spawn, PAYING_OFF_A_SWEET_DEBT) == 2) then
		AddConversationOption(conversation, "Yes I do.", "dlg_24_1")
	end
	
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Do you have the honey?")
end

function dlg_24_1(NPC, Spawn)
	if HasQuest(Spawn, PAYING_OFF_A_SWEET_DEBT) then
		SetStepComplete(Spawn, PAYING_OFF_A_SWEET_DEBT, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, what do I need to do?", "dlg_24_2")
	AddConversationOption(conversation, "No, but thanks.")
	StartConversation(conversation, NPC, Spawn, "Ah, wonderful. You're really a big help, you know that? Listen, I've got an idea of how I can pay you back. How would you like to pull a prank of your own?")
end

----------------------------------------------------------------------------------------
--				QUEST 5
----------------------------------------------------------------------------------------

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Ok!", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "My friend Remmy is out in the Forest Ruins. He's currently in a small bind with the law, so he's in hiding. It's nothing serious, of course, but it involves a few stolen pies and he doesn't quite have the funds saved up to pay the charges. This is a simple prank but I think it'll be worth it. Just go up to him, act like a Qeynos guard, and call him 'Pie Man Sam.' I'm sure he'll get a huge kick out of it.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, A_BUDDING_PRANKSTER)
end

function TalkedToRemmyYet(NPC, Spawn, conversation)
	if HasCompletedQuest(Spawn, A_BUDDING_PRANKSTER) then
		AddConversationOption(conversation, "Yeah, I did.", "HowDidPrankGo")
	end
	
	AddConversationOption(conversation, "I haven't spoken to him yet.")
	StartConversation(conversation, NPC, Spawn, "Have you talked to Remmy yet?")
end

function HowDidPrankGo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "He fell for it big time.", "HahaThatsGreat")
	StartConversation(conversation, NPC, Spawn, "How did the prank go?")
end

function HahaThatsGreat(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It was great!")
	AddConversationOption(conversation, "It was much more fun than I thought it was going to be.")
	AddConversationOption(conversation, "It was okay.")
	AddConversationOption(conversation, "It wasn't that exciting.")
	StartConversation(conversation, NPC, Spawn, "Ha hah! That's great! I can't wait until I talk to him next, he's going to deny this ever happened, it's going to be great to rub his face in it. I hope you enjoyed pulling the prank!")
end