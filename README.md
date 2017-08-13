![Barb the Bear](extension/icon/icon128.png)

## Introduction

**BarbBlock** is a content blocking list with standalone browser extensions for Chrome and Firefox. It blacklists sites which have used DMCA takedowns to force removal from other content blocking lists. Such takedowns are categorically invalid, but they can be effective at intimidating small open-source projects into compliance.

BarbBlock was created in response to a troubling instance where a company [used the DMCA takedown process](https://github.com/easylist/easylist/commit/a4d380ad1a3b33a0fab679a1a8c5a791321622b3) to force a domain blacklist to remove its domain. In reaction to this, some people added the domain to their personal blacklists, even those who weren't blocking it before the takedown. This phenomenon is called the [Streisand Effect](https://en.wikipedia.org/wiki/Streisand_effect), and it (indirectly) gives BarbBlock its name. In essence, this extension exists to automate the Streisand effect.

The initial release of BarbBlock blocks the domain in question, `functionalclam.com`. If DMCA takedowns continue to be misused for blacklist removals, the extension will be updated to cover other domains as well. Updates are automatic through the Chrome App Store.

**As the maintainer of this extension, I pledge to dispute any takedown that comes to this repository.** This is not my first DMCA-takedown rodeo 😉. I also pledge to only add domains belonging to companies which have attempted to remove themselves from other blacklists through legal threats, including (but not limited to) "Cease and Desist" letters and DMCA takedowns.

## Goals

I intend to accomplish a few things with this project.

1. By calling the bluff of DMCA takedown notices, I hope to show that the takedown filers know their takedowns are meritless and would not stand up in court.
2. If the extension gains significant traction, it will provide a disincentive for companies to issue takedowns in the first place. As a Chrome extension, the number of users is more quantitatively verifiable than a bunch of users independently adding domains to their blacklist.

## Installation

### Chrome

Install BarbBlock from the [Chrome App Store](https://chrome.google.com/webstore/detail/barbblock/nfgbdnfloghjocgmnclgpjnhhghmjpma).

### Firefox

Install BarbBlock from the [Mozilla add-ons site](https://addons.mozilla.org/en-us/firefox/addon/barbblock/).

### As a blacklist for another blocker

Add `http://bblck.me/BarbBlock.txt` as a blacklist.

## Adding to the Blacklist

Create an [issue](https://github.com/paulgb/BarbBlock/issues) with the domains and the label `blacklist`. In the issue description, add a link to a DMCA takedown notice if available, or else a notice from your service provider that they have received a takedown request.
