--[[
	Script Name		:	IgnarSteadirt.lua
	Script Purpose	:	Ignar Steadirt
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

local LordGrimrotsScythe = 5522

    local greetingsTable = { "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3"};

function spawn(NPC)
ProvidesQuest(NPC, LordGrimrotsScythe)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, LordGrimrotsScythe) and not HasCompletedQuest(Spawn, LordGrimrotsScythe) then
    Option0(NPC, Spawn)
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 1  or  GetQuestStep(Spawn, LordGrimrotsScythe) == 2 or  GetQuestStep(Spawn, LordGrimrotsScythe) == 3 or GetQuestStep(Spawn, LordGrimrotsScythe) == 4  then
    Reports_Progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 6 then
    Reports_Progress2(NPC, Spawn)
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 7 and GetQuestStep(Spawn, LordGrimrotsScythe) == 8  then
    Reports_Progress3(NPC, Spawn)
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 9 then
    PlayFlavor(NPC, "voiceover/english/ignar_steadirt/antonica/quest/045_dwarf_ignar_steadirt_g1_onstage7_68f3d9e4.mp3", "Well? Have you spoken with the dwarven centurion yet?  His name's Grimbold Steadirt -- you can't miss him, he's near the gates to Firemyst.", "", 1513486151, 2077778983, Spawn)
    elseif HasCompletedQuest(Spawn, LordGrimrotsScythe) then
    Quest_Completed(NPC, Spawn)
    end
end

function Option0(NPC, Spawn)
    local conversation = CreateConversation()    
	AddConversationOption(conversation, "Is that why you are here?", "Option1")
	AddConversationOption(conversation, "Well, not me.  At least, not right now.", "refuse")
	StartConversation(conversation, NPC, Spawn, "The great Qeynos Claymore -- folks come from all over to pray here.")    
end


function Reports_Progress(NPC, Spawn)
    PlayFlavor(NPC, greetingsTable[math.random(#greetingsTable)], "", "", 0, 0, Spawn)
    local conversation = CreateConversation()
    if GetQuestStep(Spawn, LordGrimrotsScythe) == 4 or GetQuestStep(Spawn, LordGrimrotsScythe) == 5  then
	AddConversationOption(conversation, "Yes, I've spoken with your three knights.", "Option5")
	end
	AddConversationOption(conversation, "Not yet,  I'll be back when I've spoken to all three knights.")
	StartConversation(conversation, NPC, Spawn, "Got all three reports for me, eh?")
end

function Reports_Progress2(NPC, Spawn)
       local conversation = CreateConversation()
	AddConversationOption(conversation, "I fought the Sabertooth rune casters, but found only part of Lord Grimrot's war scythe.", "Option10")
	AddConversationOption(conversation, "Not yet.  I will return when I've done as you asked.")
	StartConversation(conversation, NPC, Spawn, "What news do you have?  And speak up, will you?  I can barely hear you with all the noise around this monument!")
end

function Reports_Progress3(NPC, Spawn)
       local conversation = CreateConversation()
       if GetQuestStep(Spawn, LordGrimrotsScythe) == 8 then 
	AddConversationOption(conversation, "I found the remaining piece of Lord Grimrot's scythe.", "Option13")
	end
	AddConversationOption(conversation, "Not yet.  I will continue the fight!")
	StartConversation(conversation, NPC, Spawn, "Yes?  Oh, it's you again! Have you gotten the final piece of the scythe?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Who are your enemies?", "Option2")
	StartConversation(conversation, NPC, Spawn, "I came here seeking strength to defeat my enemies.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Do you need help?", "Option3")
		AddConversationOption(conversation, "Wish I had time to help.  Perhaps later.", "refuse2")
	StartConversation(conversation, NPC, Spawn, "I pray for the strength to conquer the undead, but they are not just my enemies; the undead are the enemies of us all.  Several days ago, patrols were sent to see how our battle against the undead was faring.  And I -- I have the most disagreeable task of all.  I have to stand here and wait for the reports to return.  Me! Standing around waiting when there's undead to cleave! Pah!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I could be persuaded.", "Option4")
	AddConversationOption(conversation, "No, I'd rather not.")
	StartConversation(conversation, NPC, Spawn, "That's why I'm praying. Perhaps my prayers have been answered.  Are you here to help me?")
end


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Start what?", "offer")
	AddConversationOption(conversation, "No, not right now.", "refuse3")
	StartConversation(conversation, NPC, Spawn, "Excellent. Are you ready to start?")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, LordGrimrotsScythe) == 4 then
	AddConversationOption(conversation, "The gnolls have Lord Grimrot's war scythe and are using it to resurrect him for a new undead battle against Qeynos.", "Option7")
	AddConversationOption(conversation, "Morte's a human! You didn't tell me that!", "Option6")
	end
	AddConversationOption(conversation, "I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Anything interesting?  The last reports were hardly worth waiting for, but a good soldier never lets his guard down -- ever!")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I have the reports, before I forget to tell you.", "Option5")
	AddConversationOption(conversation, "I suppose so.")
	StartConversation(conversation, NPC, Spawn, "Ah, yes, Morte.  He's a good lad, if a bit addled.  He really wants to become a blacksmith, but I hate to tell him ... he's already too old for anyone to take him on as an apprentice.  Still, it's good for us to have our dreams, isn't it?  He dreams of fire and tongs, while I dream of returning to battle.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What can I do to help you?", "Option8")
	AddConversationOption(conversation, "I'll have to continue this later.")
	StartConversation(conversation, NPC, Spawn, "What!?  Lord Grimrot? It can't be ... Pestilence -- that's his war scythe, found after all these years?  I never credited the gnolls with having any brains, and this proves it! If they go through with this, it could mean another War of Plagues!")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll destroy the scythe.", "Option9")
	StartConversation(conversation, NPC, Spawn, "We must get that scythe at any cost.  A large-scale invasion won't do us any good; they might just try to hurry up whatever it is they're doing.  No, we've got to get a small force to find Pestilence and destroy it. ")
end


function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	SetStepComplete(Spawn, LordGrimrotsScythe, 4)
	PlayAnimation(NPC, 121)
	AddConversationOption(conversation, "Don't worry -- I will be back.")
	StartConversation(conversation, NPC, Spawn, "You might want to bring along some trusted companions, for I'm sure the gnolls will have this thing hidden -- from each other, as well as from outsiders like us!  If they're trying to do some fancy spellwork, their rune casters will be involved.  Watch for their guards too.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "So I need to find the other part with the Darkpaws?", "Option11")
	StartConversation(conversation, NPC, Spawn, "I wonder whether each group has a piece of the scythe ... that might explain their sudden cooperation:An uneasy truce until they unleash Lord Grimrot.  I'll bet they need each other to get this to work.  And you know this actually ties in with the last reports, of those Darkpaws and Sabertooth gnolls suddenly getting friendly toward each other.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "And then...?", "Option12")
	StartConversation(conversation, NPC, Spawn, "It looks that way, my friend.  Just as the Sabertooth gnolls protect their rune casters, so do the Darkpaws.  A small group is the best way to achieve success.  And then...")
end

function Option12(NPC, Spawn)
    SetStepComplete(Spawn, LordGrimrotsScythe, 6)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "...haunt us.  Yes, I know.  I'll take care of the scythe.")
	StartConversation(conversation, NPC, Spawn, "And then, well, we'll have stopped them, won't we?  Anyway, it's best to take things one step at a time.  We'll deal with what comes after we destroy the entire scythe -- if there is anything, mind you. The undead have a way of coming back to ... well, you know...")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
		AddConversationOption(conversation, "Well...no, I'm not sure.", "Option14")
	StartConversation(conversation, NPC, Spawn, "That's one less thing for me to worry about. Thank you!  The undead continue to stir, though, which disturbs me.  You're sure you destroyed all pieces of Pestilence?")
end

function Option14(NPC, Spawn)
    SetStepComplete(Spawn, LordGrimrotsScythe, 8)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll take a look.")
	StartConversation(conversation, NPC, Spawn, "Either way, there's no denying that the undead are restless over in Firemyst Gully -- that's where untold numbers of 'em were buried in the War of Plagues.  In fact, maybe you could go over and see if the dwarven centurion at the Firemyst gate needs anything.  I'm afraid my lot is to stay here.  Go find glory in battle, farewell.")
end



function Quest_Completed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayAnimation(NPC, 121)
	AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, NPC, Spawn, "I keep telling myself this is an important part of the battle -- to stay here and gather data.  Ah, well.  I appreciate your visits.")
end





function refuse1(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/ignar_steadirt/antonica/quest/045_dwarf_ignar_steadirt_g1_shame_b6fbc6ba.mp3", "That is a shame. Please leave me to my prayers.", "", 2730895874, 3053314534, Spawn)
end

function refuse2(NPC, Spawn)
PlayFlavor(NPC, "", "Hmm, I'll keep praying then. Good day.", "", 1689589577, 4560189, Spawn)
end

function refuse3(NPC, Spawn)
PlayFlavor(NPC, "", "Return when you are ready, but be quick. They grow stronger by the hour.", "", 1689589577, 4560189, Spawn)
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, LordGrimrotsScythe)
end