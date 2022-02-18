--[[
	Script Name	: SpawnScripts/Baubbleshire/ZipiffClamorclang.lua
	Script Purpose	: Zipiff Clamorclang 
	Script Author	: Dorbin
	Script Date	: 2022.01.21
	Script Notes	: 
--]]

local Delivery = 5446

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
        if GetQuestStep (Spawn, Delivery) == 1 then 
	    AddConversationOption(conversation, "I'm checking on Lolla Cotgrove's kegs.", "TheOrder")
	    end
	PlayFlavor(NPC, "voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang000.mp3", "", "", 2450977341, 1936083009, Spawn)
	AddConversationOption(conversation, "I think I'll move back.  It sounds like I really don't want to crimp a cog.")
	StartConversation(conversation, NPC, Spawn, "Careful where you walk!   I don't want you bending a sprocket or tweaking a spring, and you mustn't crimp a cog!  If I have to uncrimp just one more cog...")
end

function TheOrder(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang001.mp3", "", "yes", 776820733, 1890824744, Spawn)
    AddConversationOption(conversation, "Sounds like sorcery. How does it work?", "Clockwork")
	AddConversationOption(conversation, "I will let her know. Thank you.", "UpdateDelivery")
	StartConversation(conversation, NPC, Spawn, "Ah, yes! Wonderful things. I am finishing the kegs right now. I've got the Freezorators working, or at least to the point where they don't cover the kegs in ice. Let Lolla know the kegs are on schedule and will be ready soon.")
end

function Clockwork(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang002.mp3", "", "no", 2356722587, 1174004626, Spawn)
    AddConversationOption(conversation, "A Freeze-or...what?", "Clockwork2")
	AddConversationOption(conversation, "Anyway, I'll let Lolla know about the kegs. Thank you.", "UpdateDelivery")
	StartConversation(conversation, NPC, Spawn, "Sorcery? I stopped that silliness a long time ago. Though it had a solid foundation, sorcery isn't as effective as clockworks! Take my Freezorator for example.")
end

function Clockwork2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang003.mp3", "", "", 260712735, 3045244120, Spawn)
	AddConversationOption(conversation, "Nope, I'll let Lolla know about the kegs.", "UpdateDelivery")
	StartConversation(conversation, NPC, Spawn, "A Freezor-ator! Rather than using ice spells to keep something cold, my device works all day. Yes yes, I know it's not as good as a sub-arctic ice storm spell... or as effective as lobbing shards of ice at hungry gnolls... or even freezing the skin off of a... Oh, well it's just better! Alright?! Is there anything else?")
end

    function UpdateDelivery(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
    end