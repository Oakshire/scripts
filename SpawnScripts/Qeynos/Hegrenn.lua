--[[
	Script Name	: SpawnScripts/SouthQeynos/Hegrenn.lua
	Script Purpose	: Hegrenn <Bowyer>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local Sneed = 5548
local Stones = 5549

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
    ProvidesQuest(NPC,Stones)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
        end
else
    	    FaceTarget(NPC, Spawn)
		    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
   	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
 else   
     local conversation = CreateConversation()
    FaceTarget(NPC,Spawn)
   	    PlayFlavor(NPC, "voiceover/english/blacksmith_hegrenn/qey_south/blacksmithhegrenn000.mp3", "", "bye", 3860553311, 50224137, Spawn, 0)
        if not HasQuest(Spawn,Stones) and not HasCompletedQuest(Spawn, Stones)then
        AddConversationOption(conversation, "I'm actually looking for work.  Have anything that needs doing?","Offer")
        end
        if GetQuestStep(Spawn, Stones) ==2 then
        AddConversationOption(conversation, "Seems the rumors were true.  Here are three samples of the mineral you were looking for.","Delivered2")
        end         
        if GetQuestStep(Spawn, Sneed) ==1 then
        AddConversationOption(conversation, "I am here to pick up the supplies that Sneed Galliway has ordered from you.","Delivered")
        end        
        AddConversationOption(conversation, "I'm not looking for anything at this time.")
    	StartConversation(conversation, NPC, Spawn, "What are ya need'n?  If its made of iron you'll find it here.  I'm the best and only blacksmith in this part of town.  Are ya going to stand there, or browse my wares?")
    end
end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/blacksmith_hegrenn/qey_south/blacksmithhegrenn001.mp3", "", "happy", 1598192026, 512466525, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I will.  Thank you.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Ah, good ol' Sneed.  He's always selling so much stuff! I can barely keep up with his orders!  Here, take his supplies back to him.")
end	

function FinishQuest(NPC,Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Sneed, 1)
end 

function QuestStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/blacksmith_hegrenn/qey_south/blacksmithhegrenn002.mp3", "", "ponder", 986701836, 3811375684, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm up for the challenge.  I'll be back once I verify this rumor.", "Offer")
	AddConversationOption(conversation, "I prefer my rocks a little less animated.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "Ahh, work.  You don't say.  I heard a bit of gossip over at the tavern.  There's a rare stone mineral.  The Oakmyst royal defenders out in the forest have it, and I need several pieces.  Will you commit to this daring task, adventurer?  Remember, I need several pieces!")
end	

function Offer(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Stones)
    end
    
function Delivered2(NPC, Spawn) --NOT ACCURATE DIALOG
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/blacksmith_hegrenn/qey_south/blacksmithhegrenn003.mp3", "", "boggle", 1598192026, 512466525, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Just between us.  Got it.  Thank you!", "FinishQuest2")
	StartConversation(conversation, NPC, Spawn, "Praise Brell!  These are quite the find!... but I must be ask'n ya to keep this little secret between us.  We wouldn't want the dryads of the forest come'n back for some revenge, now would we? Haha.  Please take one of these weapons I've been working on!  I insist.")
end	

function FinishQuest2(NPC,Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Stones, 2)
end 