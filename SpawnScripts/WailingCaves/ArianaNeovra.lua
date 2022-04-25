--[[
    Script Name    : SpawnScripts/WailingCaves/ArianaNeovra.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.23 07:02:59
    Script Purpose : 
                   : 
--]]

local TheSearchForArianna = 5211
local DoubleCrossNRevenge = 5512

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra001.mp3", "", "", 3268815580, 3756097310, Spawn)
     conversation = CreateConversation()
      if GetQuestStep(Spawn, TheSearchForArianna) == 1  then
        AddConversationOption(conversation, "Orwen sent me to look for you.", "dlg1")
      elseif HasQuest(Spawn, DoubleCrossNRevenge) and GetQuestStep(Spawn, TheSearchForArianna) == 2 then 
      AddConversationOption(conversation, "Ok, I'll be going then.")
      StartConversation(conversation, NPC, Spawn, "There's more than meets the eye here, friend. Don't fret! My destiny is by choice.")
      elseif HasCompletedQuest(Spawn, TheSearchForArianna) and not HasQuest(Spawn, DoubleCrossNRevenge) and not HasCompletedQuest(Spawn, DoubleCrossNRevenge) then
      dlg3(NPC, Spawn)
      elseif GetQuestStep(Spawn, DoubleCrossNRevenge) == 1 then
       dlg6(NPC, Spawn)
      elseif GetQuestStep(Spawn, DoubleCrossNRevenge) == 2 or HasCompletedQuest(Spawn, DoubleCrossNRevenge) then
       dlg7(NPC, Spawn)
   end
  end

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra002.mp3", "", "", 612826065, 22365633, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I see, go on.", "dlg2")
  StartConversation(conversation, NPC, Spawn, "I miss Orwen so much, but you must understand that I chose to stay here.  The orcs were planning an attack on my people, and I made a deal to cooperate with them and halt the attack.  While I 'm forced to stay here, at least I know my people, especially Orwen, are safe.")
end

function dlg2(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra003.mp3", "", "", 1549784933, 2459194121, Spawn)
     SetStepComplete(Spawn, TheSearchForArianna, 1)
      conversation = CreateConversation()
      AddConversationOption(conversation, "You are very brave, I'll take this back to Orwen.")
      StartConversation(conversation, NPC, Spawn, "If Orwen comes looking for me, they will kill us both and launch their attack. You must make Orwen believe I'm gone. This will force him to move on. Here, take this necklace back to him. He knows I would never part with this necklace if I were alive.")
end

 function dlg3(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra004.mp3", "", "", 484499425, 2010511061, Spawn)
  conversation = CreateConversation()
  	AddConversationOption(conversation, "Go on.", "dlg4")
	StartConversation(conversation, NPC, Spawn, "I'm so glad you came back!  I overheard the jailers, and it seems they still plan on attacking my people.")
end 
    

 function dlg4(NPC, Spawn)
     FaceTarget(NPC, Spawn)
      PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra005.mp3", "", "", 1614077631, 2611160815, Spawn)
	local conversation = CreateConversation()
		AddConversationOption(conversation, "Of course I will.", "dlg5")
	AddConversationOption(conversation, "I'll have to think about it.")
	StartConversation(conversation, NPC, Spawn, "My husband and our people will be completely unprepared. They don't stand a chance. You must warn them!  Will you help me?")
end 

function dlg5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra006.mp3", "", "", 3729734865, 2466870491, Spawn)
	AddConversationOption(conversation, "I see, go on.", "offer")
	StartConversation(conversation, NPC, Spawn, "Before you warn my husband, you have to delay the orc attack.")
end

function dlg6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra008.mp3", "", "", 3146386247, 640599079, Spawn)
    AddConversationOption(conversation, "I will.")
	StartConversation(conversation, NPC, Spawn, "Why do you delay?  Every moment counts! Please hurry! Please!")
end


function dlg7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Of course.")
	StartConversation(conversation, NPC, Spawn, "I don't know what you did, but whatever it was really angered the orcs! Quickly, hurry and warn my husband.")
end




function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, DoubleCrossNRevenge)
end

function InRange(NPC, Spawn)
if HasCompletedQuest(Spawn, TheSearchForArianna) and not HasCompletedQuest(Spawn, DoubleCrossNRevenge) then
PlayFlavor(NPC, "voiceover/english/ariana_neovra/wailingcaves/human/015_qs_human_female_jail_slave_callout_22ab8a6a.mp3", "Who is there?  Is that you again?  Please come quickly, I must speak with you.", "", 798980918, 1352219848, Spawn)
ProvidesQuest(NPC, DoubleCrossNRevenge)
end
   end
    
function respawn(NPC)

end

