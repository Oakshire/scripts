--[[
	Script Name	: SpawnScripts/DarkBargainers/SasitSoroth.lua
	Script Purpose	: Sasit Soroth
	Script Author	: jakejp
	Script Date	: 2018.12.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Tradeskill level.", "TradeskillLevel")
	AddConversationOption(conversation, "Tradeskill class.", "TradeskillClass")
	StartConversation(conversation, NPC, Spawn, "What do you want to change")
end

function TradeskillLevel(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "10", "SetTSLevel10")
	AddConversationOption(conversation, "20", "SetTSLevel20")
	AddConversationOption(conversation, "30", "SetTSLevel30")
	AddConversationOption(conversation, "40", "SetTSLevel40")
	AddConversationOption(conversation, "50", "SetTSLevel50")
	AddConversationOption(conversation, "60", "SetTSLevel60")
	AddConversationOption(conversation, "70", "SetTSLevel70")
	AddConversationOption(conversation, "80", "SetTSLevel80")
	AddConversationOption(conversation, "90", "SetTSLevel90")
	AddConversationOption(conversation, "100", "SetTSLevel100")
	AddConversationOption(conversation, "Nevermind")
	StartConversation(conversation, NPC, Spawn, "What tradeskill level do you want to be?")
end 

function TradeskillClass(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Artisan", "SetArtisan")
	AddConversationOption(conversation, "Craftsman", "SetCraftsman")
	AddConversationOption(conversation, "Provisioner", "SetProvisioner")
	AddConversationOption(conversation, "Woodworker", "SetWoodworker")
	AddConversationOption(conversation, "Carpenter", "SetCarpenter")
	AddConversationOption(conversation, "Outfitter", "SetOutfitter")
	AddConversationOption(conversation, "Armorer", "SetArmorer")
	AddConversationOption(conversation, "Weaponsmith", "SetWeaponsmith")
	AddConversationOption(conversation, "Tailor", "SetTailor")
	AddConversationOption(conversation, "Scholar", "SetScholar")
	AddConversationOption(conversation, "Jeweler", "SetJeweler")
	AddConversationOption(conversation, "Sage", "SetSage")
	AddConversationOption(conversation, "Alchemist", "SetAlchemist")
	AddConversationOption(conversation, "Nevermind")
	StartConversation(conversation, NPC, Spawn, "What class do you want to be?")
end

function SetArtisan(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 1)
end

function SetCraftsman(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 2)
end

function SetProvisioner(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 3)
end

function SetWoodworker(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 4)
end

function SetCarpenter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 5)
end

function SetOutfitter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 6)
end

function SetArmorer(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 7)
end

function SetWeaponsmith(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 8)
end

function SetTailor(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 9)
end

function SetScholar(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 10)
end

function SetJeweler(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 11)
end

function SetSage(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 12)
end

function SetAlchemist(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillClass(Spawn, 13)
end

function SetTSLevel10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 10)
end 

function SetTSLevel20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 20)
end 

function SetTSLevel30(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 30)
end 

function SetTSLevel40(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 40)
end 

function SetTSLevel50(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 50)
end 

function SetTSLevel60(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 60)
end 

function SetTSLevel70(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 70)
end 

function SetTSLevel80(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 80)
end 

function SetTSLevel90(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 90)
end 

function SetTSLevel100(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Your wish is my command.")
	SetTradeskillLevel(Spawn, 100)
end 

function MaxForesting(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	AddConversationOption(conversation, "Thanks")
	StartConversation(conversation, NPC, Spawn, "Done.")
end 

function MaxGathering(NPC, Spawn)
	local skill = GetSkill(Spawn, "Gathering")
    if skill ~= nil then
        SetSkillMaxValue(skill, 300)
        SetSkillValue(skill, 300)
    end
end 

function MaxFishing(NPC, Spawn)
	local skill = GetSkill(Spawn, "Fishing")
    if skill ~= nil then
        SetSkillValue(skill, 300)
    end
end

function MaxMining(NPC, Spawn)
	local skill = GetSkill(Spawn, "Mining")
    if skill ~= nil then
        SetSkillValue(skill, 300)
    end
end 

function MaxTrapping(NPC, Spawn)
	local skill = GetSkill(Spawn, "Trapping")
    if skill ~= nil then
        SetSkillValue(skill, 300)
    end
end 

function MaxForesting(NPC, Spawn)
	local skill = GetSkill(Spawn, "Foresting")
    if skill ~= nil then
        SetSkillValue(skill, 300)
    end
end 