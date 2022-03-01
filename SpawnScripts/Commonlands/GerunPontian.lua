--[[
	Script Name      :    SpawnScripts/Commonlands/GerunPontian.lua
	Script Purpose   :    Gerun Pontian
	Script Author    :    vo1d
	Script Date      :    2019.10.28
	Script Notes     :    n/a
--]]


local InHisName = 5228
local SpeckledRattlerVenom = 375
local BeetleShells = 398
local ArmadilloHides = 399
local OrcsAndGhosts = 400
local Rainus = 401
local ReturningToCaptainFeralis = 5221

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
if GetDeity(Spawn) ~= 1   then
  if not HasCompletedQuest(Spawn, SpeckledRattlerVenom) then
  ProvidesQuest(NPC, SpeckledRattlerVenom)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, SpeckledRattlerVenom) then
  ProvidesQuest(NPC, BeetleShells)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, BeetleShells) then
  ProvidesQuest(NPC, ArmadilloHides)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, ArmadilloHides) then
  ProvidesQuest(NPC, OrcsAndGhosts)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, OrcsAndGhosts) then
  ProvidesQuest(NPC, Rainus)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  end
end
   end


function hailed(NPC, Spawn)
if GetDeity(Spawn) ~= 1   then
	if HasCompletedQuest(Spawn, SpeckledRattlerVenom) and not HasQuest(Spawn, BeetleShells) and not HasCompletedQuest(Spawn, BeetleShells) then
		Option2(NPC, Spawn)
	elseif GetQuestStep(Spawn, SpeckledRattlerVenom) == 1 then
			HaventGotTheVenom(NPC, Spawn)
	elseif GetQuestStep(Spawn, SpeckledRattlerVenom) == 2 then
			HasGotTheVenom(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, SpeckledRattlerVenom) and not HasCompletedQuest(Spawn, BeetleShells) and not HasQuest(Spawn, BeetleShells) and not HasCompletedQuest(Spawn, ArmadilloHides) and not HasQuest(Spawn, ArmadilloHides) then
	     Option3(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, SpeckledRattlerVenom) and HasCompletedQuest(Spawn, BeetleShells) and HasCompletedQuest(Spawn, ArmadilloHides) and not HasCompletedQuest(Spawn, OrcsAndGhosts) and not HasQuest(Spawn, OrcsAndGhosts) then
	     Option5(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, SpeckledRattlerVenom) and HasCompletedQuest(Spawn, BeetleShells) and HasCompletedQuest(Spawn, ArmadilloHides) and HasCompletedQuest(Spawn, OrcsAndGhosts) and not HasCompletedQuest(Spawn, Rainus) and not HasQuest(Spawn, Rainus) then
	    orcscomplete(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, SpeckledRattlerVenom) and HasCompletedQuest(Spawn, BeetleShells) and HasCompletedQuest(Spawn, ArmadilloHides) and HasCompletedQuest(Spawn, OrcsAndGhosts) and HasQuest(Spawn, Rainus) or HasCompletedQuest(Spawn, Rainus) then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "Thanks for the help", "", 0, 0, Spawn)
	elseif HasCompletedQuest(Spawn, SpeckledRattlerVenom) and HasCompletedQuest(Spawn, BeetleShells) and not HasQuest(Spawn, ArmadilloHides) and not HasCompletedQuest(Spawn, ArmadilloHides) and not HasQuest(Spawn, ArmadilloHides) then
	    Option11(NPC, Spawn)
	elseif GetQuestStep(Spawn, BeetleShells) == 1 then
	    HaventGotTheShells(NPC, Spawn)
	elseif GetQuestStep(Spawn, BeetleShells) == 2 then
	    HasGotTheShells(NPC, Spawn)
	elseif GetQuestStep(Spawn, ArmadilloHides) == 1 then
	    HaventGotTheHides(NPC, Spawn)
	elseif GetQuestStep(Spawn, ArmadilloHides) == 2 then
	    HasGotTheHides(NPC, Spawn)
	elseif GetQuestStep(Spawn, OrcsAndGhosts) == 1 then
	    OrcsNotKilled(NPC, Spawn)
	elseif GetQuestStep(Spawn, OrcsAndGhosts) == 2 then
	    OrcsKilled(NPC, Spawn)
	elseif not HasQuest(Spawn, SpeckledRattlerVenom) and not HasCompletedQuest(Spawn, SpeckledRattlerVenom) then
		FirstTimeSpeaking(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, ReturningToCaptainFeralis) then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "Well done. I have heard much about your expoits", "hail", 0, 0, Spawn)
	elseif HasQuest(Spawn, InHisName) then
	    SetStepComplete(Spawn, InHisName, 1)
	end
elseif GetDeity(Spawn) == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1022.mp3", "You are less then welcome here.", "", 0, 0, Spawn)
    end
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "How does this post turn profit?", "dlg_3")
	StartConversation(Conversation, NPC, Spawn, "Who attacks the gates of Freeport? Orcs? Dervish Cutthroats? Qeynosians? Hah! The only good thing about this post is it gives me a lot of time. And even the most daft of fools knows that time equals money.")
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "What do you need?", "dlg_4")
	AddConversationOption(Conversation, "No thanks.")
	StartConversation(Conversation, NPC, Spawn, "Like I said, I've got free time. So while I'm out here I can acquire commodities that I can then sell to the merchants of Freeport. If I can't be out there earning glory, I'll stay back here and earn coin. Care to help?")
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "Sure.", "OfferSpeckledRattlerVenom")
	StartConversation(Conversation, NPC, Spawn, "Venom has been selling quite nicely. There are quite a few speckled rattlers around here. They're a great source of venom. If you bring me back the venom from eight of them I'll give you a portion of what the profit will be. Sound good?")
end

function FirstTimeSpeaking(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(Conversation, "What makes it so dreary?", "dlg_2")
	AddConversationOption(Conversation, "I have to go.")
	StartConversation(Conversation, NPC, Spawn, "Gerun Pontian of the Militia. I watch the gates. I assure you a more dreary job does not exist in all of D'Lere.")
end

function OfferSpeckledRattlerVenom(NPC, Spawn)
	OfferQuest(NPC, Spawn, SpeckledRattlerVenom)
	
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "I'll be back.")
	StartConversation(Conversation, NPC, Spawn, "Great! I'll be here, of course.")
end

function HaventGotTheVenom(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(Conversation, "Not yet.")
	StartConversation(Conversation, NPC, Spawn, "Did you get the venom?")
end

function HasGotTheVenom(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, here it is.", "CompleteSpeckledRattlerVenom")
	StartConversation(conversation, NPC, Spawn, "Did you get the venom?")
end



function HaventGotTheHides(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Not yet.")
   	StartConversation(conversation, NPC, Spawn, "Did you get the hides?") 
end

function  HasGotTheHides(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Yes.", "Option4")
   	StartConversation(conversation, NPC, Spawn, "Did you get the hides?") 
end

function OrcsKilled(NPC, Spawn)
     FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, they are dead.", "orcscomplete")
	StartConversation(conversation, NPC, Spawn, "Are the orcs dead?")
end


function OrcsNotKilled(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()
	AddConversationOption(Conversation, "Not yet.")
	StartConversation(Conversation, NPC, Spawn, "Are the orcs dead?")
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
end

function CompleteSpeckledRattlerVenom(NPC, Spawn)
	SetStepComplete(Spawn, SpeckledRattlerVenom, 2)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()
	AddConversationOption(Conversation, "What is it?", "Option2")
	AddConversationOption(Conversation, "No thanks.")
	StartConversation(Conversation, NPC, Spawn, "Good work. You've made us both quite a bit of coin. Thanks for the help. I'm sorry that my tasks have been so dull, it's hard to pull the important missions when you're a lowly gate patrol. I do have something a bit more exciting if you're interested.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "More venom?", "Option9")
	StartConversation(conversation, NPC, Spawn, "Great! This will fetch a nice amount. There's more where that came from if you're interested.")
end

function HaventGotTheShells(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
	    local conversation = CreateConversation()
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	    AddConversationOption(conversation, "Not yet.")
	    StartConversation(conversation, NPC, Spawn, "Do you have the shells?")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What is it?", "offer4")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "I do have something a bit more exciting if you're interested.")
end


function orcscomplete(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetQuestStep(Spawn, OrcsAndGhosts) == 2 then
    SetStepComplete(Spawn, OrcsAndGhosts, 2)
    end
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yeah, I'm interested.", "Option16")
	StartConversation(conversation, NPC, Spawn, "Ah, most excellent. Thank you very much. Listen... they sent you to me to see if you were able to get things done. I know I've been sending you around doing menial stuff, but you seem to follow orders quite well. If you're interested in working for us, and increasing your exposure--even to the Overlord himself--I have someone I can put you in contact with. Interested?")
end


function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will find him.", "offer5")
	StartConversation(conversation, NPC, Spawn, "I thought you might be. He won't be sending you after any armadillos either! Go south of here, past the Turmoil Cemetery. There is an old, ruined tower where you can find Rainus Canton. He will have tasks for you, without a doubt.")
end


function HasGotTheShells(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
	    local conversation = CreateConversation()
	     PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Do you have the shells?")
end	    

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, BeetleShells, 2)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yeah, I can do more.", "Option11")
		AddConversationOption(conversation, "Sorry, not interested right now.")
	StartConversation(conversation, NPC, Spawn, "Great! Are you tired yet or can you do more?")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can get them.", "offer3")
	AddConversationOption(conversation, "Not interested.")
	StartConversation(conversation, NPC, Spawn, "All right. I've got some buyers lined up for some armadillo hides. You can find some if you follow the road west and along the wall that stretches to the north. I need ten of their hides.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    SetStepComplete(Spawn, ArmadilloHides, 2)
	AddConversationOption(conversation, "No problem.  Glad I could help.", "Option13")
	StartConversation(conversation, NPC, Spawn, "Good work. You've made us both quite a bit of coin. Thanks for the help. I'm sorry that my tasks have been so dull. It's hard to pull the important missions when you're a lowly gate patrol.")
end

function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "May the Overlord hasten your path, " .. GetName(Spawn) .. ".")
end


function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    
	AddConversationOption(conversation, "Sure, I'll get the shells.", "offer2")
	StartConversation(conversation, NPC, Spawn, "Nah, this will take a while to sell. If I have more venom I risk driving down my own price. But there's plenty of wildlife around here that is willing to be exploited for our benefit! The shells of the small emerald beetles around here are very commonly used in jewelry. If you collect six of their shells I'll have enough to make a bulk sale. What do you say?")
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, BeetleShells)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, ArmadilloHides)
end


function offer4(NPC, Spawn)
OfferQuest(NPC, Spawn, OrcsAndGhosts)
end

function offer5(NPC, Spawn)
OfferQuest(NPC, Spawn, Rainus)
end

