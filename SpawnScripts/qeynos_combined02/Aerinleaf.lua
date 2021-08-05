--[[
    Script Name    : SpawnScripts/qeynos_combined02/Aerinleaf.lua
    Script Author  : Rylec
    Script Date    : 2021.08.02 03:08:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "hailed")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

    local choice = MakeRandomInt(1,3)
        if choice == 1 then
            PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_hail_1ed07c5.mp3", "I can only offer you what my contacts have been able to locate. These are the best goods that the citizens have to offer.", "sigh", 3045938288, 2279107443, Spawn)
        elseif choice == 2 then
            PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_hail_8d817f98.mp3", "Here is what the city has to offer, my friend. If you have any questions at all about the stock, please don't hesitate to ask.", "agree", 1804906732, 3683797889, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_hail_5362df75.mp3", "Don't worry, friend, if it's not on our lists then the goods do not exist.", "no", 2182517673, 1430349366, Spawn)
        end    
end

function respawn(NPC)
	spawn(NPC)
end