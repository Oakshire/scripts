--[[
	Script Name	: SpawnScripts/GreaterFaydark/SaelirVarryn.lua
	Script Purpose	: Saelir Varryn 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, I have collected the materials.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Well? Did you collect all the materials?")
	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have the declarations.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Did you manage to get the declarations?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have the Sul Spheres.", "dlg_14_1")
		StartConversation(conversation, NPC, Spawn, "Hi, XXXXXXXX.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have the Sul Spheres.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Hi, XXXXXXXX.")
	end

	if convo==104 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why do you say that?", "dlg_104_1")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "Greetings. Enjoying your stroll? No, I don't suppose you would be.")
	end

	if convo==105 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why do you say that?", "dlg_105_1")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "Greetings. Enjoying your stroll? No, I don't suppose you would be.")
	end

	if convo==106 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Why do you say that?", "dlg_106_1")
		AddConversationOption(conversation, "I must be going.")
		StartConversation(conversation, NPC, Spawn, "Greetings. Enjoying your stroll? No, I don't suppose you would be.")
	end

end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What did you say?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Good. Unfortunately I was ejected from the Fae Royal court. They won't let me back in. I was, erm, a little rude once I got inside.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Fine. Where are they?", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "That's not important. Needless to say I feel dumb for having done it and they're not letting me back in there anytime soon. I need you to go get the declarations.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "... don't do what you did?", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "Somewhere in the Fae royal court. And don't...")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right. I'll return.", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "Right. While you're doing that I'm going to research whose Sul Spheres I'd like to steal.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You still haven't told me what your plan is.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Good work. Now we need only collect the Sul Spheres and we can act.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "They won't listen.", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "Well, like I said, I want to laugh at those who buy into this foolishness. What I'd like to do is break the Sul Spheres they hold so dear. I'd like to think that such an act would snap them into their senses, but I doubt that will happen. At the least, I will call out the emotion they will ooze forth at the destruction of an inanimate object.")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So what must we do?", "dlg_8_4")
	StartConversation(conversation, NPC, Spawn, "It is the duty of an artist to be misunderstood, .. GetName(Spawn) .. . Some will see what I'm saying, and they'll know we're right. That is enough for me.")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "And run?", "dlg_8_5")
	StartConversation(conversation, NPC, Spawn, "Once we have the Sul Spheres we're going to sneak into Sammial's apartment at Aerie Kolmas. We've already acquired the components we'll need to use the machine. I've read up on the inner workings of it and know a way to overload its controls in such a way that we can destroy the Sul Spheres we place inside. Then we'll place the essay I've written, along with the Post-Mortem Declarations of Honor, near the machine for the guards to find.")
end

function dlg_8_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "They will be pretty mad.", "dlg_8_6")
	StartConversation(conversation, NPC, Spawn, "Yes, then we run. We don't want to get caught doing this, but we do want them to know it was us. We'll sign our names at the bottom of the essay. To show them how serious I am, I will be destroying my Great Uncle Saayes' Sul Sphere. My parents bought one despite my objections.")
end

function dlg_8_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I suppose. What do I need to do?", "dlg_8_7")
	StartConversation(conversation, NPC, Spawn, "Well... I'll just get them another Sul Sphere, that seemed to do well enough to stifle their emotions when he died. And if they are mad, and embrace their anger, then I'll have done them a favor.")
end

function dlg_8_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Okay.", "dlg_8_8")
	StartConversation(conversation, NPC, Spawn, "Collect the Sul Spheres. I've taken care to find a number of Sul Spheres that were made for well known people, this way it won't just affect their immediate families. First, I'd like you to steal the Sul Sphere of Hiraen Aravirta. He was a poet of much renown. His Sul Sphere is kept by his son, Eljas. He is a scribe and can be found near the bank.")
end

function dlg_8_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_8_9")
	StartConversation(conversation, NPC, Spawn, "Next, I'd like you to steal the Sul Sphere of The Greenlight. His true name has been lost, but his legend lives on--and his Sul Sphere is held by the Protector's of Growth, near Gearheart's Forge. Legend names him a great philanthropist, he has done a great deal for Kelethin.")
end

function dlg_8_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Okay.", "dlg_8_10")
	StartConversation(conversation, NPC, Spawn, "Then I'd like you to travel to the House of Falling Stars. They hold the Sul Sphere of Maayiri Ellia. She was one of Kelethin's first citizens and helped create policies and rules which are still followed to this day.")
end

function dlg_8_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Okay.", "dlg_8_11")
	StartConversation(conversation, NPC, Spawn, "Finally, I'd like you to collect the Sul Sphere of Jyoril Maarson. His love for Alaya Meriaan was legendary. Countless males from every generation following his have tried in vain to reuse his poetry to woo women of their own, but none could ever match the eloquence of Jyoril the Warrior-Poet. He was slain in combat with orcs before he and Alaya could ever marry. His Sul Sphere is now held by Alaya's daughter, Bettina Meriaan.")
end

function dlg_8_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will return.", "dlg_8_12")
	StartConversation(conversation, NPC, Spawn, "Once you have collected all the Sul Spheres return to me. I will have written the essay and acquired my great uncle's Sul Sphere. Then we can move.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What is it?", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "I... yes.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are you chickening out on me?", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "There was a portrait of my great uncle next to his Sul Sphere. I had forgotten what he looked like.")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why not?", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "No! I... I just. I don't know. I don't think I can go through with this.")
end

function dlg_14_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, I know exactly what you mean. You're giving up!", "dlg_14_5")
	AddConversationOption(conversation, "I think I do know what you mean. It's not like--")
	StartConversation(conversation, NPC, Spawn, "It's so... I mean yeah, I think it's silly to purchase a globe to remind ourselves of our loved ones, but who am I to tell an entire city that what they're doing is wrong? This was MY great uncle, .. GetName(Spawn) .. . I didn't think doing something like this would affect me, but I don't think I can destroy his Sul Sphere. I can't explain it, but maybe you know what I mean.")
end

function dlg_14_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "But we didn't go through with it, that's the important part.")
	StartConversation(conversation, NPC, Spawn, "It's not like having these stones around is actually hurting anybody. Sure, it may be a little sad, but I don't think it's unhealthy. We almost did a horrible thing.")
end

function dlg_14_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "It's all right. Have a nice day, Saelir.", "dlg_14_7")
	StartConversation(conversation, NPC, Spawn, "I agree. Here, I'll take these Sul Stones back to their proper owners. I'm sorry to have gotten you mixed up in this, XXXXXXXX.")
end

function dlg_14_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Goodbye.", "dlg_14_8")
	StartConversation(conversation, NPC, Spawn, "You too, .. GetName(Spawn) .. . Thank you.")
end

function dlg_104_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yeah, I think I do. It's like they don't trust me to be as good as they are.", "dlg_104_2")
	AddConversationOption(conversation, "What do you mean?")
	AddConversationOption(conversation, "No, I don't feel it.")
	StartConversation(conversation, NPC, Spawn, "How can anyone enjoy it here? This city is stifling. Don't you feel it?")
end

function dlg_104_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I get that feeling too. It's like they don't trust me to be as good as they are.")
	AddConversationOption(conversation, "Their experience is quite valuable. You should be thankful they care enough about you to keep trying despite your attitude.", "dlg_104_3")
	StartConversation(conversation, NPC, Spawn, "What do I mean? It's horrid living here. Have you ever met so many people who all have something to say about how you should be living your life? About what good you should be doing? About what evil you should be thwarting? I... well I realize that their intentions are good, but you cannot force choices upon someone. I feel as if I'm... I feel like I am not trusted to make a correct decision on my own.")
end

function dlg_104_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Good luck finding yourself, Saelir.")
	StartConversation(conversation, NPC, Spawn, "Oh... so you ARE one of them. I'm through talking with you.")
end

function dlg_105_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yeah, I think I do. It's like they don't trust me to be as good as they are.", "dlg_105_2")
	AddConversationOption(conversation, "What do you mean?")
	AddConversationOption(conversation, "No, I don't feel it.")
	StartConversation(conversation, NPC, Spawn, "How can anyone enjoy it here? This city is stifling. Don't you feel it?")
end

function dlg_105_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_105_3")
	AddConversationOption(conversation, "I guess, but they probably just have our best interests in mind. I'm sure they aren't intentionally being disrespectful.")
	StartConversation(conversation, NPC, Spawn, "Yes! It is so disrespectful, don't you think?")
end

function dlg_105_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Good luck finding yourself, Saelir.")
	StartConversation(conversation, NPC, Spawn, "Oh... so you ARE one of them. I'm through talking with you.")
end

function dlg_106_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yeah, I think I do. It's like they don't trust me to be as good as they are.", "dlg_106_2")
	AddConversationOption(conversation, "What do you mean?")
	AddConversationOption(conversation, "No, I don't feel it.")
	StartConversation(conversation, NPC, Spawn, "How can anyone enjoy it here? This city is stifling. Don't you feel it?")
end

function dlg_106_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I get that feeling too. It's like they don't trust me to be as good as they are.")
	AddConversationOption(conversation, "Their experience is quite valuable. You should be thankful they care enough about you to keep trying despite your attitude.", "dlg_106_3")
	StartConversation(conversation, NPC, Spawn, "What do I mean? It's horrid living here. Have you ever met so many people who all have something to say about how you should be living your life? About what good you should be doing? About what evil you should be thwarting? I... well I realize that their intentions are good, but you cannot force choices upon someone. I feel as if I'm... I feel like I am not trusted to make a correct decision on my own.")
end

function dlg_106_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_106_4")
	AddConversationOption(conversation, "I guess, but they probably just have our best interests in mind. I'm sure they aren't intentionally being disrespectful.")
	StartConversation(conversation, NPC, Spawn, "Yes! It is so disrespectful, don't you think?")
end

function dlg_106_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How were you going to do that?", "dlg_106_5")
	StartConversation(conversation, NPC, Spawn, "Ah. It's so refreshing to finally meet someone who agrees. Everyone else frowns at me and tells me I'm unpatriotic. One even had the nerve to ask me where my parents were! I swear, one day I'm going to show them all!")
end

function dlg_106_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Well, maybe I'd like to show them all as well.", "dlg_106_6")
	StartConversation(conversation, NPC, Spawn, "Well... I have my plans. I don't see why that would matter to you though.")
end

function dlg_106_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm in.", "dlg_106_7")
	StartConversation(conversation, NPC, Spawn, "Heh... yeah. Yeah... All right, we can do this together, partner. And when all is said and done, we'll leave Kelethin behind and strike out on our own, eh?")
end

function dlg_106_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_106_8")
	StartConversation(conversation, NPC, Spawn, "Great. So here's my plan. They always insult my lack of experience. I haven't seen the world as they have, and as such am naive and make foolish decisions. Well, I'd like to poke fun at the foolishness they adhere to. Despite their 'enlightened' and 'experienced tempered' view on life, they still hold to pointlessly impractical rituals.")
end

function dlg_106_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "No, who is he?", "dlg_106_9")
	AddConversationOption(conversation, "Yeah, I know his work.")
	AddConversationOption(conversation, "Does it matter?")
	StartConversation(conversation, NPC, Spawn, "Have you ever heard of Sammial Geravius?")
end

function dlg_106_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What's a Sul Sphere?", "dlg_106_10")
	StartConversation(conversation, NPC, Spawn, "He's an artist. A gnome. He's lived in Kelethin all his life. He... well, he's got technical talent, I won't argue that, but his work is so disgustingly sentimental. His work is specifically made to remind people of what makes them sad, and because of that he earns praise. All he's doing is exploiting emotions. His latest atrocity is something he calls Sul Spheres.")
end

function dlg_106_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So what do you want to do about it?", "dlg_106_11")
	StartConversation(conversation, NPC, Spawn, "A glass sphere that he fills with dyes and magicks. Sure, it's pretty to look at, but he claims to somehow capture the essence of a relative that's passed on and imbue it into the sphere. The only reason people buy them is because they feel bad for having lost a loved one and believe that this will fill the void. They believe that because this is what he tells them. 'Keep their memory close with a Sul Sphere,' I've heard him say. It's exploitive.")
end

function dlg_106_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are the components?", "dlg_106_12")
	StartConversation(conversation, NPC, Spawn, "I want to laugh in the face of everyone who buys into this pretentious junk. If I'm the naive one, then why are they the ones who are spending their valuable gold on a glass ball with color inside? Because they're fools. I am going to sneak into the Fae Royal Court to steal some Post Mortem Declarations of Honor, I think that will help with my message. Deeds are real, globes are... globes. While I do that I'd like you to gather some of the components necessary to work Sammial's machine that creates the Sul Spheres.")
end

function dlg_106_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right, I'll gather them.", "dlg_106_13")
	StartConversation(conversation, NPC, Spawn, "First you'll need a red-blooded and yellow-blooded mushroom from the forest floor near Tunare's Sapling Lift. You'll also need some purple berries, you can purchase those from Restauranteur Brizeyl Myrika over in Joleena's Restaurant. Finally you'll need a handful of seeds from the reedmace down on the Green Gnoll, just north west of the Fae Royal Court.")
end

function dlg_106_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_106_14")
	StartConversation(conversation, NPC, Spawn, "Great. I'll meet you back here once I've stolen the declarations.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Greetings. Enjoy Kelethin, I suppose.", "", 1689589577, 4560189, Spawn)
--]]

