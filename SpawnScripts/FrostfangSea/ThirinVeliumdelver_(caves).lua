--[[
	Script Name	: SpawnScripts/FrostfangSea/ThirinVeliumdelver_(caves).lua
	Script Purpose	: Thirin Veliumdelver 
	Script Author	: theFoof
	Script Date	: 2013.06.11
	Script Notes	:
--]]

local BelowWaves = 59

local RyGorrOperations = 60

local GoodDistraction = 61

local SleetfootParty = 62

local SeekingEducation = 63

local NapEvigis = 64

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	ProvidesQuest(NPC, RyGorrOperations)
	ProvidesQuest(NPC, GoodDistraction)
	ProvidesQuest(NPC, SleetfootParty)
	ProvidesQuest(NPC, SeekingEducation)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if not HasCompletedQuest(Spawn, RyGorrOperations) and not HasQuest(Spawn, RyGorrOperations) then
        PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave001.mp3", "", "", 2709713344, 2359332874, Spawn)
	    AddConversationOption(conversation, "Agreed.  We must act quickly.", "Quest1Chat_1")
	    StartConversation(conversation, NPC, Spawn, "This is most impressive.  I never knew the Ry'Gorr could be so devious.")
	elseif GetQuestStep(Spawn, RyGorrOperations) == 1 or GetQuestStep(Spawn, RyGorrOperations) == 2 then
		PlayFlavor(NPC, "", "The explosives should be around this area, " .. GetName(Spawn) .. ".", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, RyGorrOperations) == 3 then
		SetStepComplete(Spawn, RyGorrOperations, 3)
		PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave006.mp3", "", "", 2990250717, 1905406099, Spawn)
		AddConversationOption(conversation, "You were right, they were keeping something imprisoned beyond the cave-in, though I fear what I've found will be of no use to us.", "Quest2Chat_1")
		StartConversation(conversation, NPC, Spawn, "That was a magnificent display of destruction on your part, adventurer.  Did ye find anything?  What are those scoundrels hiding?")
	elseif HasCompletedQuest(Spawn, RyGorrOperations) and not HasCompletedQuest(Spawn, GoodDistraction) and not HasQuest(Spawn, GoodDistraction) then
		Quest2Chat_1(NPC, Spawn)
	elseif HasQuest(Spawn, GoodDistraction) and GetQuestStep(Spawn, GoodDistraction) < 6 then
		PlayFlavor(NPC, "", "Protect my man, " .. GetName(Spawn) .. ".", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, GoodDistraction) == 6 then
		SetStepComplete(Spawn, GoodDistraction, 6)
		PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave011.mp3", "", "", 1460125884, 1686109939, Spawn)
		AddConversationOption(conversation, "I have.  He told me he was going to search further into the Velinoid Catacombs and wouldn't need any further assistance.", "Quest3Chat_1")
		StartConversation(conversation, NPC, Spawn, "Hmm, you've returned without Ordin?")
	elseif HasCompletedQuest(Spawn, GoodDistraction) and not HasCompletedQuest(Spawn, SleetfootParty) and not HasQuest(Spawn, SleetfootParty) then
		Quest3Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, SleetfootParty) == 1 then
		PlayFlavor(NPC, "", "By Brell, I pray my man is ok.", "", 0, 0, Spawn)
	elseif GetQuestStep(Spawn, SleetfootParty) == 2 then
		RemoveSpawnAccess(GetSpawnByLocationID(GetZone(Spawn), 34036), Spawn)
		SetStepComplete(Spawn, SleetfootParty, 2)
		PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave015.mp3", "", "", 1359546210, 1807793457, Spawn)
		AddConversationOption(conversation, "I... I found him dead.  He seemed to have discovered a large ice and velium elemental.  A monstrous creature.", "Quest4Chat_1")
		StartConversation(conversation, NPC, Spawn, "You return alone?  Is... is he gone?")
	elseif HasCompletedQuest(Spawn, SleetfootParty) and not HasCompletedQuest(Spawn, SeekingEducation) and not HasQuest(Spawn, SeekingEducation) then
		Quest4Chat_1(NPC, Spawn)
	elseif GetQuestStep(Spawn, SleetfootParty) == 1 then
		PlayFlavor(NPC, "", "Make haste for the White Lodge. Seek out Toril Blackbow.", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "Hello my friend.  It is good to see you.", "hello", 0, 0, Spawn)
	end
end

function SpawnAccess(NPC, Spawn)
	if HasCompletedQuest(Spawn, BelowWaves) and not HasCompletedQuest(Spawn, NapEvigis) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave002.mp3", "", "", 3505397088, 1978736216, Spawn)
	AddConversationOption(conversation, "I would agree.  This wall is an unnecessary risk, even for them.", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Aye.  I saw this wall ye spoke of.  Whoever caused this cave-in did not do so thoughtfully.  Meaning it was done with haste.  It seems as though it was meant to keep something trapped.  What could scare the Ry'Gorr so much they would risk such a dangerous explosion?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave003.mp3", "", "", 2117741125, 3692044901, Spawn)
	AddConversationOption(conversation, "You intend to re-open the tunnel entrance then?", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Whatever they are hiding or keeping imprisoned may be used to give us an advantage.  Whatever they fear would surely give us an upper hand in stopping their impending invasion.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave004.mp3", "", "", 79469292, 3225324999, Spawn)
	AddConversationOption(conversation, "Sounds like a blast.  I'm in.", "OfferRyGorrOperations")
	AddConversationOption(conversation, "I'm not really one for mining, so I'll be going.")
	StartConversation(conversation, NPC, Spawn, "I do, though we have no mining equipment on hand.  However, these orcs could not have made so much progress in so a little a time without some help.  I imagine there are some explosive barrels about, if ye just follow yer nose.  Look around where they are currently mining, they should leave them lying around.  Once you've got the explosives use it on the cave-in.  Find out what the Ry'Gorr were trying to imprison.")
end

function Quest2Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave007.mp3", "", "", 563381258, 467794942, Spawn)
	AddConversationOption(conversation, "I found a race of beings that look as though they were birthed from the velium itself.  There were orcish bodies among them as well.  I was able to escape, but I don't believe they will side with us.  We are all in danger.", "Quest2Chat_2")
	StartConversation(conversation, NPC, Spawn, "What are ye talking about?  What was there?")
end

function Quest2Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave008.mp3", "", "", 1682427027, 3451821464, Spawn)
	AddConversationOption(conversation, "I cannot tell, but the blast has severely damaged the surrounding walls.  I do not believe that a third blast will do any good in one area underground.", "Quest2Chat_3")
	StartConversation(conversation, NPC, Spawn, "This means there were caverns here before the orcs?  They themselves must have discovered them.  I know not what these creatures are, but if what ye say is true they may be more of a threat than those blasted Ry'Gorr.  Is there any chance we can quickly re-build the wall, as the orcs did?  Can we protect ourselves from these, what should they be called?  Velinoids?")
end

function Quest2Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave009.mp3", "", "", 494358718, 200929086, Spawn)
	AddConversationOption(conversation, "You can count on me, Thirin.", "OfferGoodDistraction")
	AddConversationOption(conversation, "That sounds way too dangerous.")
	StartConversation(conversation, NPC, Spawn, "Blast!  I fear we've made a grave mistake, adventurer, one we must rectify immediately.   It is time we informed my good friend, Torli Blackbow.  However, I intend to return with as much intelligence as possible.  I am sending in one of my scouts to investigate the area.  I'd like for you to act as a distraction of sorts so he can sneak in undetected.  Speak with him when you are ready.")
end

function Quest3Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave012.mp3", "", "", 196969429, 3399805289, Spawn)
	AddConversationOption(conversation, "Perhaps he just needs more time?  It wasn't long ago that I left him.", "Quest3Chat_2")
	StartConversation(conversation, NPC, Spawn, "Hmm, this is most troubling.  I am worried, adventurer, he would have returned by now.  I fear something may have happened to him.")
end

function Quest3Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave013.mp3", "", "", 516198965, 3758808523, Spawn)
	AddConversationOption(conversation, "I shall search for him.  It was my responsibility to protect him.", "OfferSleetfootParty")
	AddConversationOption(conversation, "Good luck in your search.")
	StartConversation(conversation, NPC, Spawn, "He was my best scout, and a good friend.  He would have returned by now.  No, I fear he may be stuck in the dark corners of this cavern, unable to return for some reason.  I'll need to look for him.  The coldain do not leave their brothers behind.  I have far too many ales to share with him before his time is up.")
end

function Quest4Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave016.mp3", "", "", 3750387458, 3923287586, Spawn)
	AddConversationOption(conversation, "I know very little, other than it appears to be very old and quite angry.  I don't believe it enjoys visitors.", "Quest4Chat_2")
	StartConversation(conversation, NPC, Spawn, "Monstrous?  I see.  Tell me of this creature you speak of.")
end

function Quest4Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "thirin_veliumdelver/halas/cragged_spine/thirin_veliumdelver_cave017.mp3", "", "", 4283075830, 3738516832, Spawn)
	AddConversationOption(conversation, "It's " .. GetName(Spawn) .. ".", "OfferSeekingEducation")
	StartConversation(conversation, NPC, Spawn, "This is most troubling, my friend.  We are not prepared for this.  I was rash and quick to judge the situation.  I regret venturing into these blasted caverns.  What have we awakened?  Ordin will not have died in vain, I swear it.  We must speak with Torli, she will know what to do.  Adventurer, what is yer name?  You've done so much and I never had the time to ask.")
end

function OfferRyGorrOperations(NPC, Spawn)
	OfferQuest(NPC, Spawn, RyGorrOperations)
end

function OfferGoodDistraction(NPC, Spawn)
	OfferQuest(NPC, Spawn, GoodDistraction)
end

function OfferSleetfootParty(NPC, Spawn)
	OfferQuest(NPC, Spawn, SleetfootParty)
end

function OfferSeekingEducation(NPC, Spawn)
	OfferQuest(NPC, Spawn, SeekingEducation)
end