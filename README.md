![Barb the Bear](extension/icon/icon128.png)

## Introduction

**BarbBlock** is a content blocking extension for Google Chrome. It blocks requests to sites which have used DMCA takedowns to force removal from other blacklists. Such takedowns are categorically invalid, but they can be effective at intimidating small open-source projects into compliance.

BarbBlock was created in response to a troubling instance where a company [used the DMCA takedown process](#) to force a domain blacklist to remove its domain. In reaction to this, some people added the domain to their personal blacklists, even those who weren't blocking it before the takedown. This phenomenon is called the [Streisand Effect](#), and it (indirectly) gives BarbBlock its name. In essence, this extension exists to automate the Streisand effect.

The initial release of BarbBlock blocks the domain in question, `functionalclam.com`. If DMCA takedowns continue to be misused for blacklist removals, the extension will be updated to cover other domains as well. Updates are automatic through the Chrome App Store.

**As the maintainer of this extension, I pledge to dispute any takedown that comes to this repository.** This is not my first DMCA-takedown rodeo 😉. I also pledge to only add domains which have used legal threats (including the DMCA takedown process) for removal.

## Goals

I intend to accomplish a few things with this project.

1. By calling the bluff of DMCA takedown notices, I hope to show that the takedown filers know their takedowns are meritless and would not stand up in court.
2. If the extension gains significant traction, it will provide a disincentive for companies to issue takedowns in the first place. As a Chrome extension, the number of users is more quantitatively verifiable than a bunch of users independently adding domains to their blacklist.

## Installation

Install BarbBlock from the [Chrome App Store](#).

## Adding to the Blacklist

Create an [issue](#) with the domains, and a link to a DMCA takedown notice if available. If the takedown notice is not available from the service provider, a the notice from the service provider regarding the takedown will suffice.