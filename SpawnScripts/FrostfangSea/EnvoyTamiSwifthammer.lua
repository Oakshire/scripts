--[[
	Script Name	: SpawnScripts/FrostfangSea/EnvoyTamiSwifthammer.lua
	Script Purpose	: Envoy Tami Swifthammer 
	Script Author	: EmemJr
	Script Date	: 2/16/2021
	Script Notes	: WIP
--]]
local QUEST_1 = 4678    --Introduction to the Ravens
local QUEST_2 = 4685    --Restocking the Cookie Jar
local QUEST_3 = 4680    --Let The Spinning Wheel Spin
local QUEST_4 = 4681    --Party Plates
local QUEST_5 = 4684    --Rattled by Rats
local QUEST_6 = 4679    --Fast Fabrication
local QUEST_7 = 4686    --Storage Situation
local QUEST_8 = 4683    --Premonitions of Disaster


function spawn(NPC)
    ProvidesQuest (NPC,QUEST_1)
    ProvidesQuest (NPC,QUEST_2)
    ProvidesQuest (NPC,QUEST_3)
    ProvidesQuest (NPC,QUEST_4)
    ProvidesQuest (NPC,QUEST_5)
    ProvidesQuest (NPC,QUEST_6)
    ProvidesQuest (NPC,QUEST_7)
    ProvidesQuest (NPC,QUEST_8)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	--local choice = math.random(1,2)

	--if choice == 1 then
	--	PlayFlavor(NPC, "", "Marr's blessings!", "", 0, 0, Spawn)
	--elseif choice == 2 then
	--	PlayFlavor(NPC, "", "Good day!", "", 1689589577, 4560189, Spawn)
	--end
	
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn,QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1)then 
	    AddConversationOption(conversation, "Why yes, I am.", "Option1")
	    AddConversationOption(conversation, "Not right now, thank you.")
	    StartConversation(conversation, NPC, Spawn, "Greetings, friend!  You look like someone who's picked up a few crafting skills here and there.  Are you looking for some work?")
    elseif HasQuest(Spawn,QUEST_1) then 
        if not HasCompletedQuest(Spawn, QUEST_1) then
	   	    AddConversationOption(conversation, "I haven't actually delevered it yet, but I'll be right back when I have.")
            StartConversation(conversation, NPC, Spawn, "Welcome back, er, " .. GetName(Spawn) .. ", was it?  I do appreciate you delivering that letter for me, it's given me time to get my tasks all sorted out and catch up with my local contacts.")
        end
    end
            
            
            
            
        	


--	AddConversationOption(conversation, "You're welcome, I trust you're all settled in now.", "Option2")
--	StartConversation(conversation, NPC, Spawn, "Welcome back, er, " .. GetName(Spawn) .. ", was it?  I do appreciate you delivering that letter for me, it's given me time to get my tasks all sorted out and catch up with my local contacts.")

--	AddConversationOption(conversation, "Oh?  And how will  you do that?", "Option3")
--	StartConversation(conversation, NPC, Spawn, "I'm a bit more organized now, and I've got an idea of some of the ways we could assist.  But first of all, I'm in a new place, and it's time to get to know people!")

--	AddConversationOption(conversation, "I did, here you go.", "Option4")
--	StartConversation(conversation, NPC, Spawn, "Welcome back again!  The cookies are all baked, did you find me some nice fruits and berries for the next batch?")

--	AddConversationOption(conversation, "All right.")
--	StartConversation(conversation, NPC, Spawn, "Thank you for your help!  Now let's get to work.  You take a batch of cookies and I'll take another batch, and we'll see what's on people's minds around here.")

--	AddConversationOption(conversation, "I discovered several people had some concerns we could help with.", "Option5")
--	StartConversation(conversation, NPC, Spawn, "So, what news did you gather around town?")

--	AddConversationOption(conversation, "I seem to have lost the recipe you gave me.", "Option6")
--	AddConversationOption(conversation, "No problems at all, I replaced them.", "Option7")
--	StartConversation(conversation, NPC, Spawn, "How did you manage with the spinning wheels?")

--	AddConversationOption(conversation, "Yes, all the extra plates they had in storage were broken somehow, and now there aren't enough for the upcoming banquet.", "Option8")
--	StartConversation(conversation, NPC, Spawn, "Thank you again for the help, the new spinning wheels should get the work back on track right away.  Now, we should address some of the other problems we discovered around town.  I heard something about a problem at the banquet hall?")

end
function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "First of all, who are you?", "Option9")
	StartConversation(conversation, NPC, Spawn, "Oh, I hoped that would be your answer!  There's a lot to do and extra hands make light the work, as they say.")
end
function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And I am " .. GetName(Spawn) .. ", it's a pleasure to meet you.  So, what needs doing?", "Option10")
	StartConversation(conversation, NPC, Spawn, "Oh!  My apologies.  I'm Tami, from the Ironforge Exchange in Qeynos.  I'm here to coordinate the efforts of crafters from Qeynos and our allied cities who wish to help the settlement of New Halas.")
end
function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    OfferQuest(NPC,Spawn,QUEST_1)
	AddConversationOption(conversation, "Very well, I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Well, I've only just got here myself, so I'm still getting sorted out.  You could do me a big favor if you'd take this letter of introduction down to the local tradeskill faction for me.  They're called the Ravens of the North, and I understand you can find them down through the tunnel to the east.")
end
function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Oh?  And how will  you do that?", "Option11")
	StartConversation(conversation, NPC, Spawn, "I'm a bit more organized now, and I've got an idea of some of the ways we could assist.  But first of all, I'm in a new place, and it's time to get to know people!")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Cookies are not a worthy cause, sorry.")
	StartConversation(conversation, NPC, Spawn, "Why cookies, of course!  Everybody loves cookies.  And what better excuse to stop by and chat?  Perhaps you could gather a few edibles to replenish my supplies, while I bake up a fresh batch of cookies?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I suppose I can help, but I trust there will be payment other than cookies.")
	AddConversationOption(conversation, "If there are cookies involved, say no more!")
	StartConversation(conversation, NPC, Spawn, "Why cookies, of course!  Everybody loves cookies.  And what better excuse to stop by and chat?  Perhaps you could gather a few edibles to replenish my supplies, while I bake up a fresh batch of cookies?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Thank you for your help!  Now let's get to work.  You take a batch of cookies and I'll take another batch, and we'll see what's on people's minds around here.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Nobody saw how that happened?", "Option12")
	StartConversation(conversation, NPC, Spawn, "I learned a lot from chatting to people, as you did.  And when I returned here, I noticed that the spinning wheels had broken, too!")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can make new spinning wheels, if you give me instructions.")
	StartConversation(conversation, NPC, Spawn, "No, apparently it happened at a moment when everybody had stepped out of the building.  Very suspicious.  But, that's something that you could help fix, if you are willing.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm very sorry.")
	StartConversation(conversation, NPC, Spawn, "Here you are again.  Please don't lose this one!")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, all the extra plates they had in storage were broken somehow, and now there aren't enough for the upcoming banquet.", "Option13")
	StartConversation(conversation, NPC, Spawn, "Thank you again for the help, the new spinning wheels should get the work back on track right away.  Now, we should address some of the other problems we discovered around town.  I heard something about a problem at the banquet hall?")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm afraid you're going to get started on your own, I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "That's a problem indeed!  But I'm sure we can set it right.  Take a copy of my recipe here, and if you make some plates and I make some plates, I'm sure we'll have enough in no time.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll get right to work.")
	StartConversation(conversation, NPC, Spawn, "That's a problem indeed!  But I'm sure we can set it right.  Take a copy of my recipe here, and if you make some plates and I make some plates, I'm sure we'll have enough in no time.")
end
