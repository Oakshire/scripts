Dialog = { }

-- defines for the requirement types
REQ_RACE							= 1
REQ_CLASS							= 2
REQ_LEVEL							= 3
REQ_LEVEL_GREATER_OR_EQUAL			= 4
REQ_LEVEL_LESS_OR_EQUAL				= 5
REQ_QUEST_ELIGIBLE					= 6
REQ_QUEST_ON_STEP					= 7
REQ_QUEST_BEFORE_STEP				= 8
REQ_QUEST_PAST_STEP					= 9
REQ_QUEST_HAS_QUEST					= 10
REQ_QUEST_DOESNT_HAVE_QUEST			= 11
REQ_QUEST_NOT_ON_STEP				= 12
REQ_QUEST_HAS_COMPLETED_QUEST		= 13
REQ_QUEST_NOT_HAS_COMPLETED_QUEST	= 14
REQ_TEMP_VAR_NOT_SET				= 15
REQ_TEMP_VAR_SET					= 16
REQ_LUA_HISTORY_SET					= 17
REQ_LUA_HISTORY_NOT_SET				= 18
REQ_LOCATION_ID						= 19


-- Dialog variables
Dialog.NPC = nil
Dialog.Player = nil
Dialog.Dialog = {}

-- private functions go at the top

-- Checks the requirement table and returns false if the player failed a check or true if they pass ALL checks
local function CheckRequirements(reqs)
	local ret = true
	
	-- if no requirements then return true
	if reqs ~= nil then
		-- loop through the requirements and check to see if the player fails them, if so set the return value 
		-- to false and break the loop as we don't need to check any of the other requirements
		for k, v in pairs(reqs) do
			if v.Type == REQ_RACE  and GetRace(Dialog.Player) ~= v.Value1 then
				ret = false
				break
			elseif v.Type == REQ_CLASS and GetClass(Dialog.Player) ~= v.Value1 then
				ret = false
				break
			elseif v.Type == REQ_LEVEL and GetLevel(Dialog.Player) ~= v.Value1 then
				ret = false
				break
			elseif v.Type == REQ_LEVEL_GREATER_OR_EQUAL and GetLevel(Dialog.Player) < v.Value1 then
				ret = false
				break
			elseif v.Type == REQ_LEVEL_LESS_OR_EQUAL and GetLevel(Dialog.Player) > v.Value1 then
				ret = false
				break
			elseif v.Type == REQ_QUEST_ELIGIBLE and not CanReceiveQuest(Dialog.Player, v.Value1) then
				ret = false
				break
			elseif v.Type == REQ_QUEST_ON_STEP and GetQuestStep(Dialog.Player, v.Value1) ~= v.Value2 then
				ret = false
				break
			elseif v.Type == REQ_QUEST_BEFORE_STEP and GetQuestStep(Dialog.Player, v.Value1) >= v.Value2 then
				ret = false
				break
			elseif v.Type == REQ_QUEST_PAST_STEP and GetQuestStep(Dialog.Player, v.Value1) <= v.Value2 then
				ret = false
				break
			elseif v.Type == REQ_QUEST_HAS_QUEST and not HasQuest(Dialog.Player, v.Value1) then
				ret = false
				break
			elseif v.Type == REQ_QUEST_DOESNT_HAVE_QUEST and HasQuest(Dialog.Player, v.Value1) then
				ret = false
				break
			elseif v.Type == REQ_QUEST_NOT_ON_STEP and GetQuestStep(Dialog.Player, v.Value1) == v.Value2 then
				ret = false
				break
			elseif v.Type == REQ_QUEST_HAS_COMPLETED_QUEST and not HasCompletedQuest(Dialog.Player, v.Value1) then
				ret = false
				break
			elseif v.Type == REQ_QUEST_NOT_HAS_COMPLETED_QUEST and HasCompletedQuest(Dialog.Player, v.Value1) then
				ret = false
				break
			elseif v.Type == REQ_TEMP_VAR_NOT_SET and GetTempVariable(Dialog.Player, v.Value1) == v.Value2 then
				ret = false
				break
			elseif v.Type == REQ_TEMP_VAR_SET and GetTempVariable(Dialog.Player, v.Value1) ~= v.Value2 then
				ret = false
				break
			elseif v.Type == REQ_LUA_HISTORY_SET then
				local value1, value2 = GetPlayerHistory(Dialog.Player, v.Value1)
				if v.Value2 ~= value1 then
					ret = false
					break
				elseif v.Value3 ~= nil and v.Value3 ~= value2 then
					ret = false
					break
				end
			elseif v.Type == REQ_LUA_HISTORY_NOT_SET then
				local value1, value2 = GetPlayerHistory(Dialog.Player, v.Value1)
				if v.Value2 == value1 then
					ret = false
					break
				elseif v.Value3 ~= nil and v.Value3 == value2 then
					ret = false
					break
				end
			elseif v.Type == REQ_LOCATION_ID and GetSpawnLocationID(Dialog.NPC) ~= v.Value1 then
				ret = false
				break
			end
		end
	end
	
	return ret
end

-- Helper function to check requirements on options and actually use the option
local function PrintOptions(dlg, con)
	-- loop through the options and check their requirements, if they pass add the option
	for k, v in pairs(dlg.Options) do
		if CheckRequirements(v.Requirements) == true then
			AddConversationOption(con, v.option, v.callback)
		end
	end
end

-- Actual member functions are below, these are what you call in the other scripts

-- Set up the spawn pointers to use
function Dialog.New(NPC, Player)
	Dialog.NPC = NPC
	Dialog.Player = Player
end

-- Test function, left it in for now as it may be useful but it is just a Say()
function Dialog.Test(Msg)
	if Dialog.NPC ~= nil then
		Say(Dialog.NPC, Msg)
	end
end

-- Add a dialog
function Dialog.AddDialog(text)
	local dlg = {}
	dlg.Text = text
	dlg.Options = {}
	dlg.Requirements = nil
	dlg.VOFile = nil
	dlg.VOKey1 = nil
	dlg.VOKey2 = nil
	dlg.Emote = nil
	table.insert(Dialog.Dialog, dlg)
end

-- Adds requirements to the last added dialog
function Dialog.AddRequirement(req_type, value1, value2, value3)
	local dlg = Dialog.Dialog[#Dialog.Dialog]
	if dlg.Requirements == nil then
		dlg.Requirements = {}
	end
	local req = {}
	req.Type = req_type
	req.Value1 = value1
	req.Value2 = value2
	req.Value3 = value3
	table.insert(dlg.Requirements, req)
end

-- Adds a voiceover to the last added dialog
function Dialog.AddVoiceover(file, key1, key2)
	local dlg = Dialog.Dialog[#Dialog.Dialog]
	dlg.VOFile = file
	dlg.VOKey1 = key1
	dlg.VOKey2 = key2
end

-- Adds an emote to the last added dialog
function Dialog.AddEmote(emote)
	local dlg = Dialog.Dialog[#Dialog.Dialog]
	dlg.Emote = emote
end

-- Adds options to the last added dialog
function Dialog.AddOption(opt, cb)
	local dlg = Dialog.Dialog[#Dialog.Dialog]
	local option = {}
	option.option = opt
	option.callback = cb
	option.Requirements = nil
	table.insert(dlg.Options, option)
end

-- Adds requirements to the last added option
function Dialog.AddOptionRequirement(req_type, value1, value2, value3)
	local dlg = Dialog.Dialog[#Dialog.Dialog]
	local option = dlg.Options[#dlg.Options]
	if option.Requirements == nil then
		option.Requirements = {}
	end
	local req = {}
	req.Type = req_type
	req.Value1 = value1
	req.Value2 = value2
	req.Value3 = value3
	table.insert(option.Requirements, req)
end

-- Actually sends the dialog to the player
function Dialog.Start()
	-- if NPC or Player are nil then return out so we don't cause a null pointer error on the server
	if Dialog.NPC == nil or Dialog.Player == nil then
		-- would be great to print a lua error here
		return
	end
	
	-- create the conversation
	local con = CreateConversation()
	
	-- bool to see if we found a dialog to send
	local found = false
	
	-- loop through all the dialogs
	for key, dlg in pairs(Dialog.Dialog) do
		
		-- Check the dialog requirements if there are any and set the found bool
		if dlg.Requirements ~= nil then
			found = CheckRequirements(dlg.Requirements)
		else
			-- no requirements for this dialog so lets use it
			found = true
		end
		
		-- if we found a dialog to use lets set up the options for it and send it
		if found == true then
			PrintOptions(dlg, con)
			if dlg.Emote ~= nil then
				if dlg.VOFile ~= nil then
					PlayFlavor(Dialog.NPC, dlg.VOFile, "", dlg.Emote, dlg.VOKey1, dlg.VOKey2, Dialog.Player)
				else
					PlayFlavor(Dialog.NPC, "", "", dlg.Emote, 0, 0, Dialog.Player)
				end
				StartConversation(con, Dialog.NPC, Dialog.Player, dlg.Text)
			else
				StartConversation(con, Dialog.NPC, Dialog.Player, dlg.Text, dlg.VOFile, dlg.VOKey1, dlg.VOKey2)
			end
			
			-- we sent a dialog so get out of the loop
			break;
		end
	end
	
	-- clear the list to avoid duplicates
	Dialog.Dialog = {}
end

return Dialog