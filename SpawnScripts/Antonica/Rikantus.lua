--[[
    Script Name    : SpawnScripts/Antonica/Rikantus.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 09:07:19
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
local ScrawlingsInTheDark = 5329
local TheTrialsOfSirMorgan = 5330
local TheHiddenRiddle = 5331
local WhispersOfFortune = 5809



function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
ProvidesQuest(NPC,ScrawlingsInTheDark)
ProvidesQuest(NPC,TheTrialsOfSirMorgan)
ProvidesQuest(NPC,TheHiddenRiddle)
ProvidesQuest(NPC,WhispersOfFortune)
end

function InRange(NPC, Spawn)
if CanRecieveQuest(Spawn, ScrawlingsInTheDark) then
  ProvidesQuest(NPC, ScrawlingsInTheDark)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, ScrawlingsInTheDark) then
  ProvidesQuest(NPC, TheTrialsOfSirMorgan)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, TheTrialsOfSirMorgan) then
 ProvidesQuest(NPC, TheHiddenRiddle)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, TheHiddenRiddle) and not HasCompletedQuest(Spawn, WhispersOfFortune)  then
 ProvidesQuest(NPC, WhispersOfFortune)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
    end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, ScrawlingsInTheDark) then
    Option0(NPC, Spawn)
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
	elseif GetQuestStep(Spawn, TheHiddenRiddle) == 5 then
    Option15(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, TheHiddenRiddle) and not HasQuest(Spawn, WhispersOfFortune)  then
	Option17(NPC, Spawn)
	elseif GetQuestStep(Spawn, WhispersOfFortune) == 1 or GetQuestStep(Spawn, WhispersOfFortune) == 2 then
	Option18(NPC, Spawn)
	elseif GetQuestStep(Spawn, WhispersOfFortune) == 3 then
	Option19(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, WhispersOfFortune) then
	QuestsCompleted(NPC, Spawn)
end
    end

function QuestsCompleted(NPC, Spawn)
Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I offer you the key to fortunes never dreamt.  Do not reject them!  Obtain the exquisite pleasures of the eternal embrace of Nektropos Castle, " .. GetName(Spawn) .. " ")
		Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", 0, 0)
	Dialog.AddOption("Maybe I should return to Nektropos Castle.  Farewell Rikantus or whatever you are. ")
		Dialog.Start()
end

function Option0(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My camp is your camp,  traveler. Sit, sit ... rest a spell. Perhaps the evils of the countryside will subside whilst you warm your belly with some eidolon stew.")    
	Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus000.mp3", 1901210985, 121957326)
	Dialog.AddOption("You're very kind, but how safe can a cemetery be? ", "Option1")
	Dialog.AddOption("This place gives me the creeps. I am going.")
		Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	 Dialog.New(NPC, Spawn)
	 Dialog.AddDialog("Do not fear Evernight Cemetery. It is nothing but an old forgotten plot of land now. Nothing to fear here. The dead have long since dug their way out and found their way home or found their way to vengeance. Now how about that stew? My best batch yet.")
	 Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus001.mp3", 3613823523, 1875879979)
	   PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Thank you. So what brings an old man into the wilderness? ", "Option2")
	Dialog.AddOption("This place gives me the creeps. I am going. ")
		Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
     Dialog.AddDialog("I'm glad you asked. I am a trader of rare trinkets and a haggler of oddities. Only within the undiscovered territories will I find lost treasures the likes of which attract only the highest profits.")
   Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus002.mp3", 4016493170, 1510119490)
	Dialog.AddOption("So you risk your life for heavy coin? ", "Option3")
	Dialog.AddOption("You're rathed to be out here and so am I. Farewell.")
		Dialog.Start()
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
   Dialog.AddDialog("Profit is not always measured in the tangible. I carry only the rarest of goods and require the greatest of value in trade. Often times the most valuable possessions cannot be contained within a coin purse. Perhaps we can haggle?")
    Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus003.mp3", 2196343128, 4289160442)
	   PlayFlavor(NPC,"","","orate",0,0,Spawn)
	Dialog.AddOption("What do you have for sale? ", "Option4")
   Dialog.AddOption("I am afraid I can stay no longer. Farewell.")
   	Dialog.Start()
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	 Dialog.AddDialog("You are not ready to behold one of my curios, but we may well have business to discuss. You are an explorer, an adventurer of the wilds. I am but an old man with a walking stick. Help me and I will offer you a sliver of wonder ... a trinket more priceless than all the platinum on Norrath.")
   Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus004.mp3", 1663634136, 3735069894)
	   PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("What do you wish me to do in exchange for such a trinket? ", "offer")
		Dialog.AddOption("I cannot help you. I must leave.")
			Dialog.Start()
end

function Option5(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
		 Dialog.AddDialog("The Scrawlings of Chirannis are mine yet again. Never shall we let it drift from embrace until the cursed words and foul creed are needed again.")
	 Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus006.mp3", 2543025307, 3679314881)
	Dialog.AddOption("What is this book and why did the gnolls have it? ", "Option6")
	Dialog.AddOption("I have no time for your words. Farewell.")
		Dialog.Start()
end


function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
		 Dialog.AddDialog("The scratches within this ghastly tome have traveled far to meet the ears of gnolls. It speaks to them of origins and guides them to a foreboding destiny. The gnolls regard this as their newfound highest writ from the dog lord, Chirannis.  They shall be very displeased that the sacred words were stolen from their lair.")
	Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus007.mp3", 1593578762, 1746394351)
	Dialog.AddOption("You promised me a reward.", "Option7")
		Dialog.AddOption("I have no time for your words. Farewell.")
			Dialog.Start()
end

function Option7(NPC, Spawn)
    SetStepComplete(Spawn,  ScrawlingsInTheDark, 5)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Here is your reward, a trinket from my personal vaults. It may appear old and tattered, but the wisdom within shall lead to great fortune.")
    Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus008.mp3", 2038978809, 4230232989)
	Dialog.AddOption("Farewell.")
		Dialog.Start()
end


function Option8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I have given you a rare trinket, traveler. Take your time to examine its riddles and let it lead you to fortune.")
	Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus009.mp3", 1847543773, 266333460)
	Dialog.AddOption("I will examine the trinket. Farewell.")
		Dialog.Start()
end

function Option9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
		Dialog.AddDialog("Back again so soon? Perhaps you're hungry. I was just about to prepare some patchwork goulash. Nothing feeds a ravenous hunger like a bowl of patchwork goulash.")
    	Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus010.mp3", 4196671453, 2147837790)
	   PlayFlavor(NPC,"","","ponder",0,0,Spawn)
	Dialog.AddOption("Your book led me to no fortune.  ", "Option10")   	
	Dialog.AddOption("I cannot rest right now. I must go.")
		Dialog.Start()
end    

function Option10(NPC, Spawn)
    SetStepComplete(Spawn, TheTrialsOfSirMorgan, 15)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
		Dialog.AddDialog("So, you read \"The Trials of Sir Morgan.\" Such a brave knight he was, loved by all. If you read his tale, then fortune has just begun.")
	Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus011.mp3", 1018819553, 3991155928)
	Dialog.AddOption("All i have is this amulet. Take it. It's worthless.", "Option11")
	Dialog.AddOption("I don't have time to talk. Farewell.")
		Dialog.Start()
end



function Option11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Amulet of Ullkorruuk! I once held this many ages ago. I mean, many decades ago. Forgive an old man's memory. I meant to say my family held this long ago when I had a home. With it comes an ancient curse, a curse that cannot be lifted. I shall see that it makes its way home, should I ever return.")
	Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus012.mp3", 3588173678, 2145543554)
	PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	Dialog.AddOption("It's yours?  But the book said it came from the Keep of Immortality?", "Option12")
	Dialog.AddOption("I don't have time to talk. Farewell.")
		Dialog.Start()
end


function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
			Dialog.AddDialog("The Keep of Immortality housed many wondrous artifacts. Its master was known to associate with my ancestors. The master was a mage called Valdoartus Varsoon and if he holds this, then he must surely hold the Riddle of Saryrn.")
   Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus013.mp3", 3290450870, 3371711202)
	Dialog.AddOption("What is the Riddle of Saryrn?", "Option13")
		Dialog.AddOption("I don't have time for your stories. Farewell. ")
			Dialog.Start()
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The riddle is a puzzle box made of rare metals and forged over time in a vat of planar blood. Silly myth. It is nothing more than an ancient toy. It is nothing special at all, but it is a memento of my heritage.")
    Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus014.mp3", 3295215206, 1663469634)
	Dialog.AddOption("If I find this box for you, will you grant me true fortune?", "Option14")
	Dialog.AddOption("I don't have time for your stories. Farewell.")
		Dialog.Start()
end

function Option14(NPC, Spawn)
    if CanRecieveQuest(Spawn, TheHiddenRiddle) then
    OfferQuest(NPC, Spawn, TheHiddenRiddle)
    elseif HasQuest(Spawn, TheHiddenRiddle) then
	Dialog.New(NPC, Spawn)
 Dialog.AddDialog("Return to me the Riddle of Saryrn, and you will have your fortune. I promise this or may my soul be cursed to walk this land for eternity.")
Dialog.AddVoiceover("voiceover/english/optional1/rikantus/antonica/rikantus015.mp3", 89864911, 2778083584)
Dialog.AddOption("I will return with the puzzle box. ")
	Dialog.Start()
 end
end

function Option15(NPC, Spawn)
Dialog.New(NPC, Spawn)
Dialog.AddDialog("My traveler has returned. And you have brought me the puzzle box. I believe I have a debt to pay now. Shall we celebrate over some fermented elixirs?")
Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", 0, 0)
	   PlayFlavor(NPC,"","","happy",0,0,Spawn)
	Dialog.AddOption("All I want is my fortune.", "Option16")
	Dialog.AddOption("I don't need your fortune or elixirs. Farewell.")
		Dialog.Start()
end

function Option16(NPC, Spawn)
Dialog.New(NPC, Spawn)
Dialog.AddDialog("I am pleased that your desire has risen. You are already on your way to riches. But you are still lost and far from your goal.")
Dialog.AddOption("Just tell me where I must go. ", "Option17")
Dialog.AddOption("I don't care for any fortunes. Farewell.")
Dialog.Start()
end

function Option17(NPC, Spawn)
    if GetQuestStep(Spawn, TheHiddenRiddle, 5) then
	SetStepComplete(Spawn, TheHiddenRiddle, 5)
	end
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You must travel to the Ashlands of Nektulos. Cross the span, and the whisper of fortune will find you. Soon you shall gaze upon an account of journeys past, an account much like yours. Follow it and you will find wealth the likes of which you have never dreamt.")
	Dialog.AddOption("Give me more information about this whispering fortune.", "offer2")
	Dialog.AddOption("I don't care for any fortunes. Farewell.")
	Dialog.Start()
end

function Option18(NPC, Spawn)
	Dialog.New(NPC, Spawn)
		Dialog.AddDialog("Go and claim your fortune, and leave me to the silence of the dead. We have nothing left to share.")
		Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", 0, 0)
	Dialog.AddOption("Sorry to bother you Rikantus. ")
	Dialog.Start()
end

function Option19(NPC, Spawn)
SetStepComplete(Spawn, WhispersOfFortune, 3) 
Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You should not have returned! You refused the fortunes of Nektropos Castle, but its embrace will always linger in your soul. Such defiance is deserving of a reward. I offer you anything you can take from my chest, and  I offer you a gift greater than any platinum or silver; I offer you ... the Fleshbound Tome! Take great care of it. Its wisdom may appear when you least expect it.")
	Dialog.AddOption("Sorry to bother you Rikantus. ")	
		Dialog.Start()
end



function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, WhispersOfFortune)
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ScrawlingsInTheDark)
end





function respawn(NPC)
	spawn(NPC)
end