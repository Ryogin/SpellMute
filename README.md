# SpellMute

SpellMute hides red spell error messages such as cooldown, mana, range, and invalid-target errors while preserving the native yellow quest progress messages.

## Installation

Copy the `SpellMute` folder into your World of Warcraft `Interface/AddOns` directory, then enable it from the AddOns list at character selection.

Do not use macros that call `UIErrorsFrame:Hide()`, since they also hide quest progress messages.

## Compatibility

World of Warcraft Vanilla 1.12.1.
