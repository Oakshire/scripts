--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyStoutgut.lua
	Script Purpose	: Deputy Stoutgut 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut014.mp3", "", "", 2205151102, 3536637230, Spawn)
		AddConversationOption(conversation, "The villagers weren't very cooperative, but I got the plans.", "dlg_5_1")
		AddConversationOption(conversation, "Pest?  Watch it, Stoutgut!")
	StartConversation(conversation, NPC, Spawn, "And you return yet again.  What can I do for you, pest?")
	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut001.mp3", "", "", 3000217040, 2274433071, Spawn)
		AddConversationOption(conversation, "Where is the parchment I gave you, Deputy?", "dlg_6_1")
		AddConversationOption(conversation, "If you're going to be like that, nothing!")
		StartConversation(conversation, NPC, Spawn, "What in the name of Bristlebane do you want?")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut001.mp3", "", "", 3000217040, 2274433071, Spawn)
		AddConversationOption(conversation, "If you're going to be like that, nothing!", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "What in the name of Bristlebane do you want?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut001.mp3", "", "", 3000217040, 2274433071, Spawn)
		AddConversationOption(conversation, "Deputy Nettlebrine sent me.  Do you have any fundraising ideas for the Museum?", "dlg_11_1")
		AddConversationOption(conversation, "If you're going to be like that, nothing!")
		StartConversation(conversation, NPC, Spawn, "What in the name of Bristlebane do you want?")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut024.mp3", "", "", 986032444, 593246848, Spawn)
		AddConversationOption(conversation, "I have this for you.", "dlg_12_1")
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you fixed the hole in the wall yet?  Come on, kid, I don't have all day!")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut030.mp3", "", "", 3454621926, 2606477724, Spawn)
		AddConversationOption(conversation, "What is the problem, Deputy?", "dlg_13_1")
		AddConversationOption(conversation, "Nothing!")
		StartConversation(conversation, NPC, Spawn, "I knew it, I just knew it! Oh, so you've come back yet again.  Whatda ya want now?")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut006.mp3", "", "", 1718510880, 3032820724, Spawn)
		AddConversationOption(conversation, "I know how to do this.", "dlg_17_1")
		AddConversationOption(conversation, "No, get your own.")
		AddConversationOption(conversation, "I'm not quite ready yet.")
		StartConversation(conversation, NPC, Spawn, "So you're back already?  I'll show you how to put this thing together if you're ready.")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut001.mp3", "", "", 3000217040, 2274433071, Spawn)
		AddConversationOption(conversation, "Do you have any work for me?", "dlg_18_1")
		AddConversationOption(conversation, "If you're going to be like that, nothing!")
		StartConversation(conversation, NPC, Spawn, "What in the name of Bristlebane do you want?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut012.mp3", "", "", 689544930, 1394566660, Spawn)
		AddConversationOption(conversation, "I'm sorry I didn't know.  Where can I find them?", "dlg_19_1")
		AddConversationOption(conversation, "Calm down, Deputy!")
		StartConversation(conversation, NPC, Spawn, "If you want somethin' done you've got to...  What, you're back already?  You haven't even tried to fix the wall yet, have you?  You'll need to get the plans for the wall before you fix it.  I thought that would've been obvious!")
	end

end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut015.mp3", "", "", 1819724040, 1763342876, Spawn)
		AddConversationOption(conversation, "Okay.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "No, I didn't think the villagers would be.  If only they'd listened to me...but there, I'm not going to get all sappy.   Let me see those plans.  I'm not sure what this mess is.  Give it here, I'll try to piece it together. Now be on your way!")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut016.mp3", "", "", 3995053640, 1949553230, Spawn)
		AddConversationOption(conversation, "Where you told me to get them!", "dlg_6_2")
		AddConversationOption(conversation, "Don't call me kid.  Bye!")
	StartConversation(conversation, NPC, Spawn, "Where did you get these plans, kid?")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut017.mp3", "", "", 3112714121, 3825102590, Spawn)
		AddConversationOption(conversation, "Who should I see to translate it?", "dlg_6_3")
		AddConversationOption(conversation, "I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "Sure you did.  I can't make heads or tails of this mess.  You'll need to go have someone translate this.")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut018.mp3", "", "", 3627724909, 917879739, Spawn)
		AddConversationOption(conversation, "I can find him.", "dlg_6_4")
		AddConversationOption(conversation, "I don't have time, sorry.")
	StartConversation(conversation, NPC, Spawn, "You don't know Deputy Blumble?  Heh, you can find him at the wall in one of the offices.  Do you think you can find him or do I have to walk you over there?")
end

function dlg_6_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut019.mp3", "", "", 644412765, 165524188, Spawn)
		AddConversationOption(conversation, "I'm going already.", "dlg_6_5")
	StartConversation(conversation, NPC, Spawn, "Hurry up then!  Those vermin are flooding in through that hole in the wall as we speak.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut002.mp3", "", "", 1141279887, 640125766, Spawn)
		AddConversationOption(conversation, "I'm not sure what you mean, Deputy.", "dlg_11_2")
		AddConversationOption(conversation, "Nothing is wrong with us!")
	StartConversation(conversation, NPC, Spawn, "What is this about, not another fundraiser, is it?  What is wrong with you whippersnappers now-a-days?")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut003.mp3", "", "", 4081208043, 1448404412, Spawn)
		AddConversationOption(conversation, "There aren't that many.", "dlg_11_3")
		AddConversationOption(conversation, "You're right.  Bye!")
	StartConversation(conversation, NPC, Spawn, "I mean, I hate fund raisers!  You kids have more fund raisers than they had gods before the Shattering.")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut004.mp3", "", "", 520106342, 1808385038, Spawn)
		AddConversationOption(conversation, "Back to the fundraiser...", "dlg_11_4")
		AddConversationOption(conversation, "Ha Ha both ways?  Bye!")
	StartConversation(conversation, NPC, Spawn, "In my day, I had to walk the entire thicket end to end, bare foot, up hill and through the snow ...  BOTH WAYS!  What's wrong with you kids?")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut005.mp3", "", "", 1123541835, 2802574331, Spawn)
		AddConversationOption(conversation, "You might be onto something, Deputy.  I'll get right to work!", "dlg_11_5")
	StartConversation(conversation, NPC, Spawn, "I hate fundraisers, you will not get my hard earned coins.  What that museum needs is good luck!  Why don't you track down some goblins and string their ears together?  That's how the Leatherfoot Raiders, the real halfling warriors, made a luck charm.  If you want to give something to the museum, give them something real, something from our history!  Now go!  ")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut025.mp3", "", "", 3205887150, 1501358947, Spawn)
		AddConversationOption(conversation, "This is what I made from the plans you had me get.", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "What in the name of Bristlebane's whiskers is this?")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut026.mp3", "", "", 402908551, 4204831156, Spawn)
		AddConversationOption(conversation, "But, this is what you told me...  Nevermind!  Thanks, I guess.", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "This isn't what you were to get!  I need the wall fixed, not this!  Bah!  Here ya made this piece of junk.  You keep it.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut020.mp3", "", "", 187178887, 2713594168, Spawn)
		AddConversationOption(conversation, "What happened, Deputy?", "dlg_13_2")
		AddConversationOption(conversation, "You're right, you are a crazy old fool!")
	StartConversation(conversation, NPC, Spawn, "Nothin' you would be interested in, but if ya must know...  It all started when the lamia found their way to the Enchanted Lands.  I told them! I told them all, I did!  And nooo!  They wouldn't listen to a word I had to say, would they?  Don't listen to the crazy old fool.  And that's when it happened!")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut021.mp3", "", "", 756155612, 2416013509, Spawn)
		AddConversationOption(conversation, "That's bad!  What have you done about it?", "dlg_13_3")
		AddConversationOption(conversation, "Really, disappeared huh?  I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "First the dogs started to act strange.  One of them even tried to bite Deputy Huckfar!  Then people started acting funny.  I tried to warn them. 'The crazy old coot doesn't know what he's talking about,' is all I heard.  Now, folks are disappearing.  Deputy Kegie's partner went missing.  Kegie's never been real bright, but now he's completely unhinged.  He thinks he's next.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut022.mp3", "", "", 1307903429, 4229629453, Spawn)
		AddConversationOption(conversation, "Charmed?", "dlg_13_4")
		AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "What have I done?  I did my duty; I sounded the alarm.  Folks didn't listen and I'm too old to go out there waltzing through the wilderness.  If they want to get themselves charmed then so be it.")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut023.mp3", "", "", 3792453407, 3976719679, Spawn)
		AddConversationOption(conversation, "What wimmin, er, women?  Who did they take?", "dlg_13_5")
		AddConversationOption(conversation, "Now that's crazy talk.")
	StartConversation(conversation, NPC, Spawn, "Yes, charmed!  I said charmed, didn't I?  They came in the middle of the night and just took 'em.  No one knew, but I did!  No one listened to my warnings and now they're gone!  Corrupted by those wimmin! ")
end

function dlg_13_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut031.mp3", "", "", 1581307422, 3420291599, Spawn)
		AddConversationOption(conversation, "Is there anything I can do?", "dlg_13_6")
		AddConversationOption(conversation, "It's not my problem.")
	StartConversation(conversation, NPC, Spawn, "The younger halflings, they have weaker minds and stronger bodies.  Like that partner of Kegie's, I forget his name now.  He was taken right out from under Kegie's nose.  The poor guy, he thinks he's next.  And he might be!  We all might be!  Those wimmin must be stopped!")
end

function dlg_13_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut032.mp3", "", "", 3158007445, 2557802354, Spawn)
		AddConversationOption(conversation, "How?", "dlg_13_7")
	StartConversation(conversation, NPC, Spawn, "You, kid?  Is there anything you can do?  You can help me prove that the lamia are the problem.  Help me prove I've been right all along! ")
end

function dlg_13_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut037.mp3", "", "", 3149180998, 3606483921, Spawn)
		AddConversationOption(conversation, "You can count on me.", "dlg_13_8")
	StartConversation(conversation, NPC, Spawn, "Go out and see what is happening in the halfling village.  They used to be peaceful folk, but remember what a fuss they put up over those plans!  See if you can figure out a connection between them wimmin and what's happened to the villagers.  Come back and tell me what you find.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut007.mp3", "", "", 1428232613, 2978158003, Spawn)
		AddConversationOption(conversation, "Thanks, I guess.", "dlg_17_2")
	StartConversation(conversation, NPC, Spawn, "Let me have that!  First you poke the ears with the needle like this and then pull the thread though like thi...  Ouch!  I'll take this luck charm over to Nettlebrine later.  She won't need any museum fundraisers with one of these!")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut009.mp3", "", "", 284712331, 1970714418, Spawn)
		AddConversationOption(conversation, "What hole in the wall?", "dlg_18_2")
		AddConversationOption(conversation, "Fix it yourself!")
	StartConversation(conversation, NPC, Spawn, "As a matter of fact I do.  You young people think you know everything, don't you?  DON'T YOU?  If you want something to do, go fix that hole in the wall.  I hate looking at it.")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut010.mp3", "", "", 1085130442, 3309326051, Spawn)
		AddConversationOption(conversation, "I see it.", "dlg_18_3")
		AddConversationOption(conversation, "Good bye.")
	StartConversation(conversation, NPC, Spawn, "What hole in the wall?  You haven't been around here very long have you?  The hole over there!  See it?  OVER There!")
end

function dlg_18_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut011.mp3", "", "", 3851743591, 2529609948, Spawn)
		AddConversationOption(conversation, "Okay! Okay, I'm going.", "dlg_18_4")
	StartConversation(conversation, NPC, Spawn, "Good now go fix it, the creatures from the other side are coming in through that hole.  I don't know why no one ever does anything I say.  Now get over there!")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut013.mp3", "", "", 3884070206, 1389103522, Spawn)
		AddConversationOption(conversation, "Where can I find them?", "dlg_19_2")
		AddConversationOption(conversation, "Okay, thank you, Deputy.")
	StartConversation(conversation, NPC, Spawn, "The plans?  You'll find them within the halfling village west of the wall.  Our folks have been caring for the plans until the time when we could rebuild.  You might wanna be careful, though.  Lately some of the villagers haven't been themselves.  Under the influence, no doubt.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/deputy_stoutgut/enchanted/solo_stoutgut/deputy_stoutgut029.mp3", "", "", 58649674, 1428625764, Spawn)
		AddConversationOption(conversation, "Okay, I'm going!", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "Are you daft?  I said west of the wall! Those villagers might be a bit distrustful of an outsider. Especially since...oh, never mind.  Now for the last time, hurry up and get those plans!")
end

