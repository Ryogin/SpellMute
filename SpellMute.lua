-- SpellMute 1.0 - World of Warcraft Vanilla 1.12.1
-- Keeps UI_INFO_MESSAGE (yellow quest progress) while muting UI_ERROR_MESSAGE
-- such as cooldown, mana, range, and invalid-target spell errors.

local frame = CreateFrame("Frame", "SpellMuteEventFrame", UIParent)
frame:RegisterEvent("PLAYER_LOGIN")

local function ApplySpellMute()
    -- Do not hide UIErrorsFrame: quest progress uses this same native frame.
    UIErrorsFrame:Show()
    UIErrorsFrame:Clear()
    UIErrorsFrame:UnregisterEvent("UI_ERROR_MESSAGE")
    UIErrorsFrame:RegisterEvent("UI_INFO_MESSAGE")
end

frame:SetScript("OnEvent", function()
    if event == "PLAYER_LOGIN" then ApplySpellMute() end
end)
