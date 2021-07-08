--[[
    Script Name    : SpawnScripts/FallenGate/LoganBelchbottom.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.07 08:07:54
    Script Purpose : 
                   : 
--]]

local LostFriendInFallenGate = 5305
local KillEmAll = 5306

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")    
ProvidesQuest(NPC, LostFriendInFallenGate)
end


function InRange(NPC, Spawn)
 if not HasCompletedQuest(Spawn, LostFriendInFallenGate) and not HasQuest(Spawn, LostFriendInFallenGate) then
  ProvidesQuest(NPC, LostFriendInFallenGate)
    SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, LostFriendInFallenGate) then
  ProvidesQuest(NPC, KillEmAll)
      SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
    end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, LostFriendInFallenGate) and not HasCompletedQuest(Spawn, LostFriendInFallenGate) then
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom001.mp3", "", "", 955845055, 2929839521, Spawn)
	AddConversationOption(conversation, "Yeah and ... ?", "Option1")
	AddConversationOption(conversation, "Sorry to hear that. ")
	StartConversation(conversation, NPC, Spawn, "Oh, thank you for heeding my plea!  My companion and I were separated, and I've not seen him for days.")
	elseif GetQuestStep(Spawn, LostFriendInFallenGate) == 1 then
	QuestProgress(NPC, Spawn)
	elseif GetQuestStep(Spawn, LostFriendInFallenGate) == 2 then
	Option2(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, LostFriendInFallenGate) then
	Option4(NPC, Spawn)
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom002.mp3", "", "", 1390924911, 3638584326, Spawn)
	AddConversationOption(conversation, "Sure.  What can I do?", "offer")
	AddConversationOption(conversation, "I'll think about it. ")
	StartConversation(conversation, NPC, Spawn, "We made a pact, that if we ever separated, to meet at the exit. This is as far as I got.  I'm terribly frightened! Please, will you help me?")
end


function Option2(NPC, Spawn)
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation() 
	PlayFlavor(NPC, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom005.mp3", "", "", 1643303310, 3774394168, Spawn)
    AddConversationOption(conversation, "Well...there was this cauldron and...it looks like I was too late to save him.", "Option3")
	StartConversation(conversation, NPC, Spawn, "What?  Why do you return alone?  Where is Mr. Burpbelly?")
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, LostFriendInFallenGate, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom006.mp3", "", "", 466342668, 3080648051, Spawn)
	AddConversationOption(conversation, "My condolences. ")
	StartConversation(conversation, NPC, Spawn, "No ... NO!  It can't be! What am I to do now?")
end

function Option4(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom007.mp3", "", "", 2648633348, 1343979863, Spawn)
	AddConversationOption(conversation, "Who're 'they'?", "Option5")
			AddConversationOption(conversation, "I can see them too.")
	StartConversation(conversation, NPC, Spawn, "I can't leave! There are too many of them!  They're all over the place!")
end

    
function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom008.mp3", "", "", 1938908818, 3560098645, Spawn)
	AddConversationOption(conversation, "Which wretched creatures?", "offer2")
		AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "Would you help me one more time?  Clear me a path by killing these wretched creatures. Will you do this for me?")
end


function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom009.mp3", "", "", 1019298887, 1679042471, Spawn)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Kill them! Kill whatever or whoever is in the way of the exit! Just kill them.")
end






function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, LostFriendInFallenGate)
end

function offer2(NPC, Spawn)
if not HasQuest(Spawn, KillEmAll) then
OfferQuest(NPC, Spawn, KillEmAll)
elseif HasQuest(Spawn, KillEmAll) then
Option6(NPC, Spawn)
end    
   end

function QuestProgress(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom004.mp3", "", "", 1774733230, 967814445, Spawn)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, NPC, Spawn, "Please return as soon as you find my friend.")
end


function respawn(NPC)
	spawn(NPC)
end