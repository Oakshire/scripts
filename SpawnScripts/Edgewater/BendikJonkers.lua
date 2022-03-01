--[[
    Script Name    : SpawnScripts/Edgewater/BendikJonkers.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.06 03:07:36
    Script Purpose : 
                   : 
--]]

local InsideTheEdgewaterDrains = 5303

function spawn(NPC)
ProvidesQuest(NPC, InsideTheEdgewaterDrains)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, InsideTheEdgewaterDrains) and not HasCompletedQuest(Spawn, InsideTheEdgewaterDrains) then
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers000.mp3", "", "", 1175371605, 527423155, Spawn)
	AddConversationOption(conversation, "That's a friendly greeting.", "Option1")
	AddConversationOption(conversation, "Just passing through.")
	StartConversation(conversation, NPC, Spawn, "Unless you've got the wit to help me, leave me be.")
	elseif GetQuestStep(Spawn, InsideTheEdgewaterDrains) <= 5 then
	QuestProgress(NPC, Spawn)
	elseif GetQuestStep(Spawn, InsideTheEdgewaterDrains) == 7 or GetQuestStep(Spawn, InsideTheEdgewaterDrains) == 8 then
	PlayFlavor(NPC, "", "Those Murkwater henchmen sure are slimy.  Can't tell which one Madame Kisa trusts with those keys!", "shrug", 1689589577, 4560189, Spawn)
	elseif HasCompletedQuest(Spawn, InsideTheEdgewaterDrains) then
	 PlayFlavor(NPC, "",  "So many parts to find, so many things to build!", "happy", 1689589577, 4560189, Spawn)
end
   end
	
	
function Option1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	local conversation = CreateConversation()
    	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer03/bendik_jonkers001.mp3", "", "", 4081751692, 4069071038, Spawn)
	AddConversationOption(conversation, "Two trolls walked into a bar...", "Option2")
	AddConversationOption(conversation, "I've got more wit than you.", "Option3")
		AddConversationOption(conversation, "I'm not interested in whatever you want.")
	StartConversation(conversation, NPC, Spawn, "I am not unfriendly by nature.  It's just that...I'm on an important mission and only those of a certain caliber would be able to help.  I like to weed out the riff-raff right at the start.  So, have you wit enough to help?")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer03/bendik_jonkers002.mp3", "", "", 2200535807, 1036768192, Spawn)
	AddConversationOption(conversation, "(continue)", "Option3")
	AddConversationOption(conversation, "I'm not interested in being useful to you.")
	StartConversation(conversation, NPC, Spawn, "...and the second one said to the first, \"Ouch! That hurt!\"   I've heard that one plenty of times.  Well, you could be useful, even if you haven't much wit.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer03/bendik_jonkers003.mp3", "", "", 3657475002, 3361786173, Spawn)
	AddConversationOption(conversation, "Yes.  What of him?", "Option5")
	AddConversationOption(conversation, "No.  Who is he?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Have you heard of Bodwin Zevuwickle?")
end


function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer03/bendik_jonkers004.mp3", "", "", 2107818020, 1856424121, Spawn)
	AddConversationOption(conversation, "(continue)", "Option5")
	StartConversation(conversation, NPC, Spawn, "Zevuwickle's a gnome, same as me, an inventor.  He did some, shall we say, unauthorized work down in the sewers which he thinks has removed any traces of his discarded inventions.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer03/bendik_jonkers005.mp3", "", "", 2844421101, 3717752420, Spawn)
	AddConversationOption(conversation, "Five pieces, still here in the sewers?", "Option6")
	AddConversationOption(conversation, "I'll be back later to chat.")
	StartConversation(conversation, NPC, Spawn, "My sources tell me that some pieces of one of his unfinished projects are still here for the taking in the catacombs.  I've gathered seven pieces so far on my own but there's five other pieces that I haven't been able to locate.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer03/bendik_jonkers006.mp3", "", "", 2584501163, 2103795671, Spawn)
	AddConversationOption(conversation, "What's that?", "offer")
	AddConversationOption(conversation, "On second thought, no, I haven't time for this now.")
	StartConversation(conversation, NPC, Spawn, "Yep.  This is what's left:  an ancient sieve, some copper wire, a rusted iron bracket, a length of corroded chain, and a set of nesting cogwheels.  Pretty pedestrian stuff. Dunno what he was making, but I know what I'll do with this.")
end

function Option7(NPC, Spawn) -- PROGRESS 
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers010.mp3", "", "", 3615679335, 4197295400, Spawn)
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "You must hurry!  If Zevuwickle learns that these pieces still exist...well, who knows what would happen?")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers011.mp3", "", "", 2505330643, 3531153923, Spawn)
	AddConversationOption(conversation, "So, about that reward you mentioned?", "Option9")
	AddConversationOption(conversation, "You're welcome.  I guess.")
	StartConversation(conversation, NPC, Spawn, "Very fortunate, very fortunate indeed, eh?  Thanks.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers012.mp3", "", "", 3167834561, 2996373992, Spawn)
	AddConversationOption(conversation, "I distinctly recall mention of a reward.  Perhaps we should settle the question the old-fashioned way?", "Option10")
	AddConversationOption(conversation, "I will have to do this some other time.")
	StartConversation(conversation, NPC, Spawn, "Did I say there'd be a reward for helping me?  You must be mistaken.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers013.mp3", "", "", 3620148847, 3556060566, Spawn)
	AddConversationOption(conversation, "So my promised reward was stolen by one of the Murkwaters?", "Option11")
	AddConversationOption(conversation, "Forget it.")
	StartConversation(conversation, NPC, Spawn, "Now, now, no need to get testy.  Fact is I haven't got what I was going to give you on me.  While I was waiting for you -- quite the long wait, if you don't mind me saying -- one of those Murkwater henchmen snuck up and swiped it.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers014.mp3", "", "", 855139121, 4239745221, Spawn)
	AddConversationOption(conversation, "That seems unfair somehow.", "Option12")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "Yes, I'm afraid so.  Now, you don't have to go claim it if you don't want to, but it was a rather nice bit.  If you want to claim your reward, I'm afraid there's a bit of work to do.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers015.mp3", "", "", 3272779215, 3056774670, Spawn)
	AddConversationOption(conversation, "Fine.", "Option13")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "Well, it's up to you.  You can probably convince one of the Murkwater henchmen to cough up a key to their hideout.  Then you can take up the matter of their thievery with the head of their gang, Madame Kisa.  She's their top dog.  Er, rat...onga.")
end


function Option13(NPC, Spawn)
    SetStepComplete(Spawn, InsideTheEdgewaterDrains, 6)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers016.mp3", "", "", 3211375738, 1902642413, Spawn)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "All ratonga look alike to me, so I wouldn't know which Murkwater henchman has a key.  Madame Kisa keeps them on a pretty short leash, as it were, so not all of them have one.  Good luck!")
end






function QuestProgress(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/bendik_jonkers/fprt_sewer_epic03/bendik_jonkers009.mp3", "", "", 863355354, 1854452925, Spawn)
    if GetQuestStep(Spawn, InsideTheEdgewaterDrains) == 6 then
	AddConversationOption(conversation, "Yes, here they are.", "Option8")
	end
	AddConversationOption(conversation, "Not yet.", "Option7")
	StartConversation(conversation, NPC, Spawn, "Have you got the five items I need?")
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, InsideTheEdgewaterDrains)
end





function respawn(NPC)
	spawn(NPC)
end