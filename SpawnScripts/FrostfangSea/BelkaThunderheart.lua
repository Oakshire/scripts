--[[
	Script Name	: SpawnScripts/FrostfangSea/BelkaThunderheart.lua
	Script Purpose	: Belka Thunderheart 
	Script Author	: theFoof
	Script Date	: 2013.05.31
	Script Notes	:
--]]

local DisplacedDiscouraged = 37

local ReclaimingHonor = 38

local TisUnnatural = 39

local PouringSkellies = 40

local NoWork = 41

local TacklingBasilisks = 42

local DomesticationSurvivalism = 43

local ReportSpine = 44

function spawn(NPC)
	ProvidesQuest(NPC, DisplacedDiscouraged)
	ProvidesQuest(NPC, ReclaimingHonor)
	ProvidesQuest(NPC, TisUnnatural)
	ProvidesQuest(NPC, PouringSkellies)
    ProvidesQuest(NPC, NoWork)
    ProvidesQuest(NPC, TacklingBasilisks)
    ProvidesQuest(NPC, DomesticationSurvivalism)
    ProvidesQuest(NPC, ReportSpine)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

    if not HasCompletedQuest(Spawn, DisplacedDiscouraged) and not HasQuest(Spawn, DisplacedDiscouraged) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1009.mp3", "", "", 0, 0, Spawn)
	    AddConversationOption(conversation, "Aah!  You're a blue dwarf!  I think I need to leave now.  Goodbye.")
	    AddConversationOption(conversation, "And into the fire?  But just who exactly are you, and why you are here?", "Quest1Chat_1")
	    AddConversationOption(conversation, "I am not interested in philosophy.  Just give me some work to do and skip the chat.", "OfferDisplacedDiscouraged")
	    StartConversation(conversation, NPC, Spawn, "Out of the frying pan...")
	elseif GetQuestStep(Spawn, DisplacedDiscouraged) == 1 then
		PlayFlavor(NPC, "", "the Ry'Gorr raiders aren't making our hard lives any easier.", "no", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, DisplacedDiscouraged) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1009.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I dealt with the orcs, as promised.", "Quest1Chat_10")
		AddConversationOption(conversation, "Dreary existence, isn't it?", "Quest1Chat_10")
		StartConversation(conversation, NPC, Spawn, "Yer still alive, " .. GetName(Spawn) .. ".  Good, good.  That's about as joyous as the news gets around here.")
	elseif HasCompletedQuest(Spawn, DisplacedDiscouraged) and not HasCompletedQuest(Spawn, ReclaimingHonor) and not HasQuest(Spawn, ReclaimingHonor) then
		Quest2Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, ReclaimingHonor) == 1 then
		PlayFlavor(NPC, "", "Make those Ry'Gorr raiders suffer for what they've done.", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, ReclaimingHonor) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1009.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Here are the signet rings.", "Quest2Chat_5")
		AddConversationOption(conversation, "I took their lives and then I took back the rings.", "Quest2Chat_5")
		AddConversationOption(conversation, "I did as you asked, but their suffering won't end yours.", "Quest2Chat_5")
		StartConversation(conversation, NPC, Spawn, "The Ry'Gorr have suffered for what they've done, I hope?")
	elseif HasCompletedQuest(Spawn, ReclaimingHonor) and not HasCompletedQuest(Spawn, TisUnnatural) and not HasQuest(Spawn, TisUnnatural) then
		Quest3Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, TisUnnatural) == 1 then
		PlayFlavor(NPC, "", "Engage the skeletal horde, and slay them where they stand.", "point", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, TisUnnatural) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1009.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I've completed my task.", "Quest3Chat_8")
		AddConversationOption(conversation, "I destroyed the skeletons.", "Quest3Chat_8")
		StartConversation(conversation, NPC, Spawn, "Have ye smashed the undead?  Have ye given the spirits a hand?")
	elseif HasCompletedQuest(Spawn, TisUnnatural) and not HasCompletedQuest(Spawn, PouringSkellies) and not HasQuest(Spawn, PouringSkellies) then
		Quest4Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, PouringSkellies) == 1 then
		PlayFlavor(NPC, "", "Don't waste any of Fronden's brew, if ye can help it.", "threaten", 0, 0, Spawn)
    elseif GetQuestStep(Spawn, PouringSkellies) == 2 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1009.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Worked like a charm.", "Quest4Chat_12")
		AddConversationOption(conversation, "Yes, and I can't believe anyone would drink this.", "Quest4Chat_12")
		StartConversation(conversation, NPC, Spawn, "Did Fronden's Finest do the trick?  Were ye able to obliterate the bone piles?")
    elseif HasCompletedQuest(Spawn, PouringSkellies) and not HasCompletedQuest(Spawn, NoWork) and not HasQuest(Spawn, NoWork) then
        Quest5Chat_1(NPC, Spawn)
    elseif GetQuestStep(Spawn, NoWork) == 1 then
        PlayFlavor(NPC, "", "Recover as much of that velium as ye can.", "agree", 0, 0, Spawn)
    elseif GetQuestStep(Spawn, NoWork) == 2 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1009.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I've got plenty.", "Quest5Chat_6")
		AddConversationOption(conversation, "All that you require and more.", "Quest5Chat_6")
		AddConversationOption(conversation, "Are you more worried about your precious metal than my well-being?", "Quest5Chat_7")
		StartConversation(conversation, NPC, Spawn, "Ah, ye've returned, " .. GetName(Spawn) .. ".  How much velium were ye able to recover?")
    elseif HasCompletedQuest(Spawn, NoWork) and not HasCompletedQuest(Spawn, TacklingBasilisks) and not HasQuest(Spawn, TacklingBasilisks) then
        Quest6Chat_1(NPC, Spawn)
    elseif GetQuestStep(Spawn, TacklingBasilisks) == 1 then
        PlayFlavor(NPC, "", "I'll be interested in hearing how ye fare against the basilisks.", "nod", 0, 0, Spawn)
    elseif GetQuestStep(Spawn, TacklingBasilisks) == 2 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1009.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "They are vicious creatures.", "Quest6Chat_9")
		AddConversationOption(conversation, "Based on the eggs and nests, I'd say the basilisks are rapidly reproducing.", "Quest6Chat_9")
		AddConversationOption(conversation, "They are like other wild animals: they fight to protect themselves and their young.", "Quest6Chat_9")
		StartConversation(conversation, NPC, Spawn, "Tell me about the basilisks, " .. GetName(Spawn) .. ".")
    elseif HasCompletedQuest(Spawn, TacklingBasilisks) and not HasCompletedQuest(Spawn, DomesticationSurvivalism) and not HasQuest(Spawn, DomesticationSurvivalism) then
        Quest7Chat_1(NPC, Spawn)
    elseif GetQuestStep(Spawn, DomesticationSurvivalism) == 1 then
        PlayFlavor(NPC, "", "I'd bet my left braid we could train the basilisks, if we only had some of their eggs.", "ponder", 0, 0, Spawn)
    elseif GetQuestStep(Spawn, DomesticationSurvivalism) == 2 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1009.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "That's not a very original name.", "Quest7Chat_7")
		AddConversationOption(conversation, "Best of luck raising and taming them!", "Quest7Chat_8")
		AddConversationOption(conversation, "I hope you're right about domesticating these beasts.", "Quest7Chat_8")
		StartConversation(conversation, NPC, Spawn, "Oh, look at all those basilisk eggs ye brought!  They're gonna hatch and then grow up to be the cutest nippers.  I'm naming this one Lockjaw.")
    elseif HasCompletedQuest(Spawn, DomesticationSurvivalism) and not HasCompletedQuest(Spawn, ReportSpine) and not HasQuest(Spawn, ReportSpine) then
        Quest8Chat_1(NPC, Spawn)
    elseif GetQuestStep(Spawn, ReportSpine) == 1 then
        PlayFlavor(NPC, "", "Report to Tad in Cragged Spine as soon as ye can.", "point", 0, 0, Spawn)
    elseif HasCompletedQuest(Spawn, ReportSpine) then
        PlayFlavor(NPC, "", "Pleasure to see ye again!", "hello", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you mean?", "Quest1Chat_2")
	AddConversationOption(conversation, "This is depressing.")
	StartConversation(conversation, NPC, Spawn, "Out of the fire, and into the icy abyss, more like.  We are the coldain, and we've been through more than you can imagine.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How did you get here?", "Quest1Chat_3")
	AddConversationOption(conversation, "What happened to Velious?", "Quest1Chat_8")
	AddConversationOption(conversation, "Perhaps some other time. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I don't suppose ye've had the chance to hear about how we got here, have ye?  Well, in case ye haven't noticed, we're not in Velious anymore.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happened next?", "Quest1Chat_4")
	AddConversationOption(conversation, "Sounds like an excuse.  Did they get away?", "Quest1Chat_4")
	AddConversationOption(conversation, "This is a bit too long-winded for me.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Not more than ten years back, a group of us coldain were tracking down a band of unruly Ry'Gorr orcs.  We'd chased 'em to the ends of the continent and had 'em good and cornered near the edge of the Iceclad Ocean.  And moments before we were able to run them down, the sky went perfectly dark.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart006.mp3", "", "", 183388199, 507572177, Spawn)
	AddConversationOption(conversation, "Saw what coming?", "Quest1Chat_5")
	AddConversationOption(conversation, "The timing doesn't make sense.  The cataclysm occurred long ago.", "Quest1Chat_9")
	AddConversationOption(conversation, "Something tells me this is how you got here.", "Quest1Chat_5")
	AddConversationOption(conversation, "I'm sorry.  I'll leave you to your grieving.")
	StartConversation(conversation, NPC, Spawn, "Within minutes, a chaotic storm rained ash, stone, and hellfire down upon us.  Clouds of hissing steam a hunnerd' dwarves high erupted each time a shard of rock collided with the snow.  The land trembled as if Veeshan herself sought to rend the continent in 'twain with her massive claws.  And then, we saw it coming.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Then what happened?", "Quest1Chat_6")
	AddConversationOption(conversation, "Very punny.", "Quest1Chat_6")
	AddConversationOption(conversation, "I'm sorry.  I'll leave you to your grieving.")
	StartConversation(conversation, NPC, Spawn, "A monstrous shard of rock, pointy like a harpy's claw and big as a mountain, was headed right for us.  There was no time to react, nor run, nor make an escape.  This chunk of earth struck down between us and the mainland.  The immense blast from the impact showered us with a ton of ice.  I was knocked out, cold.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Perhaps I could help you with the orcs.", "Quest1Chat_7")
	AddConversationOption(conversation, "That is a horrible story.  I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "When I awoke and shook off the snow, I found myself here, floating on this chunk of Brell-forsaken ice in the middle of nowhere.  There's barely enough of us and barely enough resources to make do.  And if that wasn't bad enough, the Ry'Gorr orcs we were battling survived the blast too.  They make it even more difficult to eke out a living on this rock.")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart010.mp3", "", "", 679658431, 464088819, Spawn)
	AddConversationOption(conversation, "I'm happy to help.", "OfferDisplacedDiscouraged")
	AddConversationOption(conversation, "I just hope this will cease your bellyaching.")
	StartConversation(conversation, NPC, Spawn, "That'd be a small blessing, " .. GetName(Spawn) .. ".  The orc raiders are not far from here.  Look for them off to the north, down on the jetties of ice below the choke and Pride Overlook.  They're coming over from Ry'Gorr Isle.")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How did you get here?", "Quest1Chat_3")
	AddConversationOption(conversation, "Perhaps some other time. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Yer guess is as good as mine.  It may be as we left it, or it may have been obliterated by the cataclysm.")
end

function Quest1Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So what happened next?", "Quest1Chat_5")
	AddConversationOption(conversation, "I'm sorry.  I'll leave you to your grieving.")
	StartConversation(conversation, NPC, Spawn, "Ye know yer history, " .. GetName(Spawn) ..".  This was more recent.  I won't pretend to understand the movements of the heavens, but for us the Age of Cataclysms is barely over...  if you can call this 'over'.")
end

function Quest1Chat_10(NPC, Spawn)
	SetStepComplete(Spawn, DisplacedDiscouraged, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Like I said before, I'm happy to lend a hand.", "Quest2Chat_1")
	AddConversationOption(conversation, "I would appreciate that.", "Quest2Chat_1")
	AddConversationOption(conversation, "If you can get over your depression long enough to do so.")
	StartConversation(conversation, NPC, Spawn, "Well, I suppose I should be thanking ye for yer help.")
end

function Quest2Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
   
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1009.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Tell me more.", "Quest2Chat_3")
	AddConversationOption(conversation, "Of course.  An honorable orc is an oxymoron.", "Quest2Chat_2")
	AddConversationOption(conversation, "This will lead to more work, no doubt.  I take my leave.")
	StartConversation(conversation, NPC, Spawn, "Those blasted Ry'Gorr have no shame, and no honor.")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart015.mp3", "", "", 2910498444, 2424387451, Spawn)
	AddConversationOption(conversation, "I thought that'd cheer you up.", "Quest2Chat_3")
	AddConversationOption(conversation, "Thank you.", "Quest2Chat_3")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Ah. Haha!  I like the way ye think, " .. GetName(Spawn) .. "!")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart016.mp3", "", "", 2020955980, 3047989742, Spawn)
	AddConversationOption(conversation, "And, like you said, the orcs have no honor.", "Quest2Chat_4")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "The blue monsters have taken to looting the signet rings from the coldain they've killed in combat.  They wear the rings around their necks, strung on leather, and displayed prominently as badges of 'honor.'")
end

function Quest2Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart017.mp3", "", "", 736834123, 822536870, Spawn)
	AddConversationOption(conversation, "I would be happy to deliver your message of justice.", "OfferReclaimingHonor")
	AddConversationOption(conversation, "Not at this time.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye, precisely.  Now we need to make sure they have no signet rings, either.  In fact, I'd like ye to deliver a strong message to any Ry'Gorr that considers wearing my brethren's ring as a trophy.  I want the orcs to understand that it puts a target on their head.  Ye up for recovering the rings?")
end

function Quest2Chat_5(NPC, Spawn)
	SetStepComplete(Spawn, ReclaimingHonor, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Is something else bothering you?", "Quest3Chat_1")
	AddConversationOption(conversation, "Did you have more work for me?", "Quest3Chat_1")
	AddConversationOption(conversation, "I had hoped that would cheer you up.", "Quest3Chat_1")
	StartConversation(conversation, NPC, Spawn, "Yes, yes.  Ye have been... most helpful.")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1009.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What's most unnatural?", "Quest3Chat_2")
	AddConversationOption(conversation, "You mean the skeletal orcs?", "Quest3Chat_7")
	AddConversationOption(conversation, "You seem troubled.  I will take my leave.")
	StartConversation(conversation, NPC, Spawn, "'Tis most unnatural.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart023.mp3", "", "", 1340808412, 2731736557, Spawn)
	AddConversationOption(conversation, "The spirits of your brethren bother you?", "Quest3Chat_3")
	AddConversationOption(conversation, "This is too disturbing to speak of.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Have a look yonder, " .. GetName(Spawn) .. ", to the battlefield south of here.  Ye'll see not only the threat of the Ry'Gorr orcs, arisen from the dead to harry us again, but the spirits of fallen coldain that march against them.")
end

function Quest3Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Is there anything I can do to help?", "Quest3Chat_4")
	AddConversationOption(conversation, "To be denied that afterlife is an atrocity.", "Quest3Chat_6")
	AddConversationOption(conversation, "But their sacrifice is saving the lives of your people.", "Quest3Chat_7")
	AddConversationOption(conversation, "I'm not certain you appreciate their efforts.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Don't get me wrong, " .. GetName(Spawn) .. ".  I appreciate their assistance in holding back the endless tide of the undead, it's just that... when the day comes and I pass on, I hope to be seated at Brell's table.  I'd like to partake in the feasts of roasted walrus, steamed mushrooms, and gingered lichen, all washed down with a tankard of Brell's finest.")
end

function Quest3Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll do it.", "OfferTisUnnatural")
	AddConversationOption(conversation, "I don't have the stomach for this.")
	StartConversation(conversation, NPC, Spawn, "We must do something to bring an end to this stalemate.  Give our fallen coldain a hand on the battlefield.  Engage the skeletal horde, and slay them where they stand.")
end

function Quest3Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I see.  Tell me more.", "Quest3Chat_2")
	AddConversationOption(conversation, "This is bothersome.  I must go.")
	StartConversation(conversation, NPC, Spawn, "Aye, that, and the spirits of the fallen coldain that have arisen to do battle against them.")
end

function Quest3Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Is there anything I can do to help?", "Quest3Chat_4")
	AddConversationOption(conversation, "I'm not barbaric, but I'm also not shallow and selfish.  I wish I could say the same for you.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Precisely.  And I'm proud of an outsider like yerself fer being able to see that.  Yer not half as barbaric as I expected.")
end

function Quest3Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Is there anything I can do to help?", "Quest3Chat_4")
	AddConversationOption(conversation, "I will leave you to your reverie.")
	StartConversation(conversation, NPC, Spawn, "Aye, 'tis true.  But they've earned themselves a place amongst the greatest heroes of the coldain.  They should be sharing a leg of mutton with Colin Dain, 'imself, not locking horns with undead for all eternity.")
end

function Quest3Chat_8(NPC, Spawn)
	SetStepComplete(Spawn, TisUnnatural, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart030.mp3", "", "", 3401980101, 2087482309, Spawn)
	AddConversationOption(conversation, "My pleasure.", "Quest4Chat_1")
	AddConversationOption(conversation, "Glad I could help.", "Quest4Chat_1")
	AddConversationOption(conversation, "Did you need something else?", "Quest4Chat_1")
	StartConversation(conversation, NPC, Spawn, "That's a relief for me, and for the coldain spirits, " .. GetName(Spawn) .. ".  Thank ye for laying those skeletons to rest.")
end

function Quest4Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1009.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "This is a battle of attrition.", "Quest4Chat_2")
	AddConversationOption(conversation, "There must be a way to deal with them permanently.", "Quest4Chat_4")
	AddConversationOption(conversation, "This is a fool's errand.  We'll never outlast them.")
	StartConversation(conversation, NPC, Spawn, "I appreciate all your efforts, " .. GetName(Spawn) .. ", but we're no closer now to eradicating the skeletal horde than we were before. Can ye comprehend the kind of mess we're in now?")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you mean?", "Quest4Chat_3")
	AddConversationOption(conversation, "Oh, they're raising the skeletons again.", "Quest4Chat_10")
	AddConversationOption(conversation, "I don't like being spoken down to.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye, but without the attrition part.")
end

function Quest4Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "There must be a way to deal with them permanently.", "Quest4Chat_4")
	AddConversationOption(conversation, "I'm getting out of here!")
	StartConversation(conversation, NPC, Spawn, "It doesn't matter how many times ye cut the bone rattlers down.  They come right back.")
end

function Quest4Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You won't find any solutions in that bottle.", "Quest4Chat_5")
	AddConversationOption(conversation, "I'll take two of whatever you're having.", "Quest4Chat_8")
	AddConversationOption(conversation, "It's not like you can pour ale on the skeletons to destroy them.", "Quest4Chat_9")
	AddConversationOption(conversation, "This is no time to drink! I'm going to do something useful.")
	StartConversation(conversation, NPC, Spawn, "Ye know, back home, as rough as things were we never had to deal with undead orcs.  We're ill-prepared for this kinda' threat.  So we're gonna have to improvise.  I have an idea.  [Uncorks a flask of alcohol]")
end

function Quest4Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are you planning on doing with that?", "Quest4Chat_6")
	AddConversationOption(conversation, "This is no time to drink! I'm going to do something useful.")
	StartConversation(conversation, NPC, Spawn, "Says ye!  And this isn't just any ol' bottle of spirits.")
end

function Quest4Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "And you drink that?", "Quest4Chat_7")
	AddConversationOption(conversation, "What if it doesn't work?", "Quest4Chat_9")
	AddConversationOption(conversation, "I'll give your plan a try.", "OfferPouringSkellies")
	AddConversationOption(conversation, "This is lunacy. Farewell.")
	StartConversation(conversation, NPC, Spawn, "This is Fronden's Finest: it starts as cool fresh Thurgadin springwater, is distilled with the finest mashed grain, ages for 53 years in a white oak cask, before receiving blessing from priests o' Brell.  It carries more kick than an orn'ry mountain goat.  And on top o' all that, I'm willing te bet it'll make short work of those manky dreadfuls.")
end

function Quest4Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll give your plan a try.", "OfferPouringSkellies")
	AddConversationOption(conversation, "This is lunacy. Farewell.")
	StartConversation(conversation, NPC, Spawn, "It's more of a sipping drink.")
end

function Quest4Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Just how strong is that drink?", "Quest4Chat_6")
	AddConversationOption(conversation, "If you're not sharing, I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Haha!  A half swig of this'd knock you flat, " .. GetName(Spawn) .. ".")
end

function Quest4Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll give your plan a try.", "OfferPouringSkellies")
	AddConversationOption(conversation, "This is lunacy. Farewell.")
	StartConversation(conversation, NPC, Spawn, "We'll be in the same miserable spot we're in now.")
end

function Quest4Chat_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "There must be a way to deal with them permanently.", "Quest4Chat_4")
	AddConversationOption(conversation, "I'm getting out of here!")
	StartConversation(conversation, NPC, Spawn, "And again... and again, which means all our efforts have been for naught thus far.  It doesn't matter how many times ye cut the bone rattlers down.  They come right back.")
end

function Quest4Chat_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Just what is in that flask?", "Quest4Chat_6")
	AddConversationOption(conversation, "I don't even want to know.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Don't be so sure about that, and this ain't ale!")
end

function Quest4Chat_12(NPC, Spawn)
    SetStepComplete(Spawn, PouringSkellies, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It's a good thing you had that flask handy.", "Quest5Chat_1")
	AddConversationOption(conversation, "Did you have more work for me?", "Quest5Chat_1")
	AddConversationOption(conversation, "You seem much less depressed than when we first met.", "Quest5Chat_1")
	StartConversation(conversation, NPC, Spawn, "Aha!  Now that's dwarven ingenuity at work!  Making do with what ye have is what being a coldain is about.")
end

function Quest5Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Now that the fight isn't hopeless, perhaps we can look into ways to improve our odds.", "Quest5Chat_2")
	AddConversationOption(conversation, "I'm interested in helping any way I can.", "Quest5Chat_3")
	AddConversationOption(conversation, "Seems like I've done enough already.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, GetName(Spawn) .. "!  Thanks to yer efforts, we're finally turning the tide against the orcs.  But we can't afford to rest just yet.  There's still a pitched battle going on out there.")
end

function Quest5Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you need?", "Quest5Chat_3")
	AddConversationOption(conversation, "Seems like I've done enough already.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "My thoughts exactly.  I'm glad yer on the same page.")
end

function Quest5Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "There are probably bits of it strewn across the battlefield.", "Quest5Chat_4")
	AddConversationOption(conversation, "No, but I'm sure you're about to tell me.", "Quest5Chat_5")
	AddConversationOption(conversation, "I know where I'll be: gone.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Our weapons and shields 'ave seen their fair share of action, and this has taken a toll on their effectiveness.  They can be repaired, but of course we need the metal to do so.  And ye know where that metal is?")
end

function Quest5Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "So you need someone to gather these velium shards?", "Quest5Chat_5")
	AddConversationOption(conversation, "I'm no fetcher.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Come to the head of the class!  Yer absolutely right.")
end

function Quest5Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Of course.  You need only to ask.", "OfferNoWork")
	AddConversationOption(conversation, "Yes, but I expect to be rewarded.", "OfferNoWork")
	AddConversationOption(conversation, "No, you can fend for yourselves now.")
	StartConversation(conversation, NPC, Spawn, "Ye've been such a help in the past, and ye've proven yerself a capable sort.  Would you be able to assist us in this endeavor?  Pick up as many of the velium shards as you can carry and bring them back here.")
end

function Quest5Chat_6(NPC, Spawn)
    SetStepComplete(Spawn, NoWork, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It was a dangerous job.", "Quest6Chat_1")
	AddConversationOption(conversation, "Did you have more work for me?", "Quest6Chat_1")
	StartConversation(conversation, NPC, Spawn, "This velium ye scavenged will be an immense help to the coldain forces.  Our axes will be sharper and our shields sturdier.")
end

function Quest5Chat_7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Okay.", "Quest5Chat_6")
    StartConversation(conversation, NPC, Spawn, "No, but ye look fine to me.  If something's wrong, yer hiding it well.")
end

function Quest6Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1009.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm listening.", "Quest6Chat_2")
	AddConversationOption(conversation, "You mean crazier than scavenging pieces of scrap metal in the middle of a war zone?", "Quest6Chat_6")
	AddConversationOption(conversation, "I'm not up for more crazy right now.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I have another idea.  It's a plan that could help us in our plight against the Ry'Gorr.  Now that we have a little breathing room, thanks to ye, we can finally explore this possibility.  This may sound crazy, but just hear me out.")
end

function Quest6Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What's the reason?", "Quest6Chat_3")
	AddConversationOption(conversation, "I can't even imagine why this would be necessary.", "Quest6Chat_8")
	AddConversationOption(conversation, "I won't help you if I don't know the reason why.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Actually, on second thought, I'll explain it after yer through.  'Tis easier this way.  The crux of the matter is that I need ye to take down a tackle of basilisks.")
end

function Quest6Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Well, far be it from me to argue with the 'plan'.  What needs to be done?", "Quest6Chat_4")
	AddConversationOption(conversation, "Alright, I'm in.", "Quest6Chat_4")
	AddConversationOption(conversation, "I won't help you if I don't know the reason why.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "They're dangerous beasts, fer one.  And also, I've got a plan.")
end

function Quest6Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart060.mp3", "", "", 1232599488, 1599939111, Spawn)
	AddConversationOption(conversation, "This is for research, isn't it?", "Quest6Chat_5")
	AddConversationOption(conversation, "I will be back shortly.", "OfferTacklingBasilisks")
	AddConversationOption(conversation, "I've had second thoughts.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The frostbiters are off to the east from here, past the battlefield.  Ye'll need to tangle with a bunch of them.  Afterwards, come back and let me know how it went.")
end

function Quest6Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "belka_thunderheart/halas/great_shelf/belka_thunderheart/belka_thunderheart081.mp3", "", "", 1553643763, 2988219889, Spawn)
	AddConversationOption(conversation, "Yes.  I will be back shortly.", "OfferTacklingBasilisks")
	StartConversation(conversation, NPC, Spawn, "Aye.  Yer correct in that.  Are ye still interested?")
end

function Quest6Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You mean crazier than storming a battlefield and pouring Dwarven whiskey on orc bones?", "Quest6Chat_7")
	AddConversationOption(conversation, "I should leave now while I still have my skin.")
	StartConversation(conversation, NPC, Spawn, "Well...")
end

function Quest6Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm listening.", "Quest6Chat_2")
	AddConversationOption(conversation, "I should leave now while I still have my skin.")
	StartConversation(conversation, NPC, Spawn, "Ye may have a point there, but jus' listen!")
end

function Quest6Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Trust is in short supply on this floating chunk of ice.  I'll do it.", "Quest6Chat_4")
	AddConversationOption(conversation, "I do trust you, Belka.", "Quest6Chat_4")
	AddConversationOption(conversation, "I won't help you if I don't know the reason why.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Ye'll just have to trust me on this one, " .. GetName(Spawn) .. ".")
end

function Quest6Chat_9(NPC, Spawn)
    SetStepComplete(Spawn, TacklingBasilisks, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Are you going to explain why I was tasked with hunting basilisks?", "Quest7Chat_1")
	AddConversationOption(conversation, "Was this a test?", "Quest7Chat_1")
	AddConversationOption(conversation, "I'm still waiting to hear the reason.", "Quest7Chat_1")
	StartConversation(conversation, NPC, Spawn, "Hmm... This was a most successful venture.  Ye've done good.")
end

function Quest7Chat_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1009.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you mean by an understanding?", "Quest7Chat_2")
	AddConversationOption(conversation, "Tell me what we've learned.", "Quest7Chat_2")
	AddConversationOption(conversation, "The only understanding I have is that you've wasted my time.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "So, now that you're back, I think I can let you in on the plan.  Based off your experiences dealing with the nearby basilisks, we have a better understanding of the creatures.  ")
end

function Quest7Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What question would that be?", "Quest7Chat_3")
	AddConversationOption(conversation, "Can they be tamed?", "Quest7Chat_6")
	AddConversationOption(conversation, "You had me fight them to see if they were mean?  I could have told you that just by looking at them!")
	StartConversation(conversation, NPC, Spawn, "We know that they're ferocious fighters.  We know they're feral.  Finally, we know that they're fending off anyone that approaches their nests.  These nests are full of unhatched young.  Ye see what I'm getting at?  Only one question remains.")
end

function Quest7Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Oh, I see!", "Quest7Chat_4")
	AddConversationOption(conversation, "I'm not sure that's feasible. Count me out.")
	StartConversation(conversation, NPC, Spawn, "If'n we can raise the little nippers into loyal allies that'll fight the orcs, alongside us!")
end

function Quest7Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "And therefore, basilisks could be instrumental in holding back the Ry'Gorr.", "Quest7Chat_5")
	AddConversationOption(conversation, "You probably don't know the first thing about animal training.  I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "My cousin, Frostpaw, was an animal tamer.  He always had a pack of trained direwolves at his side.  Those hounds were instrumental in holding back the Kromrif.  ")
end

function Quest7Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Someone needs to harvest those eggs.", "OfferDomesticationSurvivalism")
	AddConversationOption(conversation, "I'm through with menial labor.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye.  If he could tame wolves, I'm betting we could tame the basilisks.  Ye can probably guess what I'm going to ask next.")
end

function Quest7Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.", "Quest7Chat_4")
	AddConversationOption(conversation, "Your flattery is self-serving, but I accept it just the same.", "Quest7Chat_4")
	AddConversationOption(conversation, "I know when I'm being buttered up.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Ye never cease to amaze me, " .. GetName(Spawn) .. ".")
end

function Quest7Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Perfect!", "Quest7Chat_8")
	AddConversationOption(conversation, "Very funny.")
	StartConversation(conversation, NPC, Spawn, "Alright.  How about " .. GetName(Spawn) .. ", instead?")
end

function Quest7Chat_8(NPC, Spawn)
    SetStepComplete(Spawn, DomesticationSurvivalism, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What do you mean?", "Quest8Chat_1")
	AddConversationOption(conversation, "Did you have more work for me?", "Quest8Chat_1")
	AddConversationOption(conversation, "And here I was looking forward to incubating your basilisk eggs.", "Quest8Chat_1")
	StartConversation(conversation, NPC, Spawn, "And I'm afraid this is where we'll be parting ways.")
end

function Quest8Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Your tune has changed.", "Quest8Chat_2")
	AddConversationOption(conversation, "I'm happy to do my part.", "Quest8Chat_3")
	AddConversationOption(conversation, "I just can't wait to get out of here.", "Quest8Chat_5")
	AddConversationOption(conversation, "It's never enough with you.  I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Ye've done so much for the coldain, " .. GetName(Spawn) .. ". I can finally, albeit reluctantly, bear to part with ye.  There's others that need yer assistance now more than I do.")
end

function Quest8Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "My pleasure.", "Quest8Chat_3")
	AddConversationOption(conversation, "Just get me out of here.", "Quest8Chat_3")
	AddConversationOption(conversation, "The sooner I get off this rock, the better.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Aye, that it has.  There's hope for us on this little rock, after all.  And it's due, in no small part, to yer assistance.")
end

function Quest8Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Will the pilgrims be safe?", "Quest8Chat_4")
	AddConversationOption(conversation, "I will head there straight away.", "OfferReportSpine")
	AddConversationOption(conversation, "I don't need your assistance to walk across a field.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The Ry'Gorr have taken their offensive elsewhere.  We've received word that they've begun a surge upon the southern coast, and they've laid siege to the Cragged Spine. It's likely that they could use yer help out there, " .. GetName(Spawn) .. ".")
end

function Quest8Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "On my way.", "OfferReportSpine")
	AddConversationOption(conversation, "When I'm good and ready.")
	StartConversation(conversation, NPC, Spawn, "So long as they stay here.  We'll keep an eye on 'em until this offensive is over.  In the meantime, you should head to the Cragged Spine, and quickly!")
end

function Quest8Chat_5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

    AddConversationOption(conversation, "True, and most unfortunate. I'm sorry.", "Quest8Chat_3")
    AddConversationOption(conversation, "Just get me out of here.", "Quest8Chat_3")
    AddConversationOption(conversation, "the sooner  I get off this rock, the better. Goodbye.")
    StartConversation(conversation, NPC, Spawn, "Well, I'm sure you have a life to return to. This is likely all we coldain have left.")
end 

function OfferDisplacedDiscouraged(NPC, Spawn)
	OfferQuest(NPC, Spawn, DisplacedDiscouraged)
end

function OfferReclaimingHonor(NPC, Spawn)
	OfferQuest(NPC, Spawn, ReclaimingHonor)
end

function OfferTisUnnatural(NPC, Spawn)
	OfferQuest(NPC, Spawn, TisUnnatural)
end

function OfferPouringSkellies(NPC, Spawn)
	OfferQuest(NPC, Spawn, PouringSkellies)
end

function OfferNoWork(NPC, Spawn)
    OfferQuest(NPC, Spawn, NoWork)
end

function OfferTacklingBasilisks(NPC, Spawn)
    OfferQuest(NPC, Spawn, TacklingBasilisks)
end

function OfferDomesticationSurvivalism(NPC, Spawn)
    OfferQuest(NPC, Spawn, DomesticationSurvivalism)
end

function OfferReportSpine(NPC, Spawn)
    OfferQuest(NPC, Spawn, ReportSpine)
end