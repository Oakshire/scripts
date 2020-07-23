--[[
    Script Name    : SpawnScripts/Freeport/Agamennus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 08:07:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "", "Yes, hail to you as well.  Let's get down to business shall we?", "tapfoot", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_ae2c80ff.mp3", "Looking for anything in particular today?  Well, let's just see what we have for sale in the city then, shall we?", "scheme", 1535757143, 2792554406, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_dc2ee3d4.mp3", "Well, I can see what sort of goods we have available now.  You do have the proper scrollwork for all of this merchandise, correct?", "glare", 2913572299, 447386063, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/broker_algernon/qey_harbor/034_con_merchant_algernon_human_1_hail_d540b6d6.mp3", "All right here's all the goods listed in the city.  If you find anything you want, let me know.", "hello", 2901627157, 508942655, Spawn)
    else
    PlayFlavor(NPC, "", "Alright, all right.  I'll see what we have on the market now.", "nod", 1689589577, 4560189, Spawn)
    end
end

function respawn(NPC)

end

