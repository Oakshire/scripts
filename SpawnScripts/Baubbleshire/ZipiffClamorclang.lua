--[[
	Script Name	: SpawnScripts/Baubbleshire/ZipiffClamorclang.lua
	Script Purpose	: Zipiff Clamorclang 
	Script Author	: Dorbin
	Script Date	: 2022.01.21
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5446

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Careful where you walk!   I don't want you bending a sprocket or tweaking a spring, and you mustn't crimp a cog!  If I have to uncrimp just one more cog...")
	Dialog.AddVoiceover("voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang000.mp3", 2450977341, 1936083009)
	PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn)

	Dialog.AddOption("I'm checking on Lolla Cotgrove's kegs.", "TheOrder")
	Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, Delivery , 1)
	
	Dialog.AddOption("I think I'll move back.  It sounds like I really don't want to crimp a cog. ")
	Dialog.Start()
end
end

function TheOrder(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, yes! Wonderful things. I am finishing the kegs right now. I've got the Freezorators working, or at least to the point where they don't cover the kegs in ice. Let Lolla know the kegs are on schedule and will be ready soon.")
	Dialog.AddVoiceover("voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang001.mp3",776820733, 1890824744)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("I will let her know. Thank you.", "UpdateDelivery")
	Dialog.Start()
end

function Sorcery1(NPC, Spawn) --For Mage Class Quest
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang002.mp3", "", "no", 2356722587, 1174004626, Spawn)
    AddConversationOption(conversation, "A Freeze-or...what?", "Sorcery2")
	StartConversation(conversation, NPC, Spawn, "Sorcery? I stopped that silliness a long time ago. Though it had a solid foundation, sorcery isn't as effective as clockworks! Take my Freezorator for example.")
end

function Sorcery2(NPC, Spawn)--For Mage Class Quest
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang003.mp3", "", "", 260712735, 3045244120, Spawn)
	AddConversationOption(conversation, "Interesting use of elemental magic!  Thank you for the lesson")
	StartConversation(conversation, NPC, Spawn, "A Freezor-ator! Rather than using ice spells to keep something cold, my device works all day. Yes yes, I know it's not as good as a sub-arctic ice storm spell... or as effective as lobbing shards of ice at hungry gnolls... or even freezing the skin off of a... Oh, well it's just better! Alright?! Is there anything else?")
end

    function UpdateDelivery(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
    end