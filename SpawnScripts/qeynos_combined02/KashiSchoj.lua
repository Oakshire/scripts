--[[
    Script Name    : SpawnScripts/qeynos_combined02/KashiSchoj.lua
    Script Author  : Rylec
    Script Date    : 2021.08.29 10:08:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    playerClass = GetClass(Spawn)
    
    local voice = MakeRandomInt(1,3)
    local choice = MakeRandomInt(1,9)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1035.mp3", "", "", 0, 0, Spawn)
    
    if playerClass == 42 then
        conversation = CreateConversation()

        PlayAnimation(NPC, 11682)
        AddConversationOption(conversation, "What advice do you have for a fellow beastlord?", "conv_01")
        AddConversationOption(conversation, "It certainly is.  Good bye.")
        StartConversation(conversation, NPC, Spawn, "Welcome, fellow beastlord!  It is such a pleasure to meet another animalist within this city.") 
    else
        if choice == 1 then
            PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_e4bce3ad.mp3", "Psst ... I'm cutting you in on the deal of a lifetime.", "agree", 1668699586, 882754848, Spawn)
        elseif choice == 2 then
            PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_670060d5.mp3", "Calm down, friend. Just because this looks like your stolen backpack doesn't mean it is.", "boggle", 2037125351, 2488592551, Spawn)
        elseif choice == 3 then
            PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_589bbb80.mp3", "Satisfaction is guaranteed, with all items fully refundable...if you can find me again.", "thumbsup", 1416046605, 1980489196, Spawn)
        elseif choice == 4 then
            PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_8c371df0.mp3", "Don't let these deals slip through your fingers.", "point", 3644572506, 1178738876, Spawn)
        elseif choice == 5 then
            PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_f2a55e76.mp3", "With these values it's like you're the one committing highway robbery!", "smile", 1546268499, 867906889, Spawn)
        elseif choice == 6 then
            PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_1e754634.mp3", "Of course we deliver! I'll just need an address, key, and the times when you won't be home.", "scheme", 931400742, 1667556613, Spawn)
        elseif choice == 7 then
            PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_48e9f7.mp3", "This merchandise is so hot it's still warm to the touch.", "wince", 3236908451, 3402344846, Spawn)
        elseif choice == 8 then
            PlayFlavor(NPC, "voiceover/english/optional5/kerran_eco_neutral_2/ft/service/merchant/kerran_merchant_service_neutral_2_hail_gf_29327bd1.mp3", "I have to dump this stuff and move out tonight. Staying one step ahead of my, uh, happy customers.", "lookaway", 975208121, 4129019150, Spawn)
        else
            Say(NPC, "Well, well, what have we here?")
        end
    end
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "That's useful to know!", "conv_02")
    StartConversation(conversation, NPC, Spawn, "If you find items that add to your agility or stamina, then take them!  Agility affects both your ability to inflict damage and avoid taking damage from others.  Your stamina affects your health.  This is crucial.")
end

function conv_02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Spiritual Stance or Feral Stance?  Got it.", "conv_03")
    StartConversation(conversation, NPC, Spawn, "We have multiple stances.  While in our Feral Stance we can inflict devastating damage with assistance from our warder.  Our offense is substantially reduced while in Spiritual Stance, but we can assist our group in many other ways, with heals or energy restoration, for example.")
end

function conv_03(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Ah, this is good to know!", "conv_04")
    StartConversation(conversation, NPC, Spawn, "Keep in mind that some of our attacks are positional, meaning you need to be behind or beside an opponent for that attack to work.  Also, some attacks require stealth.  Most of these abilities are learned from our warders.  Speaking of which, we learn skills by working with our warders and they become more powerful the more we bond with them.")
end

function conv_04(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you for the advice.")
    StartConversation(conversation, NPC, Spawn, "Focus on improving your own skills for your opponent is sure to be defeated in the face of your growing prowess.")
end

function respawn(NPC)
	spawn(NPC)
end