--[[
    Script Name    : SpawnScripts/LiveEvents/GigglegibberHuntMaster.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.27 12:03:34
    Script Purpose : 
                   : 
--]]


function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "gigglegibber_hunt_master/liveevents/apr_08/gigglegibber_hunt_master001.mp3", "", "nod", 659223030,  2736227231, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "It depends upon the task that you have in mind.", "Option1")
	AddConversationOption(conversation, "I am, indeed.", "Option2")
	AddConversationOption(conversation, "I'm a good ''judger of stuffs'' too. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Yous be strong, and braves.  I knows it!  I be good judger of stuffs.  Yous be perfect for hard and dangerful task!")
end

function respawn(NPC)
	spawn(NPC)
end


function Option2(NPC, Spawn)
 PlayAnimation(Spawn, 11554)
 PlayFlavor(NPC, "gigglegibber_hunt_master/liveevents/apr_08/gigglegibber_hunt_master002.mp3", "", "", 3577267648, 1063720945, Spawn)
 FaceTarget(NPC, Spawn)
 local conversation = CreateConversation()
 AddConversationOption(conversation, "What task do you have for me?", "Option1")
 StartConversation(conversation, NPC, Spawn, "Yes, yes!  Yous no never fool dis 'gibber!")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "gigglegibber_hunt_master/liveevents/apr_08/gigglegibber_hunt_master003.mp3", "", "", 1252012658, 1868146182, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "The task, Hunt Master?", "Option4")
	AddConversationOption(conversation, "I think your superiority has been well established.  How about that task?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Right to works!  I knew'd yous be perfect.  I says I be good judger!  I is rights. Momma bes so happy proud of mes!")
end	
	
	function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "gigglegibber_hunt_master/liveevents/apr_08/gigglegibber_hunt_master004.mp3", "", "", 2635329204, 2231806753, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm sorry.", "Option5")
	AddConversationOption(conversation, "I am not the right person for this task, obviously.")
	StartConversation(conversation, NPC, Spawn, "Mes be gettin' to it.   Yous be strong, and braves.  Yous no good patience'd.  Glad task no needs for that!")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "gigglegibber_hunt_master/liveevents/apr_08/gigglegibber_hunt_master005.mp3", "", "boggle", 3752019220, 2443211404, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Rats!?  You seriously want me to hunt rats!?", "Option6")
	AddConversationOption(conversation, "You've got to be kidding.  Let me guess, ''kill ten rats'' right?", "Option6")
	StartConversation(conversation, NPC, Spawn, "No hurted mes!  Yous can kills ratty beasts, yes?  Theys must be dead kill gones.")
end

function Option6(NPC, Spawn)
    PlayAnimation(Spawn, 11410)
    PlayFlavor(NPC, "gigglegibber_hunt_master/liveevents/apr_08/gigglegibber_hunt_master006.mp3", "", "cutthroat", 36100152, 1730125950, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can't believe I am agreeing to this.")
	StartConversation(conversation, NPC, Spawn, "Yes!  Dead kill crawly beasts.  Theys be giantest bad threats to all Norrathland!  I makes promise of best good reward when theys be dead gones!")
end
