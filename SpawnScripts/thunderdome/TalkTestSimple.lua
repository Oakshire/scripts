--[[
    Script Name    : SpawnScripts/thunderdome/TalkTestSimple.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.12 03:05:13
    Script Purpose : Setup to demonstrate an easy nested dialogue setup.  3 Option Hail
                   : 
--]]



--HAILED function facilitiates the start of most conversations
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)                                                             -- Forces NPC to face Spawn (player)   
	conversation = CreateConversation()                                                -- Designates diologue is created when referenced
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1039.mp3", "", "hello", 0, 0, Spawn)
		                                                                              --Plays Voiceover, emotes, and directs who the Voiceover is to.
		AddConversationOption(conversation, "Dance. [OPTION 1]", "Option1")
		AddConversationOption(conversation, "I don't know. [OPTION 2]","Option2")     --Notice the "Option#" is the followup dialogue function
		AddConversationOption(conversation, "Say something. [OPTION 3]","Option3")  
		AddConversationOption(conversation, "Do nothing.")                            --Notice NO followup function
		StartConversation(conversation, NPC, Spawn, "What would you like to do?")     --Required to start a dialogue.  Place it at the bottom of your dialogue.
end






-- OPTION 1 is a simple emote
function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)                                     
	PlayFlavor(NPC, "", "You've selected OPTION1", "dance", 0, 0, Spawn)
end






-- OPTION 2 creates a conversation loop
function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn) 
	conversation = CreateConversation()        
		PlayFlavor(NPC, "", "You've selected OPTION2", "shrug", 0, 0, Spawn)      
		AddConversationOption(conversation, "Yes")
		AddConversationOption(conversation, "No","hailed")                  --Will call hailed function if used.
		StartConversation(conversation, NPC, Spawn, "Do you want to stop talking then?")     
end






-- OPTION 3 uses a different language (14 at the end of Playflavor makes text Oggish.  Players who understand will be able to read it.  Even if you CAN read it, the Voiceover stays the same.)
function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn) 
	conversation = CreateConversation()        
        PlayFlavor(NPC, "voiceover/english/ogre/ft/ogre/ogre_eco_garble_garbled_gm_5b81626f.mp3", "OPTION 3. Got any pickled dwarf?", "", 3514709231, 112583900, Spawn, 14)
		AddConversationOption(conversation, "Yes")
		AddConversationOption(conversation, "No")                  
		StartConversation(conversation, NPC, Spawn, "Understood me?")     
end






--[[ Tips on PlayFlavor

 	PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley006.mp3","If you see Fritz, would you tell him I'm looking for him?","nod", 4082962413, 3474255449, Spawn,8)
    
    --Each variable translated below--
    
    PlayFlavor(Source, "VoiceoverMP3", "TextAboveNPC'sHead", "Emote", MP3key1, MP3key2, Target, LanguageNPCuses)         

    
    --No talking example--
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
    
    ]]--
