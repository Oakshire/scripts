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
    elseif GetQuestStep(Spawn, LordGrimrotsScythe) == 1 or  GetQuestStep(Spawn, LordGrimrotsScythe) == 2 or  GetQuestStep(Spawn, LordGrimrotsScythe) == 3 then
    Reports_Progress(NPC, Spawn)
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
    if GetQuestStep(Spawn, LordGrimrotsScythe) == 4 then
	AddConversationOption(conversation, "Yes, I've spoken with your three knights.", "Option5")
	end
	AddConversationOption(conversation, "Not yet,  I'll be back when I've spoken to all three knights.")
	StartConversation(conversation, NPC, Spawn, "Got all three reports for me, eh?")
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
	AddConversationOption(conversation, "The gnolls have Lord Grimrot's war scythe and are using it to resurrect him for a new undead battle against Qeynos.", "Option7")
		AddConversationOption(conversation, "Morte's a human! You didn't tell me that!", "Option6")
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
	
	PlayAnimation(NPC, 121)
	AddConversationOption(conversation, "Don't worry -- I will be back.")
	StartConversation(conversation, NPC, Spawn, "You might want to bring along some trusted companions, for I'm sure the gnolls will have this thing hidden -- from each other, as well as from outsiders like us!  If they're trying to do some fancy spellwork, their rune casters will be involved.  Watch for their guards too.")
end




	--[[	Say() from this NPC



			Orphaned PlayFlavors
				PlayFlavor(NPC, "voiceover/english/ignar_steadirt/antonica/quest/045_dwarf_ignar_steadirt_g1_onstage7_68f3d9e4.mp3", "Well? Have you spoken with the dwarven centurion yet?  His name's Grimbold Steadirt -- you can't miss him, he's near the gates to Firemyst.", "", 1513486151, 2077778983, Spawn)

	--]]


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