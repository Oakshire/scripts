--[[
    Script Name    : SpawnScripts/thunderdome/TalkTestScriptMe.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.12 05:05:12
    Script Purpose : For testing dialogue scripts.  Breeeeak it!!
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation() -- I think this could technically be whatever we want, but CreateConversation() needs to be called without variables. We could call this stringcheese if we wanted.
 	AddConversationOption(conversation, "Flex.", "flex") -- First option, adds a clickable option in response to what we send out in StartConversation. Second var refers to the function that contains the rest of the conversation.
 	AddConversationOption(conversation, "Keep talking.", "keeptalking") -- second option
 	AddConversationOption(conversation, "Terminate.") -- third option
 	StartConversation(conversation, NPC, Spawn, "Script me, please!")
end

-- OPTION 1 is a simple emote
function flex(NPC, Spawn)
	FaceTarget(NPC, Spawn)                                     
	PlayFlavor(NPC, "", "Check out these MUSCLES!", "flex", 0, 0, Spawn)
end

-- OPTION 2 creates a conversation loop
function keeptalking(NPC, Spawn)
	FaceTarget(NPC, Spawn) 
	conversation = CreateConversation()        
		AddConversationOption(conversation, "No")
		AddConversationOption(conversation, "Yes","hailed") -- You can refer back to earlier functions.
		StartConversation(conversation, NPC, Spawn, "Want to continue our conversation?") -- If we want the player to cick a button, this option must be present.
end

--[[
 Tips on PlayFlavor

     PlayFlavor(NPC, "voiceover/english/gubbo_chaley/enchanted/gubbo_chaley/gubbo_chaley006.mp3","If you see Fritz, would you tell him I'm looking for him?","nod", 4082962413, 3474255449, Spawn,8)


Translates into the NPC with the voiceover saying "If you see Fritz, would you tell him I'm looking for him?" in Stout Language (8) while nodding. Enitre action is only visible to the Spawn/Player. 
   
    --Each variable translated below--
    
    PlayFlavor(Source, "VoiceoverMP3", "TextAboveNPC'sHead", "Emote", MP3key1, MP3key2, Target, LanguageNPCuses)         

    
    --No talking example--
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)

    Visible to everyone around: 
    PlayFlavor(NPC,"","","shakefist",0,0)
    
    ]]--
