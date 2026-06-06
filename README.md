# RedtuzkUI Classic - Community Port

An ElvUI profile/layout skin for **World of Warcraft Classic Era / Anniversary Edition**.

Originally created by **Redtuzk** ([original GitLab repo](https://gitlab.com/RedtuzkUI/ElvUI_Redtuzk)). The original author stopped maintaining the project. This is a community port updated to work with current Classic Era (Interface 11508) and ElvUI v15+.

## Screenshots

*Coming soon - contributions welcome!*

## Requirements

- **ElvUI** (required, hard dependency)
- **Shadow & Light (ElvUI_SLE)** (optional, enhanced features)
- **AddOnSkins** (optional, addon styling)
- **Details! Damage Meter** (optional, profile included)
- **Plater Nameplates** (optional, profile included)
- **BigWigs** or **DBM** (optional, profiles included)

## Installation

1. Download the [latest release](../../releases) or clone this repo
2. Copy the `ElvUI_RedtuzkClassic` folder into your WoW AddOns directory:
   ```
   World of Warcraft/_classic_era_/Interface/AddOns/ElvUI_RedtuzkClassic/
   ```
3. Launch WoW Classic and the installer wizard will appear automatically
4. Follow the steps: create/select a profile, pick DPS/Tank layout, configure options
5. Click **Finished** to apply and reload

## What was ported

The original Classic branch (Interface 11306, last updated August 2021) required several fixes to work with current ElvUI:

- **WoW API**: Added `C_AddOns` compatibility shims for addon management functions
- **ElvUI API**: Updated deprecated calls (`ElvUI[1].data` to `E.data`, `ToggleOptionsUI` to `ToggleOptions`)
- **Config key renames**: `raid` to `raid1`, `raid40` to `raid3`, `buttonsize` to `buttonSize`, `plateSize` to `clickSize`, and others
- **Missing table initializations**: Added guards for 14+ config paths that no longer exist in ElvUI v15 defaults
- **Dead code cleanup**: Removed references to removed ElvUI features (GPSArrow, consolidatedBuffs, combobar)
- **Bug fixes**: Fixed undefined function reference in Ping datatext, BigWigs profile name typo

## Features

- Two layout options: DPS/Tank and Healer (healer currently disabled by author)
- Action bar presets: 5x2, 6x2, 8x2 configurations
- Party frame styles: Standard and M+
- Target frame aura options: Debuffs only, Buffs only, or Both
- Custom datatexts: FPS and Ping displays with color-coded status and addon memory tracking
- Durability datatext with per-slot breakdown
- Profiles for Details, Plater, BigWigs, and DBM
- Custom fonts: Century Gothic Bold, Gilroy Bold, Rubik Medium

## Credits

- **Redtuzk** - Original author and designer
- **Aldarana** - Co-maintainer of the original project
- **Toxicom (Toxi)** - Fixed the Retail version for The War Within (MR !37)
- **Community** - Classic Era port and ongoing maintenance

## Contributing

Found a bug or want to improve something? PRs are welcome. If you encounter Lua errors, include the full error message and stack trace.

## License

This project follows the same open distribution model as the original RedtuzkUI. All credit for the design and original code belongs to Redtuzk.
