--[[
    Script Name    : SpawnScripts/Antonica/Rikantus.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 09:07:19
    Script Purpose : 
                   : 
--]]

local ScrawlingsInTheDark = 5329
local TheTrialsOfSirMorgan = 5330
local TheHiddenRiddle = 5331

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, ScrawlingsInTheDark) and not HasCompletedQuest(Spawn, ScrawlingsInTheDark) then
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus000.mp3", "", "", 1901210985, 121957326, Spawn)
	AddConversationOption(conversation, "You're very kind, but how safe can a cemetery be? ", "Option1")
	AddConversationOption(conversation, "This place gives me the creeps. I am going. ")
	StartConversation(conversation, NPC, Spawn, "My camp is your camp,  traveler. Sit, sit ... rest a spell. Perhaps the evils of the countryside will subside whilst you warm your belly with some eidolon stew.")
	elseif GetQuestStep(Spawn, ScrawlingsInTheDark) < 5 then
	PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/quest/020_human_male_rikantus_incomplete_fc0224e5.mp3", "I sent you on your way. Do not return until you have what I desire.", "", 532105714, 2356318843, Spawn)
	elseif GetQuestStep(Spawn, ScrawlingsInTheDark) == 5 then
	Option5(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, ScrawlingsInTheDark) and not HasQuest(Spawn, TheTrialsOfSirMorgan) and not HasCompletedQuest(Spawn, TheTrialsOfSirMorgan) then
	Option8(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheTrialsOfSirMorgan) == 15 then
	Option9(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, TheTrialsOfSirMorgan) and not HasCompletedQuest(Spawn, TheHiddenRiddle) then
	Option11(NPC, Spawn)
end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus001.mp3", "", "", 3613823523, 1875879979, Spawn)
	AddConversationOption(conversation, "Thank you. So what brings an old man into the wilderness? ", "Option2")
		AddConversationOption(conversation, "This place gives me the creeps. I am going. ")
	StartConversation(conversation, NPC, Spawn, "Do not fear Evernight Cemetery. It is nothing but an old forgotten plot of land now. Nothing to fear here. The dead have long since dug their way out and found their way home or found their way to vengeance. Now how about that stew? My best batch yet.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus002.mp3", "", "", 4016493170, 1510119490, Spawn)
	AddConversationOption(conversation, "So you risk your life for heavy coin? ", "Option3")
	AddConversationOption(conversation, "You're rathed to be out here and so am I. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I'm glad you asked. I am a trader of rare trinkets and a haggler of oddities. Only within the undiscovered territories will I find lost treasures the likes of which attract only the highest profits.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus003.mp3", "", "", 2196343128, 4289160442, Spawn)
	AddConversationOption(conversation, "What do you have for sale? ", "Option4")
		AddConversationOption(conversation, "I am afraid I can stay no longer. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Profit is not always measured in the tangible. I carry only the rarest of goods and require the greatest of value in trade. Often times the most valuable possessions cannot be contained within a coin purse. Perhaps we can haggle?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus004.mp3", "", "", 1663634136, 3735069894, Spawn)
	AddConversationOption(conversation, "What do you wish me to do in exchange for such a trinket? ", "offer")
		AddConversationOption(conversation, "I cannot help you. I must leave.")
	StartConversation(conversation, NPC, Spawn, "You are not ready to behold one of my curios, but we may well have business to discuss. You are an explorer, an adventurer of the wilds. I am but an old man with a walking stick. Help me and I will offer you a sliver of wonder ... a trinket more priceless than all the platinum on Norrath.")
end

function Option5(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus006.mp3", "", "", 2543025307, 3679314881, Spawn)
	AddConversationOption(conversation, "What is this book and why did the gnolls have it? ", "Option6")
	AddConversationOption(conversation, "I have no time for your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The Scrawlings of Chirannis are mine yet again. Never shall we let it drift from embrace until the cursed words and foul creed are needed again.")
end


function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus006.mp3", "", "", 2543025307, 3679314881, Spawn)
	AddConversationOption(conversation, "You promised me a reward.", "Option7")
		AddConversationOption(conversation, "I have no time for your words. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The scratches within this ghastly tome have traveled far to meet the ears of gnolls. It speaks to them of origins and guides them to a foreboding destiny. The gnolls regard this as their newfound highest writ from the dog lord, Chirannis.  They shall be very displeased that the sacred words were stolen from their lair.")
end

function Option7(NPC, Spawn)
    SetStepComplete(Spawn,  ScrawlingsInTheDark, 5)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus008.mp3", "", "", 2038978809, 4230232989, Spawn)
	AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, NPC, Spawn, "Here is your reward, a trinket from my personal vaults. It may appear old and tattered, but the wisdom within shall lead to great fortune.")
end


function Option8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus009.mp3", "", "", 1847543773, 266333460, Spawn)
	AddConversationOption(conversation, "I will examine the trinket. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I have given you a rare trinket, traveler. Take your time to examine its riddles and let it lead you to fortune.")
end

function Option9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    	local conversation = CreateConversation()
    	PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus010.mp3", "", "", 4196671453, 2147837790, Spawn)
	AddConversationOption(conversation, "Your book led me to no fortune.  ", "Option10")   	
	AddConversationOption(conversation, "I cannot rest right now. I must go.")
	StartConversation(conversation, NPC, Spawn, "Back again so soon? Perhaps you're hungry. I was just about to prepare some patchwork goulash. Nothing feeds a ravenous hunger like a bowl of patchwork goulash.")
end    

function Option10(NPC, Spawn)
    SetStepComplete(Spawn, TheTrialsOfSirMorgan, 15)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus011.mp3", "", "", 1018819553, 3991155928, Spawn)
	AddConversationOption(conversation, "All i have is this amulet. Take it. It's worthless.", "Option11")
	AddConversationOption(conversation, "I don't have time to talk. Farewell.")
	StartConversation(conversation, NPC, Spawn, "So, you read \"The Trials of Sir Morgan.\" Such a brave knight he was, loved by all. If you read his tale, then fortune has just begun.")
end



function Option11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus012.mp3", "", "", 3588173678, 2145543554, Spawn)
	AddConversationOption(conversation, "It's yours?  But the book said it came from the Keep of Immortality?", "Option12")
	AddConversationOption(conversation, "I don't have time to talk. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The Amulet of Ullkorruuk! I once held this many ages ago. I mean, many decades ago. Forgive an old man's memory. I meant to say my family held this long ago when I had a home. With it comes an ancient curse, a curse that cannot be lifted. I shall see that it makes its way home, should I ever return.")
end


function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus013.mp3", "", "", 3290450870, 3371711202, Spawn)
	AddConversationOption(conversation, "What is the Riddle of Saryrn?", "Option13")
		AddConversationOption(conversation, "I don't have time for your stories. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "The Keep of Immortality housed many wondrous artifacts. Its master was known to associate with my ancestors. The master was a mage called Valdoartus Varsoon and if he holds this, then he must surely hold the Riddle of Saryrn.")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus014.mp3", "", "", 3295215206, 1663469634, Spawn)
	AddConversationOption(conversation, "If I find this box for you, will you grant me true fortune?", "Option14")
	AddConversationOption(conversation, "I don't have time for your stories. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The riddle is a puzzle box made of rare metals and forged over time in a vat of planar blood. Silly myth. It is nothing more than an ancient toy. It is nothing special at all, but it is a memento of my heritage.")
end

function Option14(NPC, Spawn)
    if not HasQuest(Spawn, TheHiddenRiddle) then
    OfferQuest(NPC, Spawn, TheHiddenRiddle)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/rikantus/antonica/rikantus015.mp3", "", "", 89864911, 2778083584, Spawn)
	AddConversationOption(conversation, "I will return with the puzzle box.  ")
	StartConversation(conversation, NPC, Spawn, "Return to me the Riddle of Saryrn, and you will have your fortune. I promise this or may my soul be cursed to walk this land for eternity.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ScrawlingsInTheDark)
end



function respawn(NPC)
	spawn(NPC)
end