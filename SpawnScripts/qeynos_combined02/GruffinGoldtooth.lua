--[[
    Script Name    : SpawnScripts/qeynos_combined02/GruffinGoldtooth.lua
    Script Author  : Rylec
    Script Date    : 2021.07.29 08:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
   	AddTimer(NPC, 3000, "Animations")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/gruffin_goldtooth/qey_village03/gruffingoldtooth001.mp3", "", "hello", 997482113, 2338709603, Spawn)

    conversation = CreateConversation()

    AddConversationOption(conversation, "I'll leave you to your work.")
    StartConversation(conversation, NPC, Spawn, [[Hey there, young 'in.  Don't mind ol' Gruffin.  I'm just inspecting these here mineral veins.  This bedrock is going to be especially useful for building new homes for refugees and citizens alike.
]])
end

function Animations(NPC)
        local choice = MakeRandomInt(1,5)

        if choice == 1 then
                PlayAnimation(NPC, 11976)
        elseif choice == 2 then
                PlayAnimation(NPC, 12030)
        elseif choice == 3 then
                PlayAnimation(NPC, 12329)
        elseif choice == 4 then
                PlayAnimation(NPC, 12978)
        else 
                PlayAnimation(NPC, 13056)
        end

        local time = math.random (15000,20000)         
        AddTimer(NPC, time, "Animations")
end

function respawn(NPC)
	spawn(NPC)
end